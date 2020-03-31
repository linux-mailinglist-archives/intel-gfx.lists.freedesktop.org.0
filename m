Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3989719A0DD
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 23:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1455D6E898;
	Tue, 31 Mar 2020 21:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6975C6E898
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 21:31:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20757570-1500050 
 for multiple; Tue, 31 Mar 2020 22:31:10 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2020 22:31:03 +0100
Message-Id: <20200331213108.11340-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200331213108.11340-1-chris@chris-wilson.co.uk>
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/11] drm/i915/gem: Prevent switching of active
 GEM context VM
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

A nasty issue was found with the way we serialise the update of the GTT
(GPU virtual address space) on the GEM context and with execution via
execbuf. On update we serialise with ctx->mutex and attempt to rewrite
the GTT addresses stored within the context from inside a request (along
that context), but from execbuf we were cheerfully using whatever
address was stored inside the intel_context. Thus there was a race where
we might be using a stale vm when the user updated the GEM context
concurrently. To prevent that, deny updating an active context and only
allow switching the VM when the context is unpinned (not in use on the
HW).

To illustrate the race, consider the execution flow through execbuf.

1. Lookup all the vma for every execobject in eb->context->vm, the
current GEM context->vm
2. Submit the request along eb->context, presuming it still uses
eb->context->vm

