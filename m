Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5341B5B32
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 14:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8356E529;
	Thu, 23 Apr 2020 12:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 365BC6E4F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 12:17:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20995486-1500050 
 for multiple; Thu, 23 Apr 2020 13:16:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Apr 2020 13:16:52 +0100
Message-Id: <20200423121652.28655-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423101523.30015-1-chris@chris-wilson.co.uk>
References: <20200423101523.30015-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Verify context isolation
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

No unprivileged context should ever be allowed to modify logical state
that is visible to another; there should be no backchannels available or
control leakage for malicious actors.

This test tries to write to a set of random registers using
non-privileged instructions (ala userspace). It should only be allowed
to write into its context state, and all writes should not be visible to
a second context. To verify this, we store the value of the register
before writing to it in context A (as this should be the default value
inherited from the golden context state) and do a read back from context
B of the same register. The reads from both contexts should be identical,
the default value, except for a few free running counters (either global
or local).

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_context.c | 438 ++++++++++++++++++
 1 file changed, 438 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index f4f933240b39..e7020a8f7c1f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1865,6 +1865,443 @@ static int igt_vm_isolation(void *arg)
 	return err;
 }
 
+static struct i915_vma *create_vma(struct i915_address_space *vm, size_t sz)
+{
+	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma;
+
+	obj = i915_gem_object_create_internal(vm->i915, sz);
+	if (IS_ERR(obj))
+		return ERR_CAST(obj);
+
+	vma = i915_vma_instance(obj, vm, NULL);
+	if (IS_ERR(vma))
+		i915_gem_object_put(obj);
+
+	return vma;
+}
+
+struct iso_details {
+	unsigned long count;
+};
+
+enum {
+	ISO_REG = 0,
+	ISO_POISON,
+	ISO_BEFORE,
+	ISO_AFTER,
+	__ISO__
+};
+
+static int iso_write(struct i915_gem_context *ctx,
+		     struct intel_engine_cs *engine,
+		     struct drm_i915_gem_object *obj,
+		     const struct iso_details *iso,
+		     u32 *ctl)
+{
+	struct i915_vma *batch, *vma;
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+	int i;
+
+	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	batch = create_vma(ce->vm, PAGE_ALIGN(16 * iso->count + 4));
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto err_ce;
+	}
+
+	vma = i915_vma_instance(obj, ce->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_batch;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER);
+	if (err)
+		goto err_batch;
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err)
+		goto err_unpin_batch;
+
+	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err_vma;
+	}
+
+	for (i = 0; i < iso->count; i++) {
+		*cs++ = MI_LOAD_REGISTER_IMM(1);
+		*cs++ = ctl[i * __ISO__ + ISO_REG];
+		*cs++ = ctl[i * __ISO__ + ISO_POISON];
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_vma;
+	}
+
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, true);
+	if (err == 0)
+		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err)
+		goto err_rq;
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (err == 0)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err)
+		goto err_rq;
+
+	err = engine->emit_bb_start(rq, batch->node.start, batch->node.size, 0);
+
+err_rq:
+	i915_request_add(rq);
+err_vma:
+	i915_vma_unpin(vma);
+err_unpin_batch:
+	i915_vma_unpin(batch);
+err_batch:
+	i915_vma_put(batch);
+err_ce:
+	intel_context_put(ce);
+	return err;
+}
+
+static int iso_read(struct i915_gem_context *ctx,
+		    struct intel_engine_cs *engine,
+		    struct drm_i915_gem_object *obj,
+		    const struct iso_details *iso,
+		    u32 *ctl,
+		    int idx)
+{
+	struct i915_vma *batch, *vma;
+	struct intel_context *ce;
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+	int i;
+
+	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	batch = create_vma(ce->vm, PAGE_ALIGN(16 * iso->count + 4));
+	if (IS_ERR(batch)) {
+		err = PTR_ERR(batch);
+		goto err_ce;
+	}
+
+	vma = i915_vma_instance(obj, ce->vm, NULL);
+	if (IS_ERR(vma)) {
+		err = PTR_ERR(vma);
+		goto err_batch;
+	}
+
+	err = i915_vma_pin(batch, 0, 0, PIN_USER);
+	if (err)
+		goto err_batch;
+
+	err = i915_vma_pin(vma, 0, 0, PIN_USER);
+	if (err)
+		goto err_unpin_batch;
+
+	cs = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	if (IS_ERR(cs)) {
+		err = PTR_ERR(cs);
+		goto err_vma;
+	}
+
+	for (i = 0; i < iso->count; i++) {
+		u64 addr = vma->node.start + (i * __ISO__ + idx) * sizeof(u32);
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+		*cs++ = ctl[i * __ISO__ + ISO_REG];
+		*cs++ = lower_32_bits(addr);
+		*cs++ = upper_32_bits(addr);
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+
+	rq = intel_context_create_request(ce);
+	if (IS_ERR(rq)) {
+		err = PTR_ERR(rq);
+		goto err_vma;
+	}
+
+	i915_vma_lock(vma);
+	err = i915_request_await_object(rq, vma->obj, true);
+	if (err == 0)
+		err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
+	i915_vma_unlock(vma);
+	if (err)
+		goto err_rq;
+
+	i915_vma_lock(batch);
+	err = i915_request_await_object(rq, batch->obj, false);
+	if (err == 0)
+		err = i915_vma_move_to_active(batch, rq, 0);
+	i915_vma_unlock(batch);
+	if (err)
+		goto err_rq;
+
+	err = engine->emit_bb_start(rq, batch->node.start, batch->node.size, 0);
+
+err_rq:
+	i915_request_add(rq);
+err_vma:
+	i915_vma_unpin(vma);
+err_unpin_batch:
+	i915_vma_unpin(batch);
+err_batch:
+	i915_vma_put(batch);
+err_ce:
+	intel_context_put(ce);
+	return err;
+}
+
+static bool is_timestamp(struct drm_i915_private *i915, u32 x)
+{
+	struct intel_engine_cs *engine;
+
+	for_each_uabi_engine(engine, i915) {
+		if (x == engine->mmio_base + 0x358)
+			return true;
+
+		if (x == engine->mmio_base + 0x35c)
+			return true;
+
+		if (x == engine->mmio_base + 0x3a8)
+			return true;
+	}
+
+	return false;
+}
+
+static bool is_whitelist(struct drm_i915_private *i915, u32 x)
+{
+	struct intel_engine_cs *engine;
+
+	for_each_uabi_engine(engine, i915) {
+		const struct i915_wa_list *w = &engine->whitelist;
+		int i;
+
+		for (i = 0; i < w->count; i++) {
+			if (x == i915_mmio_reg_offset(w->list[i].reg))
+				return true;
+		}
+	}
+
+	return false;
+}
+
+static u32 random_reg(struct drm_i915_private *i915,
+		      struct rnd_state *prng)
+{
+	u32 x;
+
+	/*
+	 * Pick any u32 aligned value that is not known to a free running
+	 * counter (e.g. a timestamp).
+	 */
+	do {
+		x = prandom_u32_state(prng) % 10000 * sizeof(u32);
+		if (!is_timestamp(i915, x) && !is_whitelist(i915, x))
+			return x;
+	} while (1);
+}
+
+static void hexdump(const void *buf, size_t len)
+{
+	const size_t rowsize = 8 * sizeof(u32);
+	const void *prev = NULL;
+	bool skip = false;
+	size_t pos;
+
+	for (pos = 0; pos < len; pos += rowsize) {
+		char line[128];
+
+		if (prev && !memcmp(prev, buf + pos, rowsize)) {
+			if (!skip) {
+				pr_info("*\n");
+				skip = true;
+			}
+			continue;
+		}
+
+		WARN_ON_ONCE(hex_dump_to_buffer(buf + pos, len - pos,
+						rowsize, sizeof(u32),
+						line, sizeof(line),
+						false) >= sizeof(line));
+		pr_info("[%04zx] %s\n", pos, line);
+
+		prev = buf + pos;
+		skip = false;
+	}
+}
+
+static bool skip_isolation(const struct intel_engine_cs *engine)
+{
+	if (engine->class == COPY_ENGINE_CLASS && INTEL_GEN(engine->i915) == 9)
+		return true;
+
+	if (engine->class == RENDER_CLASS && INTEL_GEN(engine->i915) < 12)
+		return true;
+
+	return false;
+}
+
+static int igt_reg_isolation(void *arg)
+{
+	const struct iso_details iso = { .count = 1024 };
+	struct drm_i915_private *i915 = arg;
+	struct i915_gem_context *ctx_a, *ctx_b;
+	struct drm_i915_gem_object *obj;
+	struct intel_engine_cs *engine;
+	struct igt_live_test t;
+	I915_RND_STATE(prng);
+	struct file *file;
+	unsigned long sz;
+	u32 *ctl;
+	int err;
+	int i;
+
+	if (INTEL_GEN(i915) < 8) /* for LRM/SRM */
+		return 0;
+
+	/*
+	 * No state that we can write to from our context should be
+	 * observable by another.
+	 */
+
+	file = mock_file(i915);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	err = igt_live_test_begin(&t, i915, __func__, "");
+	if (err)
+		goto out_file;
+
+	ctx_a = live_context(i915, file);
+	if (IS_ERR(ctx_a)) {
+		err = PTR_ERR(ctx_a);
+		goto out_file;
+	}
+
+	ctx_b = live_context(i915, file);
+	if (IS_ERR(ctx_b)) {
+		err = PTR_ERR(ctx_b);
+		goto out_file;
+	}
+
+	sz = PAGE_ALIGN(__ISO__ * iso.count * sizeof(u32));
+	obj = i915_gem_object_create_internal(i915, sz);
+	if (IS_ERR(obj)) {
+		err = PTR_ERR(obj);
+		goto out_file;
+	}
+
+	ctl = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(ctl))  {
+		err = PTR_ERR(ctl);
+		goto out_obj;
+	}
+
+	for (i = 0; i < iso.count; i++) {
+		ctl[i * __ISO__ + ISO_REG] = random_reg(i915, &prng);
+		ctl[i * __ISO__ + ISO_POISON] = prandom_u32_state(&prng);
+	}
+
+	for_each_uabi_engine(engine, i915) {
+		if (!IS_ENABLED(CONFIG_DRM_I915_SELFTEST_BROKEN) &&
+		    skip_isolation(engine))
+			continue; /* Just don't even ask */
+
+		for (i = 0; i < iso.count; i++) {
+			ctl[i * __ISO__ + ISO_BEFORE] = 0xdeadbeef;
+			ctl[i * __ISO__ + ISO_AFTER] = 0x00c0ffee;
+		}
+		i915_gem_object_flush_map(obj);
+
+		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_BEFORE);
+		if (err)
+			break;
+
+		err = iso_read(ctx_a, engine, obj, &iso, ctl, ISO_BEFORE);
+		if (err)
+			break;
+
+		/* Twice to record after the first pristine context save */
+		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_BEFORE);
+		if (err)
+			break;
+
+		err = iso_write(ctx_a, engine, obj, &iso, ctl);
+		if (err)
+			break;
+
+		err = iso_read(ctx_b, engine, obj, &iso, ctl, ISO_AFTER);
+		if (err)
+			break;
+
+		err = i915_gem_object_wait(obj,
+					   I915_WAIT_ALL |
+					   I915_WAIT_INTERRUPTIBLE,
+					   HZ / 2);
+		if (err)
+			break;
+
+		for (i = 0; i < iso.count; i++) {
+			const u32 *result = &ctl[__ISO__ * i];
+
+			if (result[ISO_BEFORE] == result[ISO_AFTER])
+				continue;
+
+			pr_err("%s: poison 0x%x with %08x, in:%08x, out:%08x\n",
+			       engine->name,
+			       result[ISO_REG],
+			       result[ISO_POISON],
+			       result[ISO_BEFORE],
+			       result[ISO_AFTER]);
+
+			/* If we read back the poison in its entirety, whoops */
+			if (result[ISO_AFTER] == result[ISO_POISON])
+				err = -EINVAL;
+		}
+		if (err) {
+			hexdump(ctl, __ISO__ * iso.count * sizeof(u32));
+			break;
+		}
+	}
+
+	i915_gem_object_unpin_map(obj);
+	if (igt_live_test_end(&t))
+		err = -EIO;
+
+out_obj:
+	i915_gem_object_put(obj);
+out_file:
+	fput(file);
+	return err;
+}
+
 static bool skip_unused_engines(struct intel_context *ce, void *data)
 {
 	return !ce->state;
@@ -2000,6 +2437,7 @@ int i915_gem_context_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_ctx_sseu),
 		SUBTEST(igt_shared_ctx_exec),
 		SUBTEST(igt_vm_isolation),
+		SUBTEST(igt_reg_isolation),
 	};
 
 	if (intel_gt_is_wedged(&i915->gt))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
