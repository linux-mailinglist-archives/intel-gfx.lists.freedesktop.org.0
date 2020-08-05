Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BE123CA79
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC73C6E588;
	Wed,  5 Aug 2020 12:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F2089CBA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039491-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:26 +0100
Message-Id: <20200805122231.23313-33-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/37] drm/i915: Specialise GGTT binding
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

The Global GTT mmapings do not require any backing storage for the page
directories and so do not need extensive support for preallocations, or
for handling multiple bindings en masse. The Global GTT bindings also
need to take into account an eviction strategy for pinned vma, that we
want to explicitly avoid for user bindings. It is easier to specialise
the i915_ggtt_pin() to keep alive the pages/address as they are used by
HW in its private GTT, while we deconstruct the i915_vma_pin() and
rebuild.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   7 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   7 +-
 .../gpu/drm/i915/gt/intel_engine_heartbeat.h  |   4 +-
 drivers/gpu/drm/i915/gt/selftest_context.c    |   2 +-
 .../drm/i915/gt/selftest_engine_heartbeat.c   |   7 +-
 drivers/gpu/drm/i915/i915_active.c            |   2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 180 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_vma.h               |   1 +
 .../gpu/drm/i915/selftests/i915_gem_evict.c   | 151 ---------------
 9 files changed, 180 insertions(+), 181 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index fae75830494d..3aadb3c80794 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -390,8 +390,11 @@ int gen6_ppgtt_pin(struct i915_ppgtt *base)
 	 * size. We allocate at the top of the GTT to avoid fragmentation.
 	 */
 	err = 0;
-	if (!atomic_read(&ppgtt->pin_count))
-		err = i915_ggtt_pin(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+	if (!atomic_read(&ppgtt->pin_count)) {
+		err = i915_ggtt_pin_locked(ppgtt->vma, GEN6_PD_ALIGN, PIN_HIGH);
+		if (err == 0)
+			err = i915_vma_wait_for_bind(ppgtt->vma);
+	}
 	if (!err)
 		atomic_inc(&ppgtt->pin_count);
 	mutex_unlock(&ppgtt->pin_mutex);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index 377cbfdb3355..382b0ced18e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -255,7 +255,7 @@ int intel_engine_pulse(struct intel_engine_cs *engine)
 	return err;
 }
 
