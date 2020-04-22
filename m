Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9625A1B498F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D72A96EA21;
	Wed, 22 Apr 2020 16:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BD66EA2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 16:06:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20986700-1500050 
 for multiple; Wed, 22 Apr 2020 17:06:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 17:06:14 +0100
Message-Id: <20200422160614.7126-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
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

No unprivileged context should ever be allowed to modify state that is
visible to another; there should be no backchannels available or control
leakage for malicious actors.

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
 .../drm/i915/gem/selftests/i915_gem_context.c | 392 ++++++++++++++++++
 1 file changed, 392 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index f4f933240b39..fa89dd4505ae 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1865,6 +1865,397 @@ static int igt_vm_isolation(void *arg)
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
+static int iso_write(struct i915_gem_context *ctx,
+		     struct intel_engine_cs *engine,
+		     struct drm_i915_gem_object *obj,
+		     u32 *ctl)
+{
+	struct i915_vma *batch, *vma;
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+	int i;
+
+	batch = create_vma(ctx->vm, 64 << 10);
+	if (IS_ERR(batch))
+		return PTR_ERR(batch);
+
+	vma = i915_vma_instance(obj, ctx->vm, NULL);
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
+	for (i = 0; i < 1024; i++) {
+		*cs++ = MI_LOAD_REGISTER_IMM(1);
+		*cs++ = ctl[4 * i + 0];
+		*cs++ = ctl[4 * i + 1];
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+
+	rq = igt_request_alloc(ctx, engine);
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
+	return err;
+}
+
+static int iso_read(struct i915_gem_context *ctx,
+		    struct intel_engine_cs *engine,
+		    struct drm_i915_gem_object *obj,
+		    u32 *ctl,
+		    int idx)
+{
+	struct i915_vma *batch, *vma;
+	struct i915_request *rq;
+	u32 *cs;
+	int err;
+	int i;
+
+	batch = create_vma(ctx->vm, 64 << 10);
+	if (IS_ERR(batch))
+		return PTR_ERR(batch);
+
+	vma = i915_vma_instance(obj, ctx->vm, NULL);
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
+	for (i = 0; i < 1024; i++) {
+		u64 addr = vma->node.start + (4 * i + idx) * sizeof(u32);
+
+		*cs++ = MI_STORE_REGISTER_MEM_GEN8;
+		*cs++ = ctl[4 * i + 0];
+		*cs++ = lower_32_bits(addr);
+		*cs++ = upper_32_bits(addr);
+	}
+	*cs++ = MI_BATCH_BUFFER_END;
+
+	i915_gem_object_flush_map(batch->obj);
+	i915_gem_object_unpin_map(batch->obj);
+
+	rq = igt_request_alloc(ctx, engine);
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
+static int igt_reg_isolation(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct i915_gem_context *ctx_a, *ctx_b;
+	struct drm_i915_gem_object *obj;
+	struct intel_engine_cs *engine;
+	struct igt_live_test t;
+	I915_RND_STATE(prng);
+	struct file *file;
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
+	obj = i915_gem_object_create_internal(i915, 16 * 1024);
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
+	for (i = 0; i < 1024; i++) {
+		ctl[4 * i + 0] = random_reg(i915, &prng);
+		ctl[4 * i + 1] = prandom_u32_state(&prng); /* poison */
+	}
+
+	for_each_uabi_engine(engine, i915) {
+		if (!engine->default_state)
+			continue;
+
+		if (intel_engine_requires_cmd_parser(engine))
+			continue;
+
+		for (i = 0; i < 1024; i++) {
+			ctl[4 * i + 2] = 0xdeadbeef; /* before */
+			ctl[4 * i + 3] = 0x00c0ffee; /* after */
+		}
+		i915_gem_object_flush_map(obj);
+
+		err = iso_read(ctx_b, engine, obj, ctl, 2);
+		if (err)
+			break;
+
+		err = iso_read(ctx_a, engine, obj, ctl, 2);
+		if (err)
+			break;
+
+		/* Twice to record after the first pristine context save */
+		err = iso_read(ctx_b, engine, obj, ctl, 2);
+		if (err)
+			break;
+
+		err = iso_write(ctx_a, engine, obj, ctl);
+		if (err)
+			break;
+
+		err = iso_read(ctx_b, engine, obj, ctl, 3);
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
+		for (i = 0; i < 1024; i++) {
+			if (ctl[4 * i + 2] == ctl[4 * i + 3])
+				continue;
+
+			pr_err("%s: poison 0x%x with %08x, in:%08x, out:%08x\n",
+			       engine->name,
+			       ctl[4 * i + 0],
+			       ctl[4 * i + 1],
+			       ctl[4 * i + 2],
+			       ctl[4 * i + 3]);
+
+			/* If we read back the poison in its entirety, whoops */
+			if (ctl[4 * i + 3] == ctl[4 * i + 1])
+				err = -EINVAL;
+		}
+		if (err) {
+			hexdump(ctl, 16 * 1024);
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
@@ -2000,6 +2391,7 @@ int i915_gem_context_live_selftests(struct drm_i915_private *i915)
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