Since the update of the vm inside the GEM context is not synchronised to
execbuf, we can submit a request along eb->context that uses a different
vm to all the vma we constructed. While this may be described as a
userspace race, we have been tricked into using addresses in one VM with
another loaded, albeit both belong to the same user.

Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 216 ++----------------
 .../drm/i915/gem/selftests/i915_gem_context.c | 125 ----------
 drivers/gpu/drm/i915/gt/intel_context.h       |  13 ++
 drivers/gpu/drm/i915/gt/intel_context_param.c |  33 +++
 drivers/gpu/drm/i915/gt/intel_context_param.h |   4 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   2 +-
 .../drm/i915/selftests/i915_mock_selftests.h  |   1 -
 7 files changed, 67 insertions(+), 327 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index a8780ddc07c0..2aef6073001c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -803,22 +803,29 @@ context_apply_all(struct i915_gem_context *ctx,
 
 static int __apply_ppgtt(struct intel_context *ce, void *vm)
 {
-	i915_vm_put(ce->vm);
-	ce->vm = i915_vm_get(vm);
-	return 0;
+	return intel_context_set_vm(ce, vm);
 }
 
-static struct i915_address_space *
+static int
 __set_ppgtt(struct i915_gem_context *ctx, struct i915_address_space *vm)
 {
 	struct i915_address_space *old = i915_gem_context_vm(ctx);
+	int err;
 
 	GEM_BUG_ON(old && i915_vm_is_4lvl(vm) != i915_vm_is_4lvl(old));
 
 	rcu_assign_pointer(ctx->vm, i915_vm_open(vm));
-	context_apply_all(ctx, __apply_ppgtt, vm);
+	err = context_apply_all(ctx, __apply_ppgtt, vm);
+	if (err) {
+		/* Reapplying the old vm should not have to wait... */
+		rcu_assign_pointer(ctx->vm, old);
+		context_apply_all(ctx, __apply_ppgtt, old);
+		old = vm;
+	}
+	if (old)
+		i915_vm_close(old);
 
-	return old;
+	return err;
 }
 
 static void __assign_ppgtt(struct i915_gem_context *ctx,
@@ -827,9 +834,7 @@ static void __assign_ppgtt(struct i915_gem_context *ctx,
 	if (vm == rcu_access_pointer(ctx->vm))
 		return;
 
-	vm = __set_ppgtt(ctx, vm);
-	if (vm)
-		i915_vm_close(vm);
+	__set_ppgtt(ctx, vm);
 }
 
 static void __set_timeline(struct intel_timeline **dst,
@@ -1073,98 +1078,6 @@ int i915_gem_vm_destroy_ioctl(struct drm_device *dev, void *data,
 	return 0;
 }
 
-struct context_barrier_task {
-	struct i915_active base;
-	void (*task)(void *data);
-	void *data;
-};
-
-__i915_active_call
-static void cb_retire(struct i915_active *base)
-{
-	struct context_barrier_task *cb = container_of(base, typeof(*cb), base);
-
-	if (cb->task)
-		cb->task(cb->data);
-
-	i915_active_fini(&cb->base);
-	kfree(cb);
-}
-
-I915_SELFTEST_DECLARE(static intel_engine_mask_t context_barrier_inject_fault);
-static int context_barrier_task(struct i915_gem_context *ctx,
-				intel_engine_mask_t engines,
-				bool (*skip)(struct intel_context *ce, void *data),
-				int (*emit)(struct i915_request *rq, void *data),
-				void (*task)(void *data),
-				void *data)
-{
-	struct context_barrier_task *cb;
-	struct i915_gem_engines_iter it;
-	struct i915_gem_engines *e;
-	struct intel_context *ce;
-	int err = 0;
-
-	GEM_BUG_ON(!task);
-
-	cb = kmalloc(sizeof(*cb), GFP_KERNEL);
-	if (!cb)
-		return -ENOMEM;
-
-	i915_active_init(&cb->base, NULL, cb_retire);
-	err = i915_active_acquire(&cb->base);
-	if (err) {
-		kfree(cb);
-		return err;
-	}
-
-	e = __context_engines_await(ctx);
-	if (!e) {
-		i915_active_release(&cb->base);
-		return -ENOENT;
-	}
-
-	for_each_gem_engine(ce, e, it) {
-		struct i915_request *rq;
-
-		if (I915_SELFTEST_ONLY(context_barrier_inject_fault &
-				       ce->engine->mask)) {
-			err = -ENXIO;
-			break;
-		}
-
-		if (!(ce->engine->mask & engines))
-			continue;
-
-		if (skip && skip(ce, data))
-			continue;
-
-		rq = intel_context_create_request(ce);
-		if (IS_ERR(rq)) {
-			err = PTR_ERR(rq);
-			break;
-		}
-
-		err = 0;
-		if (emit)
-			err = emit(rq, data);
-		if (err == 0)
-			err = i915_active_add_request(&cb->base, rq);
-
-		i915_request_add(rq);
-		if (err)
-			break;
-	}
-	i915_sw_fence_complete(&e->fence);
-
-	cb->task = err ? NULL : task; /* caller needs to unwind instead */
-	cb->data = data;
-
-	i915_active_release(&cb->base);
-
-	return err;
-}
-
 static int get_ppgtt(struct drm_i915_file_private *file_priv,
 		     struct i915_gem_context *ctx,
 		     struct drm_i915_gem_context_param *args)
@@ -1197,93 +1110,11 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
 	return err;
 }
 
-static void set_ppgtt_barrier(void *data)
-{
-	struct i915_address_space *old = data;
-
-	if (INTEL_GEN(old->i915) < 8)
-		gen6_ppgtt_unpin_all(i915_vm_to_ppgtt(old));
-
-	i915_vm_close(old);
-}
-
-static int emit_ppgtt_update(struct i915_request *rq, void *data)
-{
-	struct i915_address_space *vm = rq->context->vm;
-	struct intel_engine_cs *engine = rq->engine;
-	u32 base = engine->mmio_base;
-	u32 *cs;
-	int i;
-
-	if (i915_vm_is_4lvl(vm)) {
-		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
-		const dma_addr_t pd_daddr = px_dma(ppgtt->pd);
-
-		cs = intel_ring_begin(rq, 6);
-		if (IS_ERR(cs))
-			return PTR_ERR(cs);
-
-		*cs++ = MI_LOAD_REGISTER_IMM(2);
-
-		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, 0));
-		*cs++ = upper_32_bits(pd_daddr);
-		*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, 0));
-		*cs++ = lower_32_bits(pd_daddr);
-
-		*cs++ = MI_NOOP;
-		intel_ring_advance(rq, cs);
-	} else if (HAS_LOGICAL_RING_CONTEXTS(engine->i915)) {
-		struct i915_ppgtt *ppgtt = i915_vm_to_ppgtt(vm);
-		int err;
-
-		/* Magic required to prevent forcewake errors! */
-		err = engine->emit_flush(rq, EMIT_INVALIDATE);
-		if (err)
-			return err;
-
-		cs = intel_ring_begin(rq, 4 * GEN8_3LVL_PDPES + 2);
-		if (IS_ERR(cs))
-			return PTR_ERR(cs);
-
-		*cs++ = MI_LOAD_REGISTER_IMM(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
-		for (i = GEN8_3LVL_PDPES; i--; ) {
-			const dma_addr_t pd_daddr = i915_page_dir_dma_addr(ppgtt, i);
-
-			*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_UDW(base, i));
-			*cs++ = upper_32_bits(pd_daddr);
-			*cs++ = i915_mmio_reg_offset(GEN8_RING_PDP_LDW(base, i));
-			*cs++ = lower_32_bits(pd_daddr);
-		}
-		*cs++ = MI_NOOP;
-		intel_ring_advance(rq, cs);
-	}
-
-	return 0;
-}
-
-static bool skip_ppgtt_update(struct intel_context *ce, void *data)
-{
-	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
-		return true;
-
-	if (HAS_LOGICAL_RING_CONTEXTS(ce->engine->i915))
-		return false;
-
-	if (!atomic_read(&ce->pin_count))
-		return true;
-
-	/* ppGTT is not part of the legacy context image */
-	if (gen6_ppgtt_pin(i915_vm_to_ppgtt(ce->vm)))
-		return true;
-
-	return false;
-}
-
 static int set_ppgtt(struct drm_i915_file_private *file_priv,
 		     struct i915_gem_context *ctx,
 		     struct drm_i915_gem_context_param *args)
 {
-	struct i915_address_space *vm, *old;
+	struct i915_address_space *vm;
 	int err;
 
 	if (args->size)
@@ -1318,22 +1149,7 @@ static int set_ppgtt(struct drm_i915_file_private *file_priv,
 	/* Teardown the existing obj:vma cache, it will have to be rebuilt. */
 	lut_close(ctx);
 
-	old = __set_ppgtt(ctx, vm);
-
-	/*
-	 * We need to flush any requests using the current ppgtt before
-	 * we release it as the requests do not hold a reference themselves,
-	 * only indirectly through the context.
-	 */
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   skip_ppgtt_update,
-				   emit_ppgtt_update,
-				   set_ppgtt_barrier,
-				   old);
-	if (err) {
-		i915_vm_close(__set_ppgtt(ctx, old));
-		i915_vm_close(old);
-	}
+	err = __set_ppgtt(ctx, vm);
 
 unlock:
 	mutex_unlock(&ctx->mutex);
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index f4f933240b39..228577a48c79 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1865,131 +1865,6 @@ static int igt_vm_isolation(void *arg)
 	return err;
 }
 