-int intel_engine_flush_barriers(struct intel_engine_cs *engine)
+int intel_engine_flush_barriers(struct intel_engine_cs *engine, gfp_t gfp)
 {
 	struct i915_sched_attr attr = {
 		.priority = I915_USER_PRIORITY(I915_PRIORITY_MIN),
@@ -270,12 +270,13 @@ int intel_engine_flush_barriers(struct intel_engine_cs *engine)
 	if (!intel_engine_pm_get_if_awake(engine))
 		return 0;
 
-	if (mutex_lock_interruptible(&ce->timeline->mutex)) {
+	if (mutex_lock_interruptible_nested(&ce->timeline->mutex,
+					    !gfpflags_allow_blocking(gfp))) {
 		err = -EINTR;
 		goto out_rpm;
 	}
 
-	rq = heartbeat_create(ce, GFP_KERNEL);
+	rq = heartbeat_create(ce, gfp);
 	if (IS_ERR(rq)) {
 		err = PTR_ERR(rq);
 		goto out_unlock;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.h b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.h
index a7b8c0f9e005..996e12e7ccf8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.h
@@ -7,6 +7,8 @@
 #ifndef INTEL_ENGINE_HEARTBEAT_H
 #define INTEL_ENGINE_HEARTBEAT_H
 
+#include <linux/gfp.h>
+
 struct intel_engine_cs;
 
 void intel_engine_init_heartbeat(struct intel_engine_cs *engine);
@@ -18,6 +20,6 @@ void intel_engine_park_heartbeat(struct intel_engine_cs *engine);
 void intel_engine_unpark_heartbeat(struct intel_engine_cs *engine);
 
 int intel_engine_pulse(struct intel_engine_cs *engine);
-int intel_engine_flush_barriers(struct intel_engine_cs *engine);
+int intel_engine_flush_barriers(struct intel_engine_cs *engine, gfp_t gfp);
 
 #endif /* INTEL_ENGINE_HEARTBEAT_H */
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index 1f4020e906a8..e97e522f947b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -261,7 +261,7 @@ static int __live_active_context(struct intel_engine_cs *engine)
 	}
 
 	/* Now make sure our idle-barriers are flushed */
-	err = intel_engine_flush_barriers(engine);
+	err = intel_engine_flush_barriers(engine, GFP_KERNEL);
 	if (err)
 		goto err;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index e73854dd2fe0..d22a7956c9a5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -146,6 +146,11 @@ static int __live_idle_pulse(struct intel_engine_cs *engine,
 	return err;
 }
 
+static int flush_barriers(struct intel_engine_cs *engine)
+{
+	return intel_engine_flush_barriers(engine, GFP_KERNEL);
+}
+
 static int live_idle_flush(void *arg)
 {
 	struct intel_gt *gt = arg;
@@ -157,7 +162,7 @@ static int live_idle_flush(void *arg)
 
 	for_each_engine(engine, gt, id) {
 		st_engine_heartbeat_disable(engine);
-		err = __live_idle_pulse(engine, intel_engine_flush_barriers);
+		err = __live_idle_pulse(engine, flush_barriers);
 		st_engine_heartbeat_enable(engine);
 		if (err)
 			break;
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 6a3bb10e3bb2..3b8693047894 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -609,7 +609,7 @@ static int flush_barrier(struct active_node *it)
 	if (!is_barrier(&it->base))
 		return 0;
 
-	return intel_engine_flush_barriers(engine);
+	return intel_engine_flush_barriers(engine, GFP_KERNEL);
 }
 
 static int flush_lazy_signals(struct i915_active *ref)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 320f6f8ec042..eb3d158acba5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -926,42 +926,180 @@ int i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
 	return err;
 }
 
-static void flush_idle_contexts(struct intel_gt *gt)
+static int unpin_idle_contexts(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	int err;
+
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce = engine->kernel_context;
+		struct intel_timeline *tl = ce->timeline;
+		struct i915_request *rq;
+
+		if (!atomic_read(&tl->active_count))
+			continue;
 
-	for_each_engine(engine, gt, id)
-		intel_engine_flush_barriers(engine);
+		mutex_lock(&tl->mutex);
+		list_for_each_entry(rq, &tl->requests, link)  {
+			if (i915_request_completed(rq))
+				continue;
+
+			i915_request_get(rq);
+			break;
+		}
+		mutex_unlock(&tl->mutex);
+
+		if (&rq->link != &tl->requests) {
+			err = i915_request_wait(rq,
+						I915_WAIT_INTERRUPTIBLE,
+						MAX_SCHEDULE_TIMEOUT);
+			i915_request_put(rq);
+			if (err < 0)
+				return err;
+		}
+	}
+
+	intel_gt_retire_requests(gt);
+
+	err = -ENOSPC;
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce = engine->kernel_context;
+		struct intel_timeline *tl = ce->timeline;
+
+		intel_engine_flush_barriers(engine, GFP_NOWAIT | __GFP_NOWARN);
+		if (atomic_read(&tl->active_count))
+			err = 0;
+	}
 
-	intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
+	return err;
+}
+
+int i915_ggtt_pin_locked(struct i915_vma *vma, u32 align, unsigned int flags)
+{
+	struct i915_vma_work *work = NULL;
+	unsigned int bound;
+	int err;
+
+	GEM_BUG_ON(vma->vm->allocate_va_range);
+	GEM_BUG_ON(i915_vma_is_closed(vma));
+
+	/* First try and grab the pin without rebinding the vma */
+	if (i915_vma_pin_inplace(vma, I915_VMA_GLOBAL_BIND))
+		return 0;
+
+	work = i915_vma_work();
+	if (!work)
+		return -ENOMEM;
+	work->vm = i915_vm_get(vma->vm);
+
+	err = mutex_lock_interruptible(&vma->vm->mutex);
+	if (err)
+		goto err_fence;
+
+	/* No more allocations allowed now we hold vm->mutex */
+
+	bound = atomic_read(&vma->flags);
+	if (unlikely(bound & I915_VMA_ERROR)) {
+		err = -ENOMEM;
+		goto err_unlock;
+	}
+
+	if (unlikely(!((bound + 1) & I915_VMA_PIN_MASK))) {
+		err = -EAGAIN; /* pins are meant to be fairly temporary */
+		goto err_unlock;
+	}
+
+	if (unlikely(bound & I915_VMA_GLOBAL_BIND)) {
+		__i915_vma_pin(vma);
+		goto err_unlock;
+	}
+
+	err = i915_active_acquire(&vma->active);
+	if (err)
+		goto err_unlock;
+
+	if (!(bound & I915_VMA_BIND_MASK)) {
+		err = __wait_for_unbind(vma, flags);
+		if (err)
+			goto err_active;
+
+		do {
+			err = i915_vma_insert(vma, 0, align,
+					      I915_VMA_GLOBAL_BIND |
+					      PIN_NONBLOCK |
+					      flags);
+			if (err != -ENOSPC)
+				break;
+
+			err = unpin_idle_contexts(vma->vm->gt);
+		} while (err == 0);
+		if (err == -ENOSPC) {
+			err = intel_gt_wait_for_idle(vma->vm->gt,
+						     MAX_SCHEDULE_TIMEOUT);
+			if (err == 0)
+				err = i915_vma_insert(vma, 0, align,
+						      I915_VMA_GLOBAL_BIND |
+						      flags);
+		}
+		if (err)
+			goto err_active;
+
+		__i915_vma_set_map_and_fenceable(vma);
+	}
+
+	err = i915_vma_bind(vma,
+			    vma->obj ? vma->obj->cache_level : 0,
+			    I915_VMA_GLOBAL_BIND,
+			    work);
+	if (err)
+		goto err_remove;
+	GEM_BUG_ON(!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND));
+
+	list_move_tail(&vma->vm_link, &vma->vm->bound_list);
+	GEM_BUG_ON(!i915_vma_is_active(vma));
+
+	__i915_vma_pin(vma);
+
+err_remove:
+	if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK)) {
+		i915_vma_detach(vma);
+		drm_mm_remove_node(&vma->node);
+	}
+err_active:
+	i915_active_release(&vma->active);
+err_unlock:
+	mutex_unlock(&vma->vm->mutex);
+err_fence:
+	dma_fence_work_commit_imm(&work->base);
+	return err;
 }
 
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
 {
-	struct i915_address_space *vm = vma->vm;
 	int err;
 
 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
 
-	do {
-		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
-		if (err != -ENOSPC) {
-			if (!err) {
-				err = i915_vma_wait_for_bind(vma);
-				if (err)
-					i915_vma_unpin(vma);
-			}
+	if (!i915_vma_pin_inplace(vma, I915_VMA_GLOBAL_BIND)) {
+		err = i915_gem_object_lock_interruptible(vma->obj);
+		if (err)
 			return err;
-		}
 
-		/* Unlike i915_vma_pin, we don't take no for an answer! */
-		flush_idle_contexts(vm->gt);
-		if (mutex_lock_interruptible(&vm->mutex) == 0) {
-			i915_gem_evict_vm(vm);
-			mutex_unlock(&vm->mutex);
-		}
-	} while (1);
+		err = __i915_gem_object_get_pages_locked(vma->obj);
+		if (err == 0)
+			err = i915_ggtt_pin_locked(vma, align, flags);
+
+		i915_gem_object_unlock(vma->obj);
+		if (err)
+			return err;
+	}
+
+	err = i915_vma_wait_for_bind(vma);
+	if (err)
+		i915_vma_unpin(vma);
+
+	return err;
 }
 
 static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 4c0882041513..375ab3766650 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -244,6 +244,7 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags);
 int __must_check
 i915_vma_pin(struct i915_vma *vma, u64 size, u64 alignment, u64 flags);
 int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags);