-static bool skip_unused_engines(struct intel_context *ce, void *data)
-{
-	return !ce->state;
-}
-
-static void mock_barrier_task(void *data)
-{
-	unsigned int *counter = data;
-
-	++*counter;
-}
-
-static int mock_context_barrier(void *arg)
-{
-#undef pr_fmt
-#define pr_fmt(x) "context_barrier_task():" # x
-	struct drm_i915_private *i915 = arg;
-	struct i915_gem_context *ctx;
-	struct i915_request *rq;
-	unsigned int counter;
-	int err;
-
-	/*
-	 * The context barrier provides us with a callback after it emits
-	 * a request; useful for retiring old state after loading new.
-	 */
-
-	ctx = mock_context(i915, "mock");
-	if (!ctx)
-		return -ENOMEM;
-
-	counter = 0;
-	err = context_barrier_task(ctx, 0,
-				   NULL, NULL, mock_barrier_task, &counter);
-	if (err) {
-		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
-		goto out;
-	}
-	if (counter == 0) {
-		pr_err("Did not retire immediately with 0 engines\n");
-		err = -EINVAL;
-		goto out;
-	}
-
-	counter = 0;
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   skip_unused_engines,
-				   NULL,
-				   mock_barrier_task,
-				   &counter);
-	if (err) {
-		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
-		goto out;
-	}
-	if (counter == 0) {
-		pr_err("Did not retire immediately for all unused engines\n");
-		err = -EINVAL;
-		goto out;
-	}
-
-	rq = igt_request_alloc(ctx, i915->gt.engine[RCS0]);
-	if (IS_ERR(rq)) {
-		pr_err("Request allocation failed!\n");
-		goto out;
-	}
-	i915_request_add(rq);
-
-	counter = 0;
-	context_barrier_inject_fault = BIT(RCS0);
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   NULL, NULL, mock_barrier_task, &counter);
-	context_barrier_inject_fault = 0;
-	if (err == -ENXIO)
-		err = 0;
-	else
-		pr_err("Did not hit fault injection!\n");
-	if (counter != 0) {
-		pr_err("Invoked callback on error!\n");
-		err = -EIO;
-	}
-	if (err)
-		goto out;
-
-	counter = 0;
-	err = context_barrier_task(ctx, ALL_ENGINES,
-				   skip_unused_engines,
-				   NULL,
-				   mock_barrier_task,
-				   &counter);
-	if (err) {
-		pr_err("Failed at line %d, err=%d\n", __LINE__, err);
-		goto out;
-	}
-	mock_device_flush(i915);
-	if (counter == 0) {
-		pr_err("Did not retire on each active engines\n");
-		err = -EINVAL;
-		goto out;
-	}
-
-out:
-	mock_context_close(ctx);
-	return err;
-#undef pr_fmt
-#define pr_fmt(x) x
-}
-
-int i915_gem_context_mock_selftests(void)
-{
-	static const struct i915_subtest tests[] = {
-		SUBTEST(mock_context_barrier),
-	};
-	struct drm_i915_private *i915;
-	int err;
-
-	i915 = mock_gem_device();
-	if (!i915)
-		return -ENOMEM;
-
-	err = i915_subtests(tests, i915);
-
-	drm_dev_put(&i915->drm);
-	return err;
-}
-
 int i915_gem_context_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 07be021882cc..6f4e6c75fbd5 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -53,6 +53,19 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
 	return mutex_lock_interruptible(&ce->pin_mutex);
 }
 