+int i915_ggtt_pin_locked(struct i915_vma *vma, u32 align, unsigned int flags);
 
 static inline int i915_vma_pin_count(const struct i915_vma *vma)
 {
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
index 028baae9631f..48ea7f0ff7b9 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_evict.c
@@ -366,156 +366,6 @@ static int igt_evict_vm(void *arg)
 	return err;
 }
 
-static int igt_evict_contexts(void *arg)
-{
-	const u64 PRETEND_GGTT_SIZE = 16ull << 20;
-	struct intel_gt *gt = arg;
-	struct i915_ggtt *ggtt = gt->ggtt;
-	struct drm_i915_private *i915 = gt->i915;
-	struct intel_engine_cs *engine;
-	enum intel_engine_id id;
-	struct reserved {
-		struct drm_mm_node node;
-		struct reserved *next;
-	} *reserved = NULL;
-	intel_wakeref_t wakeref;
-	struct drm_mm_node hole;
-	unsigned long count;
-	int err;
-
-	/*
-	 * The purpose of this test is to verify that we will trigger an
-	 * eviction in the GGTT when constructing a request that requires
-	 * additional space in the GGTT for pinning the context. This space
-	 * is not directly tied to the request so reclaiming it requires
-	 * extra work.
-	 *
-	 * As such this test is only meaningful for full-ppgtt environments
-	 * where the GTT space of the request is separate from the GGTT
-	 * allocation required to build the request.
-	 */
-	if (!HAS_FULL_PPGTT(i915))
-		return 0;
-
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-
-	/* Reserve a block so that we know we have enough to fit a few rq */
-	memset(&hole, 0, sizeof(hole));
-	mutex_lock(&ggtt->vm.mutex);
-	err = i915_gem_gtt_insert(&ggtt->vm, &hole,
-				  PRETEND_GGTT_SIZE, 0, I915_COLOR_UNEVICTABLE,
-				  0, ggtt->vm.total,
-				  PIN_NOEVICT);
-	if (err)
-		goto out_locked;
-
-	/* Make the GGTT appear small by filling it with unevictable nodes */
-	count = 0;
-	do {
-		struct reserved *r;
-
-		mutex_unlock(&ggtt->vm.mutex);
-		r = kcalloc(1, sizeof(*r), GFP_KERNEL);
-		mutex_lock(&ggtt->vm.mutex);
-		if (!r) {
-			err = -ENOMEM;
-			goto out_locked;
-		}
-
-		if (i915_gem_gtt_insert(&ggtt->vm, &r->node,
-					1ul << 20, 0, I915_COLOR_UNEVICTABLE,
-					0, ggtt->vm.total,
-					PIN_NOEVICT)) {
-			kfree(r);
-			break;
-		}
-
-		r->next = reserved;
-		reserved = r;
-
-		count++;
-	} while (1);
-	drm_mm_remove_node(&hole);
-	mutex_unlock(&ggtt->vm.mutex);
-	pr_info("Filled GGTT with %lu 1MiB nodes\n", count);
-
-	/* Overfill the GGTT with context objects and so try to evict one. */
-	for_each_engine(engine, gt, id) {
-		struct i915_sw_fence fence;
-		struct file *file;
-
-		file = mock_file(i915);
-		if (IS_ERR(file)) {
-			err = PTR_ERR(file);
-			break;
-		}
-
-		count = 0;
-		onstack_fence_init(&fence);
-		do {
-			struct i915_request *rq;
-			struct i915_gem_context *ctx;
-
-			ctx = live_context(i915, file);
-			if (IS_ERR(ctx))
-				break;
-
-			/* We will need some GGTT space for the rq's context */
-			igt_evict_ctl.fail_if_busy = true;
-			rq = igt_request_alloc(ctx, engine);
-			igt_evict_ctl.fail_if_busy = false;
-
-			if (IS_ERR(rq)) {
-				/* When full, fail_if_busy will trigger EBUSY */
-				if (PTR_ERR(rq) != -EBUSY) {
-					pr_err("Unexpected error from request alloc (on %s): %d\n",
-					       engine->name,
-					       (int)PTR_ERR(rq));
-					err = PTR_ERR(rq);
-				}
-				break;
-			}
-
-			/* Keep every request/ctx pinned until we are full */
-			err = i915_sw_fence_await_sw_fence_gfp(&rq->submit,
-							       &fence,
-							       GFP_KERNEL);
-			if (err < 0)
-				break;
-
-			i915_request_add(rq);
-			count++;
-			err = 0;
-		} while(1);
-		onstack_fence_fini(&fence);
-		pr_info("Submitted %lu contexts/requests on %s\n",
-			count, engine->name);
-
-		fput(file);
-		if (err)
-			break;
-	}
-
-	mutex_lock(&ggtt->vm.mutex);
-out_locked:
-	if (igt_flush_test(i915))
-		err = -EIO;
-	while (reserved) {
-		struct reserved *next = reserved->next;
-
-		drm_mm_remove_node(&reserved->node);
-		kfree(reserved);
-
-		reserved = next;
-	}
-	if (drm_mm_node_allocated(&hole))
-		drm_mm_remove_node(&hole);
-	mutex_unlock(&ggtt->vm.mutex);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
-
-	return err;
-}
-
 int i915_gem_evict_mock_selftests(void)
 {
 	static const struct i915_subtest tests[] = {
@@ -543,7 +393,6 @@ int i915_gem_evict_mock_selftests(void)
 int i915_gem_evict_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
-		SUBTEST(igt_evict_contexts),
 	};
 
 	if (intel_gt_is_wedged(&i915->gt))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