+/**
+ * intel_context_lock_pinned_killable - Stablises the 'pinned' status
+ * @ce - the context
+ *
+ * See intel_context_lock_pinned() but will only be interrupted by process
+ * termination.
+ */
+static inline int intel_context_lock_pinned_killable(struct intel_context *ce)
+	__acquires(ce->pin_mutex)
+{
+	return mutex_lock_killable(&ce->pin_mutex);
+}
+
 /**
  * intel_context_is_pinned - Reports the 'pinned' status
  * @ce - the context
diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.c b/drivers/gpu/drm/i915/gt/intel_context_param.c
index 65dcd090245d..c6cf5f929322 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_param.c
+++ b/drivers/gpu/drm/i915/gt/intel_context_param.c
@@ -61,3 +61,36 @@ long intel_context_get_ring_size(struct intel_context *ce)
 
 	return sz;
 }
+
+int intel_context_set_vm(struct intel_context *ce,
+			 struct i915_address_space *vm)
+{
+	int err;
+
+	if (vm == READ_ONCE(ce->vm))
+		return 0;
+
+	/* Recovering from a partial update over all engines is hard */
+	if (intel_context_lock_pinned_killable(ce))
+		return -EINTR;
+
+	if (intel_context_is_pinned(ce)) {
+		err = -EBUSY; /* In active use, come back later! */
+		goto unlock;
+	}
+
+	/* Must wait until HW has finished saving the context image */
+	err = __i915_active_wait(&ce->active, TASK_KILLABLE);
+	if (err < 0)
+		goto unlock;
+
+	i915_vm_put(ce->vm);
+	ce->vm = i915_vm_get(vm);
+
+	if (test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
+		ce->ops->reset(ce);
+
+unlock:
+	intel_context_unlock_pinned(ce);
+	return err;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_context_param.h b/drivers/gpu/drm/i915/gt/intel_context_param.h
index f053d8633fe2..d09e59fcb891 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_param.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_param.h
@@ -6,9 +6,13 @@
 #ifndef INTEL_CONTEXT_PARAM_H
 #define INTEL_CONTEXT_PARAM_H
 
+struct i915_address_space;
 struct intel_context;
 
 int intel_context_set_ring_size(struct intel_context *ce, long sz);
 long intel_context_get_ring_size(struct intel_context *ce);
 
+int intel_context_set_vm(struct intel_context *ce,
+			 struct i915_address_space *vm);
+
 #endif /* INTEL_CONTEXT_PARAM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 55bf3cdf3b38..0029d7ecc371 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3174,7 +3174,7 @@ static int execlists_context_alloc(struct intel_context *ce)
 static void execlists_context_reset(struct intel_context *ce)
 {
 	CE_TRACE(ce, "reset\n");
-	GEM_BUG_ON(!intel_context_is_pinned(ce));
+	GEM_BUG_ON(!test_bit(CONTEXT_ALLOC_BIT, &ce->flags));
 
 	intel_ring_reset(ce->ring, ce->ring->emit);
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
index 5b39bab4da1d..1251192fabe8 100644
--- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
@@ -30,6 +30,5 @@ selftest(vma, i915_vma_mock_selftests)
 selftest(evict, i915_gem_evict_mock_selftests)
 selftest(gtt, i915_gem_gtt_mock_selftests)
 selftest(hugepages, i915_gem_huge_page_mock_selftests)
-selftest(contexts, i915_gem_context_mock_selftests)
 selftest(buddy, i915_buddy_mock_selftests)
 selftest(memory_region, intel_memory_region_mock_selftests)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
