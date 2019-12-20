Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F17A1277BF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 10:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AE856EBED;
	Fri, 20 Dec 2019 09:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2224A6EBED
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 09:11:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19642901-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 09:11:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:11:49 +0000
Message-Id: <20191220091150.256501-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220091150.256501-1-chris@chris-wilson.co.uk>
References: <20191220091150.256501-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915: Remove i915->kernel_context
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

Allocate only an internal intel_context for the kernel_context, forgoing
a global GEM context for internal use as we only require a separate
address space (for our own protection).

Now having weaned GT from requiring ce->gem_context, we can stop
referencing it entirely. This also means we no longer have to create random
and unnecessary GEM contexts for internal use.

GEM contexts are now entirely for tracking GEM clients, and intel_context
the execution environment on the GPU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
Acked-by: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  96 +++++------
 drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +-
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   6 +-
 .../drm/i915/gem/selftests/i915_gem_context.c |   5 +-
 .../gpu/drm/i915/gem/selftests/mock_context.c |  11 +-
 drivers/gpu/drm/i915/gt/intel_context.c       |  32 +---
 drivers/gpu/drm/i915/gt/intel_context.h       |   9 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  13 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  21 +--
 drivers/gpu/drm/i915/gt/intel_gt.c            |  25 ++-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  21 +--
 drivers/gpu/drm/i915/gt/intel_lrc.h           |   6 +-
 drivers/gpu/drm/i915/gt/intel_reset.c         |  14 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   2 +-
 drivers/gpu/drm/i915/gt/selftest_context.c    |  57 ++-----
 .../drm/i915/gt/selftest_engine_heartbeat.c   |   3 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 141 ++++++----------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 159 ++++++------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |   6 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |   3 +-
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  72 +++-----
 drivers/gpu/drm/i915/gvt/scheduler.c          |  16 +-
 drivers/gpu/drm/i915/i915_active.c            |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 -
 drivers/gpu/drm/i915/i915_gem.c               |  18 +-
 drivers/gpu/drm/i915/i915_gem_gtt.c           |   8 +-
 drivers/gpu/drm/i915/i915_perf.c              |   3 -
 drivers/gpu/drm/i915/i915_request.c           |   5 +-
 drivers/gpu/drm/i915/selftests/i915_request.c |   6 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   8 +-
 31 files changed, 303 insertions(+), 480 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index bc6349321b2c..9fd55601d67e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -209,6 +209,35 @@ context_get_vm_rcu(struct i915_gem_context *ctx)
 	} while (1);
 }
 
+static void intel_context_set_gem(struct intel_context *ce,
+				  struct i915_gem_context *ctx)
+{
+	GEM_BUG_ON(ce->gem_context);
+	ce->gem_context = ctx;
+
+	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
+		ce->ring = __intel_context_ring_size(SZ_16K);
+
+	if (rcu_access_pointer(ctx->vm)) {
+		struct i915_address_space *vm;
+
+		rcu_read_lock();
+		vm = context_get_vm_rcu(ctx); /* hmm */
+		rcu_read_unlock();
+
+		i915_vm_put(ce->vm);
+		ce->vm = vm;
+	}
+
+	GEM_BUG_ON(ce->timeline);
+	if (ctx->timeline)
+		ce->timeline = intel_timeline_get(ctx->timeline);
+
+	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
+	    intel_engine_has_semaphores(ce->engine))
+		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
+}
+
 static void __free_engines(struct i915_gem_engines *e, unsigned int count)
 {
 	while (count--) {
@@ -251,12 +280,14 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);
 		GEM_BUG_ON(e->engines[engine->legacy_idx]);
 
-		ce = intel_context_create(ctx, engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			__free_engines(e, e->num_engines + 1);
 			return ERR_CAST(ce);
 		}
 
+		intel_context_set_gem(ce, ctx);
+
 		e->engines[engine->legacy_idx] = ce;
 		e->num_engines = max(e->num_engines, engine->legacy_idx);
 	}
@@ -706,37 +737,6 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 	return ctx;
 }
 
-static void
-destroy_kernel_context(struct i915_gem_context **ctxp)
-{
-	struct i915_gem_context *ctx;
-
-	/* Keep the context ref so that we can free it immediately ourselves */
-	ctx = i915_gem_context_get(fetch_and_zero(ctxp));
-	GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));
-
-	context_close(ctx);
-	i915_gem_context_free(ctx);
-}
-
-struct i915_gem_context *
-i915_gem_context_create_kernel(struct drm_i915_private *i915, int prio)
-{
-	struct i915_gem_context *ctx;
-
-	ctx = i915_gem_create_context(i915, 0);
-	if (IS_ERR(ctx))
-		return ctx;
-
-	i915_gem_context_clear_bannable(ctx);
-	i915_gem_context_set_persistence(ctx);
-	ctx->sched.priority = I915_USER_PRIORITY(prio);
-
-	GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));
-
-	return ctx;
-}
-
 static void init_contexts(struct i915_gem_contexts *gc)
 {
 	spin_lock_init(&gc->lock);
@@ -746,32 +746,16 @@ static void init_contexts(struct i915_gem_contexts *gc)
 	init_llist_head(&gc->free_list);
 }
 
-int i915_gem_init_contexts(struct drm_i915_private *i915)
+void i915_gem_init__contexts(struct drm_i915_private *i915)
 {
-	struct i915_gem_context *ctx;
-
-	/* Reassure ourselves we are only called once */
-	GEM_BUG_ON(i915->kernel_context);
-
 	init_contexts(&i915->gem.contexts);
-
-	/* lowest priority; idle task */
-	ctx = i915_gem_context_create_kernel(i915, I915_PRIORITY_MIN);
-	if (IS_ERR(ctx)) {
-		DRM_ERROR("Failed to create default global context\n");
-		return PTR_ERR(ctx);
-	}
-	i915->kernel_context = ctx;
-
 	DRM_DEBUG_DRIVER("%s context support initialized\n",
 			 DRIVER_CAPS(i915)->has_logical_contexts ?
 			 "logical" : "fake");
-	return 0;
 }
 
 void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
 {
-	destroy_kernel_context(&i915->kernel_context);
 	flush_work(&i915->gem.contexts.free_work);
 }
 
@@ -1531,12 +1515,14 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 		}
 	}
 
-	ce = intel_execlists_create_virtual(set->ctx, siblings, n);
+	ce = intel_execlists_create_virtual(siblings, n);
 	if (IS_ERR(ce)) {
 		err = PTR_ERR(ce);
 		goto out_siblings;
 	}
 
+	intel_context_set_gem(ce, set->ctx);
+
 	if (cmpxchg(&set->engines->engines[idx], NULL, ce)) {
 		intel_context_put(ce);
 		err = -EEXIST;
@@ -1706,12 +1692,14 @@ set_engines(struct i915_gem_context *ctx,
 			return -ENOENT;
 		}
 
-		ce = intel_context_create(ctx, engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			__free_engines(set.engines, n);
 			return PTR_ERR(ce);
 		}
 
+		intel_context_set_gem(ce, ctx);
+
 		set.engines->engines[n] = ce;
 	}
 	set.engines->num_engines = num_engines;
@@ -2012,13 +2000,15 @@ static int clone_engines(struct i915_gem_context *dst,
 		 */
 		if (intel_engine_is_virtual(engine))
 			clone->engines[n] =
-				intel_execlists_clone_virtual(dst, engine);
+				intel_execlists_clone_virtual(engine);
 		else
-			clone->engines[n] = intel_context_create(dst, engine);
+			clone->engines[n] = intel_context_create(engine);
 		if (IS_ERR_OR_NULL(clone->engines[n])) {
 			__free_engines(clone, n);
 			goto err_unlock;
 		}
+
+		intel_context_set_gem(clone->engines[n], dst);
 	}
 	clone->num_engines = n;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 69932899803e..c519b9f8d83b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -115,7 +115,7 @@ static inline bool i915_gem_context_is_kernel(struct i915_gem_context *ctx)
 }
 
 /* i915_gem_context.c */
-int __must_check i915_gem_init_contexts(struct drm_i915_private *i915);
+void i915_gem_init__contexts(struct drm_i915_private *i915);
 void i915_gem_driver_release__contexts(struct drm_i915_private *i915);
 
 int i915_gem_context_open(struct drm_i915_private *i915,
@@ -140,9 +140,6 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
 
-struct i915_gem_context *
-i915_gem_context_create_kernel(struct drm_i915_private *i915, int prio);
-
 static inline struct i915_gem_context *
 i915_gem_context_get(struct i915_gem_context *ctx)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index f7f66c62cf0e..e5558af111e2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -779,15 +779,11 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 		return -EFAULT;
 
 	if (args->flags & I915_USERPTR_READ_ONLY) {
-		struct i915_address_space *vm;
-
 		/*
 		 * On almost all of the older hw, we cannot tell the GPU that
 		 * a page is readonly.
 		 */
-		vm = rcu_dereference_protected(dev_priv->kernel_context->vm,
-					       true); /* static vm */
-		if (!vm || !vm->has_read_only)
+		if (!dev_priv->gt.vm->has_read_only)
 			return -ENODEV;
 	}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 780e58fe5c64..7fc46861a54d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -337,7 +337,7 @@ static int live_parallel_switch(void *arg)
 			if (!data[m].ce[0])
 				continue;
 
-			ce = intel_context_create(ctx, data[m].ce[0]->engine);
+			ce = intel_context_create(data[m].ce[0]->engine);
 			if (IS_ERR(ce))
 				goto out;
 
@@ -1264,8 +1264,7 @@ __igt_ctx_sseu(struct drm_i915_private *i915,
 			hweight32(engine->sseu.slice_mask),
 			hweight32(pg_sseu.slice_mask));
 
-		ce = intel_context_create(engine->kernel_context->gem_context,
-					  engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			ret = PTR_ERR(ce);
 			goto out_put;
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 53e89efb09c0..fdf2f120234c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -96,7 +96,16 @@ live_context(struct drm_i915_private *i915, struct file *file)
 struct i915_gem_context *
 kernel_context(struct drm_i915_private *i915)
 {
-	return i915_gem_context_create_kernel(i915, I915_PRIORITY_NORMAL);
+	struct i915_gem_context *ctx;
+
+	ctx = i915_gem_create_context(i915, 0);
+	if (IS_ERR(ctx))
+		return ctx;
+
+	GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));
+	i915_gem_context_clear_bannable(ctx);
+
+	return ctx;
 }
 
 void kernel_context_close(struct i915_gem_context *ctx)
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index e73e976e5ecd..fbaa9df6f436 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -31,8 +31,7 @@ void intel_context_free(struct intel_context *ce)
 }
 
 struct intel_context *
-intel_context_create(struct i915_gem_context *ctx,
-		     struct intel_engine_cs *engine)
+intel_context_create(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 
@@ -40,7 +39,7 @@ intel_context_create(struct i915_gem_context *ctx,
 	if (!ce)
 		return ERR_PTR(-ENOMEM);
 
-	intel_context_init(ce, ctx, engine);
+	intel_context_init(ce, engine);
 	return ce;
 }
 
@@ -71,8 +70,6 @@ int __intel_context_do_pin(struct intel_context *ce)
 		CE_TRACE(ce, "pin ring:{head:%04x, tail:%04x}\n",
 			 ce->ring->head, ce->ring->tail);
 
-		i915_gem_context_get(ce->gem_context); /* for ctx->ppgtt */
-
 		smp_mb__before_atomic(); /* flush pin before it is visible */
 	}
 
@@ -101,7 +98,6 @@ void intel_context_unpin(struct intel_context *ce)
 
 		ce->ops->unpin(ce);
 
-		i915_gem_context_put(ce->gem_context);
 		intel_context_active_release(ce);
 	}
 
@@ -193,7 +189,7 @@ int intel_context_active_acquire(struct intel_context *ce)
 		return err;
 
 	/* Preallocate tracking nodes */
-	if (!i915_gem_context_is_kernel(ce->gem_context)) {
+	if (!intel_context_is_barrier(ce)) {
 		err = i915_active_acquire_preallocate_barrier(&ce->active,
 							      ce->engine);
 		if (err) {
@@ -214,33 +210,19 @@ void intel_context_active_release(struct intel_context *ce)
 
 void
 intel_context_init(struct intel_context *ce,
-		   struct i915_gem_context *ctx,
 		   struct intel_engine_cs *engine)
 {
-	struct i915_address_space *vm;
-
 	GEM_BUG_ON(!engine->cops);
+	GEM_BUG_ON(!engine->gt->vm);
 
 	kref_init(&ce->ref);
 
-	ce->gem_context = ctx;
-	rcu_read_lock();
-	vm = rcu_dereference(ctx->vm);
-	if (vm)
-		ce->vm = i915_vm_get(vm);
-	else
-		ce->vm = i915_vm_get(&engine->gt->ggtt->vm);
-	rcu_read_unlock();
-	if (ctx->timeline)
-		ce->timeline = intel_timeline_get(ctx->timeline);
-	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
-	    intel_engine_has_semaphores(engine))
-		__set_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
-
 	ce->engine = engine;
 	ce->ops = engine->cops;
 	ce->sseu = engine->sseu;
-	ce->ring = __intel_context_ring_size(SZ_16K);
+	ce->ring = __intel_context_ring_size(SZ_4K);
+
+	ce->vm = i915_vm_get(engine->gt->vm);
 
 	INIT_LIST_HEAD(&ce->signal_link);
 	INIT_LIST_HEAD(&ce->signals);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index e7ac7027969f..1d4a1b1357cf 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -25,13 +25,11 @@
 } while (0)
 
 void intel_context_init(struct intel_context *ce,
-			struct i915_gem_context *ctx,
 			struct intel_engine_cs *engine);
 void intel_context_fini(struct intel_context *ce);
 
 struct intel_context *
-intel_context_create(struct i915_gem_context *ctx,
-		     struct intel_engine_cs *engine);
+intel_context_create(struct intel_engine_cs *engine);
 
 void intel_context_free(struct intel_context *ce);
 
@@ -162,6 +160,11 @@ static inline struct intel_ring *__intel_context_ring_size(u64 sz)
 	return u64_to_ptr(struct intel_ring, sz);
 }
 
+static inline bool intel_context_is_barrier(const struct intel_context *ce)
+{
+	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
+}
+
 static inline bool intel_context_use_semaphores(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_USE_SEMAPHORES, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index af0d55b111f5..7dd03ad9826c 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -54,12 +54,13 @@ struct intel_context {
 	struct intel_timeline *timeline;
 
 	unsigned long flags;
-#define CONTEXT_ALLOC_BIT		0
-#define CONTEXT_VALID_BIT		1
-#define CONTEXT_USE_SEMAPHORES		2
-#define CONTEXT_BANNED			3
-#define CONTEXT_FORCE_SINGLE_SUBMISSION	4
-#define CONTEXT_NOPREEMPT		5
+#define CONTEXT_BARRIER_BIT		0
+#define CONTEXT_ALLOC_BIT		1
+#define CONTEXT_VALID_BIT		2
+#define CONTEXT_USE_SEMAPHORES		3
+#define CONTEXT_BANNED			4
+#define CONTEXT_FORCE_SINGLE_SUBMISSION	5
+#define CONTEXT_NOPREEMPT		6
 
 	u32 *lrc_reg_state;
 	u64 lrc_desc;
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index e091b3366eae..80d91fe84597 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -759,11 +759,11 @@ create_kernel_context(struct intel_engine_cs *engine)
 	struct intel_context *ce;
 	int err;
 
-	ce = intel_context_create(engine->i915->kernel_context, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return ce;
 
-	ce->ring = __intel_context_ring_size(SZ_4K);
+	__set_bit(CONTEXT_BARRIER_BIT, &ce->flags);
 
 	err = intel_context_pin(ce);
 	if (err) {
@@ -800,6 +800,12 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
 
 	engine->set_default_submission(engine);
 
+	ret = measure_breadcrumb_dw(engine);
+	if (ret < 0)
+		return ret;
+
+	engine->emit_fini_breadcrumb_dw = ret;
+
 	/*
 	 * We may need to do things with the shrinker which
 	 * require us to immediately switch back to the default
@@ -814,18 +820,7 @@ int intel_engine_init_common(struct intel_engine_cs *engine)
 
 	engine->kernel_context = ce;
 
-	ret = measure_breadcrumb_dw(engine);
-	if (ret < 0)
-		goto err_unpin;
-
-	engine->emit_fini_breadcrumb_dw = ret;
-
 	return 0;
-
-err_unpin:
-	intel_context_unpin(ce);
-	intel_context_put(ce);
-	return ret;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index c4fd8d65b8a3..af4f8c810009 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -74,7 +74,6 @@ int intel_gt_init_hw(struct intel_gt *gt)
 	struct intel_uncore *uncore = gt->uncore;
 	int ret;
 
-	BUG_ON(!i915->kernel_context);
 	ret = intel_gt_terminally_wedged(gt);
 	if (ret)
 		return ret;
@@ -365,6 +364,14 @@ static void intel_gt_fini_scratch(struct intel_gt *gt)
 	i915_vma_unpin_and_release(&gt->scratch, 0);
 }
 
+static struct i915_address_space *kernel_vm(struct intel_gt *gt)
+{
+	if (INTEL_PPGTT(gt->i915) > INTEL_PPGTT_ALIASING)
+		return &i915_ppgtt_create(gt->i915)->vm;
+	else
+		return i915_vm_get(&gt->ggtt->vm);
+}
+
 int intel_gt_init(struct intel_gt *gt)
 {
 	int err;
@@ -375,7 +382,17 @@ int intel_gt_init(struct intel_gt *gt)
 
 	intel_gt_pm_init(gt);
 
+	gt->vm = kernel_vm(gt);
+	if (!gt->vm) {
+		err = -ENOMEM;
+		goto err_scratch;
+	}
+
 	return 0;
+
+err_scratch:
+	intel_gt_fini_scratch(gt);
+	return err;
 }
 
 void intel_gt_driver_remove(struct intel_gt *gt)
@@ -390,6 +407,12 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 
 void intel_gt_driver_release(struct intel_gt *gt)
 {
+	struct i915_address_space *vm;
+
+	vm = fetch_and_zero(&gt->vm);
+	if (vm) /* FIXME being called twice on error paths :( */
+		i915_vm_put(vm);
+
 	intel_gt_pm_fini(gt);
 	intel_gt_fini_scratch(gt);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index d4e14dbd172e..96890dd12b5f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -90,6 +90,13 @@ struct intel_gt {
 	struct intel_engine_cs *engine[I915_NUM_ENGINES];
 	struct intel_engine_cs *engine_class[MAX_ENGINE_CLASS + 1]
 					    [MAX_ENGINE_INSTANCE + 1];
+
+	/*
+	 * Default address space (either GGTT or ppGTT depending on arch).
+	 *
+	 * Reserved for exclusive use by the kernel.
+	 */
+	struct i915_address_space *vm;
 };
 
 enum intel_gt_scratch_field {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index ec93c47c4bdd..60309406e2f3 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -133,12 +133,11 @@
  */
 #include <linux/interrupt.h>
 
-#include "gem/i915_gem_context.h"
-
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
@@ -1326,7 +1325,8 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
 		if (i915_request_completed(rq))
 			goto unlock;
 
-		if (i915_active_is_idle(&ce->active) && ce->gem_context) {
+		if (i915_active_is_idle(&ce->active) &&
+		    !intel_context_is_barrier(ce)) {
 			GEM_TRACE_ERR("Inactive context:%llx in pending[%zd]\n",
 				      ce->timeline->fence_context,
 				      port - execlists->pending);
@@ -4474,8 +4474,7 @@ virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
 }
 
 struct intel_context *
-intel_execlists_create_virtual(struct i915_gem_context *ctx,
-			       struct intel_engine_cs **siblings,
+intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			       unsigned int count)
 {
 	struct virtual_engine *ve;
@@ -4486,13 +4485,13 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 		return ERR_PTR(-EINVAL);
 
 	if (count == 1)
-		return intel_context_create(ctx, siblings[0]);
+		return intel_context_create(siblings[0]);
 
 	ve = kzalloc(struct_size(ve, siblings, count), GFP_KERNEL);
 	if (!ve)
 		return ERR_PTR(-ENOMEM);
 
-	ve->base.i915 = ctx->i915;
+	ve->base.i915 = siblings[0]->i915;
 	ve->base.gt = siblings[0]->gt;
 	ve->base.uncore = siblings[0]->uncore;
 	ve->base.id = -1;
@@ -4534,7 +4533,7 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 		     virtual_submission_tasklet,
 		     (unsigned long)ve);
 
-	intel_context_init(&ve->context, ctx, &ve->base);
+	intel_context_init(&ve->context, &ve->base);
 
 	for (n = 0; n < count; n++) {
 		struct intel_engine_cs *sibling = siblings[n];
@@ -4609,14 +4608,12 @@ intel_execlists_create_virtual(struct i915_gem_context *ctx,
 }
 
 struct intel_context *
-intel_execlists_clone_virtual(struct i915_gem_context *ctx,
-			      struct intel_engine_cs *src)
+intel_execlists_clone_virtual(struct intel_engine_cs *src)
 {
 	struct virtual_engine *se = to_virtual_engine(src);
 	struct intel_context *dst;
 
-	dst = intel_execlists_create_virtual(ctx,
-					     se->siblings,
+	dst = intel_execlists_create_virtual(se->siblings,
 					     se->num_siblings);
 	if (IS_ERR(dst))
 		return dst;
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.h b/drivers/gpu/drm/i915/gt/intel_lrc.h
index 04511d8ebdc1..081521f17c74 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.h
@@ -111,13 +111,11 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 				   unsigned int max);
 
 struct intel_context *
-intel_execlists_create_virtual(struct i915_gem_context *ctx,
-			       struct intel_engine_cs **siblings,
+intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			       unsigned int count);
 
 struct intel_context *
-intel_execlists_clone_virtual(struct i915_gem_context *ctx,
-			      struct intel_engine_cs *src);
+intel_execlists_clone_virtual(struct intel_engine_cs *src);
 
 int intel_virtual_engine_attach_bond(struct intel_engine_cs *engine,
 				     const struct intel_engine_cs *master,
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 3d293be64fc2..95c24176ab64 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -52,9 +52,8 @@ static void engine_skip_context(struct i915_request *rq)
 			i915_request_skip(rq, -EIO);
 }
 
-static void client_mark_guilty(struct i915_request *rq, bool banned)
+static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
 {
-	struct i915_gem_context *ctx = rq->context->gem_context;
 	struct drm_i915_file_private *file_priv = ctx->file_priv;
 	unsigned long prev_hang;
 	unsigned int score;
@@ -81,11 +80,15 @@ static void client_mark_guilty(struct i915_request *rq, bool banned)
 
 static bool mark_guilty(struct i915_request *rq)
 {
-	struct i915_gem_context *ctx = rq->context->gem_context;
+	struct i915_gem_context *ctx;
 	unsigned long prev_hang;
 	bool banned;
 	int i;
 
+	ctx = rq->context->gem_context;
+	if (!ctx)
+		return false;
+
 	if (i915_gem_context_is_closed(ctx)) {
 		intel_context_set_banned(rq->context);
 		return true;
@@ -117,14 +120,15 @@ static bool mark_guilty(struct i915_request *rq)
 		intel_context_set_banned(rq->context);
 	}
 
-	client_mark_guilty(rq, banned);
+	client_mark_guilty(ctx, banned);
 
 	return banned;
 }
 
 static void mark_innocent(struct i915_request *rq)
 {
-	atomic_inc(&rq->context->gem_context->active_count);
+	if (rq->context->gem_context)
+		atomic_inc(&rq->context->gem_context->active_count);
 }
 
 void __i915_request_reset(struct i915_request *rq, bool guilty)
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index a5d30d1468f7..3dc0d0a97a61 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1553,7 +1553,7 @@ static int remap_l3(struct i915_request *rq)
 	struct i915_gem_context *ctx = rq->context->gem_context;
 	int i, err;
 
-	if (!ctx->remap_slice)
+	if (!ctx || !ctx->remap_slice)
 		return 0;
 
 	for (i = 0; i < MAX_L3_SLICES; i++) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
index af354ccdbf40..e874dfaa5316 100644
--- a/drivers/gpu/drm/i915/gt/selftest_context.c
+++ b/drivers/gpu/drm/i915/gt/selftest_context.c
@@ -70,15 +70,14 @@ static int context_sync(struct intel_context *ce)
 	return err;
 }
 
-static int __live_context_size(struct intel_engine_cs *engine,
-			       struct i915_gem_context *fixme)
+static int __live_context_size(struct intel_engine_cs *engine)
 {
 	struct intel_context *ce;
 	struct i915_request *rq;
 	void *vaddr;
 	int err;
 
-	ce = intel_context_create(fixme, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
@@ -146,7 +145,6 @@ static int live_context_size(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *fixme;
 	enum intel_engine_id id;
 	int err = 0;
 
@@ -155,10 +153,6 @@ static int live_context_size(void *arg)
 	 * HW tries to write past the end of one.
 	 */
 
-	fixme = kernel_context(gt->i915);
-	if (IS_ERR(fixme))
-		return PTR_ERR(fixme);
-
 	for_each_engine(engine, gt, id) {
 		struct {
 			struct drm_i915_gem_object *state;
@@ -183,7 +177,7 @@ static int live_context_size(void *arg)
 		/* Overlaps with the execlists redzone */
 		engine->context_size += I915_GTT_PAGE_SIZE;
 
-		err = __live_context_size(engine, fixme);
+		err = __live_context_size(engine);
 
 		engine->context_size -= I915_GTT_PAGE_SIZE;
 
@@ -196,12 +190,10 @@ static int live_context_size(void *arg)
 			break;
 	}
 
-	kernel_context_close(fixme);
 	return err;
 }
 
-static int __live_active_context(struct intel_engine_cs *engine,
-				 struct i915_gem_context *fixme)
+static int __live_active_context(struct intel_engine_cs *engine)
 {
 	unsigned long saved_heartbeat;
 	struct intel_context *ce;
@@ -227,7 +219,7 @@ static int __live_active_context(struct intel_engine_cs *engine,
 		return -EINVAL;
 	}
 
-	ce = intel_context_create(fixme, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
@@ -310,23 +302,11 @@ static int live_active_context(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *fixme;
 	enum intel_engine_id id;
-	struct file *file;
 	int err = 0;
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	fixme = live_context(gt->i915, file);
-	if (IS_ERR(fixme)) {
-		err = PTR_ERR(fixme);
-		goto out_file;
-	}
-
 	for_each_engine(engine, gt, id) {
-		err = __live_active_context(engine, fixme);
+		err = __live_active_context(engine);
 		if (err)
 			break;
 
@@ -335,8 +315,6 @@ static int live_active_context(void *arg)
 			break;
 	}
 
-out_file:
-	fput(file);
 	return err;
 }
 
@@ -368,8 +346,7 @@ static int __remote_sync(struct intel_context *ce, struct intel_context *remote)
 	return err;
 }
 
-static int __live_remote_context(struct intel_engine_cs *engine,
-				 struct i915_gem_context *fixme)
+static int __live_remote_context(struct intel_engine_cs *engine)
 {
 	struct intel_context *local, *remote;
 	unsigned long saved_heartbeat;
@@ -390,11 +367,11 @@ static int __live_remote_context(struct intel_engine_cs *engine,
 		return -EINVAL;
 	}
 
-	remote = intel_context_create(fixme, engine);
+	remote = intel_context_create(engine);
 	if (IS_ERR(remote))
 		return PTR_ERR(remote);
 
-	local = intel_context_create(fixme, engine);
+	local = intel_context_create(engine);
 	if (IS_ERR(local)) {
 		err = PTR_ERR(local);
 		goto err_remote;
@@ -434,23 +411,11 @@ static int live_remote_context(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *fixme;
 	enum intel_engine_id id;
-	struct file *file;
 	int err = 0;
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	fixme = live_context(gt->i915, file);
-	if (IS_ERR(fixme)) {
-		err = PTR_ERR(fixme);
-		goto out_file;
-	}
-
 	for_each_engine(engine, gt, id) {
-		err = __live_remote_context(engine, fixme);
+		err = __live_remote_context(engine);
 		if (err)
 			break;
 
@@ -459,8 +424,6 @@ static int live_remote_context(void *arg)
 			break;
 	}
 
-out_file:
-	fput(file);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
index 5227e79204a5..43d4d589749f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
@@ -200,8 +200,7 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
 	int err;
 	int i;
 
-	ce = intel_context_create(engine->kernel_context->gem_context,
-				  engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index d155c9374453..ff2d8af282a6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -377,36 +377,30 @@ static int igt_reset_nop(void *arg)
 	struct intel_gt *gt = arg;
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *ctx;
 	unsigned int reset_count, count;
 	enum intel_engine_id id;
 	IGT_TIMEOUT(end_time);
-	struct file *file;
 	int err = 0;
 
 	/* Check that we can reset during non-user portions of requests */
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	ctx = live_context(gt->i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out;
-	}
-
-	i915_gem_context_clear_bannable(ctx);
 	reset_count = i915_reset_count(global);
 	count = 0;
 	do {
 		for_each_engine(engine, gt, id) {
+			struct intel_context *ce;
 			int i;
 
+			ce = intel_context_create(engine);
+			if (IS_ERR(ce)) {
+				err = PTR_ERR(ce);
+				break;
+			}
+
 			for (i = 0; i < 16; i++) {
 				struct i915_request *rq;
 
-				rq = igt_request_alloc(ctx, engine);
+				rq = intel_context_create_request(ce);
 				if (IS_ERR(rq)) {
 					err = PTR_ERR(rq);
 					break;
@@ -414,6 +408,8 @@ static int igt_reset_nop(void *arg)
 
 				i915_request_add(rq);
 			}
+
+			intel_context_put(ce);
 		}
 
 		igt_global_reset_lock(gt);
@@ -437,10 +433,7 @@ static int igt_reset_nop(void *arg)
 	} while (time_before(jiffies, end_time));
 	pr_info("%s: %d resets\n", __func__, count);
 
-	err = igt_flush_test(gt->i915);
-out:
-	fput(file);
-	if (intel_gt_is_wedged(gt))
+	if (igt_flush_test(gt->i915))
 		err = -EIO;
 	return err;
 }
@@ -450,31 +443,22 @@ static int igt_reset_nop_engine(void *arg)
 	struct intel_gt *gt = arg;
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *ctx;
 	enum intel_engine_id id;
-	struct file *file;
-	int err = 0;
 
 	/* Check that we can engine-reset during non-user portions */
 
 	if (!intel_has_reset_engine(gt))
 		return 0;
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	ctx = live_context(gt->i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out;
-	}
-
-	i915_gem_context_clear_bannable(ctx);
 	for_each_engine(engine, gt, id) {
-		unsigned int reset_count, reset_engine_count;
-		unsigned int count;
+		unsigned int reset_count, reset_engine_count, count;
+		struct intel_context *ce;
 		IGT_TIMEOUT(end_time);
+		int err;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			return PTR_ERR(ce);
 
 		reset_count = i915_reset_count(global);
 		reset_engine_count = i915_reset_engine_count(global, engine);
@@ -494,7 +478,7 @@ static int igt_reset_nop_engine(void *arg)
 			for (i = 0; i < 16; i++) {
 				struct i915_request *rq;
 
-				rq = igt_request_alloc(ctx, engine);
+				rq = intel_context_create_request(ce);
 				if (IS_ERR(rq)) {
 					err = PTR_ERR(rq);
 					break;
@@ -525,20 +509,14 @@ static int igt_reset_nop_engine(void *arg)
 		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
 
+		intel_context_put(ce);
+		if (igt_flush_test(gt->i915))
+			err = -EIO;
 		if (err)
-			break;
-
-		err = igt_flush_test(gt->i915);
-		if (err)
-			break;
+			return err;
 	}
 
-	err = igt_flush_test(gt->i915);
-out:
-	fput(file);
-	if (intel_gt_is_wedged(gt))
-		err = -EIO;
-	return err;
+	return 0;
 }
 
 static int __igt_reset_engine(struct intel_gt *gt, bool active)
@@ -699,43 +677,43 @@ static int active_engine(void *data)
 	struct active_engine *arg = data;
 	struct intel_engine_cs *engine = arg->engine;
 	struct i915_request *rq[8] = {};
-	struct i915_gem_context *ctx[ARRAY_SIZE(rq)];
-	unsigned long count = 0;
-	struct file *file;
+	struct intel_context *ce[ARRAY_SIZE(rq)];
+	unsigned long count;
 	int err = 0;
 
-	file = mock_file(engine->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	for (count = 0; count < ARRAY_SIZE(ctx); count++) {
-		ctx[count] = live_context(engine->i915, file);
-		if (IS_ERR(ctx[count])) {
-			err = PTR_ERR(ctx[count]);
+	for (count = 0; count < ARRAY_SIZE(ce); count++) {
+		ce[count] = intel_context_create(engine);
+		if (IS_ERR(ce[count])) {
+			err = PTR_ERR(ce[count]);
 			while (--count)
-				i915_gem_context_put(ctx[count]);
-			goto err_file;
+				intel_context_put(ce[count]);
+			return err;
 		}
 	}
 
+	count = 0;
 	while (!kthread_should_stop()) {
 		unsigned int idx = count++ & (ARRAY_SIZE(rq) - 1);
 		struct i915_request *old = rq[idx];
 		struct i915_request *new;
 
-		new = igt_request_alloc(ctx[idx], engine);
+		new = intel_context_create_request(ce[idx]);
 		if (IS_ERR(new)) {
 			err = PTR_ERR(new);
 			break;
 		}
 
-		if (arg->flags & TEST_PRIORITY)
-			ctx[idx]->sched.priority =
-				i915_prandom_u32_max_state(512, &prng);
-
 		rq[idx] = i915_request_get(new);
 		i915_request_add(new);
 
+		if (engine->schedule && arg->flags & TEST_PRIORITY) {
+			struct i915_sched_attr attr = {
+				.priority =
+					i915_prandom_u32_max_state(512, &prng),
+			};
+			engine->schedule(rq[idx], &attr);
+		}
+
 		err = active_request_put(old);
 		if (err)
 			break;
@@ -749,10 +727,10 @@ static int active_engine(void *data)
 		/* Keep the first error */
 		if (!err)
 			err = err__;
+
+		intel_context_put(ce[count]);
 	}
 
-err_file:
-	fput(file);
 	return err;
 }
 
@@ -1300,32 +1278,21 @@ static int igt_reset_evict_ggtt(void *arg)
 static int igt_reset_evict_ppgtt(void *arg)
 {
 	struct intel_gt *gt = arg;
-	struct i915_gem_context *ctx;
-	struct i915_address_space *vm;
-	struct file *file;
+	struct i915_ppgtt *ppgtt;
 	int err;
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
+	/* aliasing == global gtt locking, covered above */
+	if (INTEL_PPGTT(gt->i915) < INTEL_PPGTT_FULL)
+		return 0;
 
-	ctx = live_context(gt->i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out;
-	}
+	ppgtt = i915_ppgtt_create(gt->i915);
+	if (IS_ERR(ppgtt))
+		return PTR_ERR(ppgtt);
 
-	err = 0;
-	vm = i915_gem_context_get_vm_rcu(ctx);
-	if (!i915_is_ggtt(vm)) {
-		/* aliasing == global gtt locking, covered above */
-		err = __igt_reset_evict_vma(gt, vm,
-					    evict_vma, EXEC_OBJECT_WRITE);
-	}
-	i915_vm_put(vm);
+	err = __igt_reset_evict_vma(gt, &ppgtt->vm,
+				    evict_vma, EXEC_OBJECT_WRITE);
+	i915_vm_put(&ppgtt->vm);
 
-out:
-	fput(file);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index 619e34813ade..121bdfcd579a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -53,11 +53,10 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
 static int live_sanitycheck(void *arg)
 {
 	struct intel_gt *gt = arg;
-	struct i915_gem_engines_iter it;
-	struct i915_gem_context *ctx;
-	struct intel_context *ce;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 	struct igt_spinner spin;
-	int err = -ENOMEM;
+	int err = 0;
 
 	if (!HAS_LOGICAL_RING_CONTEXTS(gt->i915))
 		return 0;
@@ -65,17 +64,20 @@ static int live_sanitycheck(void *arg)
 	if (igt_spinner_init(&spin, gt))
 		return -ENOMEM;
 
-	ctx = kernel_context(gt->i915);
-	if (!ctx)
-		goto err_spin;
-
-	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
+	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
 		struct i915_request *rq;
 
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			break;
+		}
+
 		rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
-			goto err_ctx;
+			goto out_ctx;
 		}
 
 		i915_request_add(rq);
@@ -84,21 +86,21 @@ static int live_sanitycheck(void *arg)
 			GEM_TRACE_DUMP();
 			intel_gt_set_wedged(gt);
 			err = -EIO;
-			goto err_ctx;
+			goto out_ctx;
 		}
 
 		igt_spinner_end(&spin);
 		if (igt_flush_test(gt->i915)) {
 			err = -EIO;
-			goto err_ctx;
+			goto out_ctx;
 		}
+
+out_ctx:
+		intel_context_put(ce);
+		if (err)
+			break;
 	}
 
-	err = 0;
-err_ctx:
-	i915_gem_context_unlock_engines(ctx);
-	kernel_context_close(ctx);
-err_spin:
 	igt_spinner_fini(&spin);
 	return err;
 }
@@ -106,7 +108,6 @@ static int live_sanitycheck(void *arg)
 static int live_unlite_restore(struct intel_gt *gt, int prio)
 {
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *ctx;
 	enum intel_engine_id id;
 	struct igt_spinner spin;
 	int err = -ENOMEM;
@@ -119,10 +120,6 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 	if (igt_spinner_init(&spin, gt))
 		return err;
 
-	ctx = kernel_context(gt->i915);
-	if (!ctx)
-		goto err_spin;
-
 	err = 0;
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce[2] = {};
@@ -144,7 +141,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 		for (n = 0; n < ARRAY_SIZE(ce); n++) {
 			struct intel_context *tmp;
 
-			tmp = intel_context_create(ctx, engine);
+			tmp = intel_context_create(engine);
 			if (IS_ERR(tmp)) {
 				err = PTR_ERR(tmp);
 				goto err_ce;
@@ -253,8 +250,6 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
 			break;
 	}
 
-	kernel_context_close(ctx);
-err_spin:
 	igt_spinner_fini(&spin);
 	return err;
 }
@@ -309,17 +304,17 @@ emit_semaphore_chain(struct i915_request *rq, struct i915_vma *vma, int idx)
 static struct i915_request *
 semaphore_queue(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
 {
-	struct i915_gem_context *ctx;
+	struct intel_context *ce;
 	struct i915_request *rq;
 	int err;
 
-	ctx = kernel_context(engine->i915);
-	if (!ctx)
-		return ERR_PTR(-ENOMEM);
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return ERR_CAST(ce);
 
-	rq = igt_request_alloc(ctx, engine);
+	rq = intel_context_create_request(ce);
 	if (IS_ERR(rq))
-		goto out_ctx;
+		goto out_ce;
 
 	err = 0;
 	if (rq->engine->emit_init_breadcrumb)
@@ -332,8 +327,8 @@ semaphore_queue(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
 	if (err)
 		rq = ERR_PTR(err);
 
-out_ctx:
-	kernel_context_close(ctx);
+out_ce:
+	intel_context_put(ce);
 	return rq;
 }
 
@@ -1956,7 +1951,7 @@ static int create_gang(struct intel_engine_cs *engine,
 	u32 *cs;
 	int err;
 
-	ce = intel_context_create(engine->kernel_context->gem_context, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
@@ -2618,27 +2613,17 @@ static int nop_virtual_engine(struct intel_gt *gt,
 {
 	IGT_TIMEOUT(end_time);
 	struct i915_request *request[16] = {};
-	struct i915_gem_context *ctx[16];
 	struct intel_context *ve[16];
 	unsigned long n, prime, nc;
 	struct igt_live_test t;
 	ktime_t times[2] = {};
 	int err;
 
-	GEM_BUG_ON(!nctx || nctx > ARRAY_SIZE(ctx));
+	GEM_BUG_ON(!nctx || nctx > ARRAY_SIZE(ve));
 
 	for (n = 0; n < nctx; n++) {
-		ctx[n] = kernel_context(gt->i915);
-		if (!ctx[n]) {
-			err = -ENOMEM;
-			nctx = n;
-			goto out;
-		}
-
-		ve[n] = intel_execlists_create_virtual(ctx[n],
-						       siblings, nsibling);
+		ve[n] = intel_execlists_create_virtual(siblings, nsibling);
 		if (IS_ERR(ve[n])) {
-			kernel_context_close(ctx[n]);
 			err = PTR_ERR(ve[n]);
 			nctx = n;
 			goto out;
@@ -2647,7 +2632,6 @@ static int nop_virtual_engine(struct intel_gt *gt,
 		err = intel_context_pin(ve[n]);
 		if (err) {
 			intel_context_put(ve[n]);
-			kernel_context_close(ctx[n]);
 			nctx = n;
 			goto out;
 		}
@@ -2742,7 +2726,6 @@ static int nop_virtual_engine(struct intel_gt *gt,
 		i915_request_put(request[nc]);
 		intel_context_unpin(ve[nc]);
 		intel_context_put(ve[nc]);
-		kernel_context_close(ctx[nc]);
 	}
 	return err;
 }
@@ -2801,7 +2784,6 @@ static int mask_virtual_engine(struct intel_gt *gt,
 			       unsigned int nsibling)
 {
 	struct i915_request *request[MAX_ENGINE_INSTANCE + 1];
-	struct i915_gem_context *ctx;
 	struct intel_context *ve;
 	struct igt_live_test t;
 	unsigned int n;
@@ -2812,11 +2794,7 @@ static int mask_virtual_engine(struct intel_gt *gt,
 	 * restrict it to our desired engine within the virtual engine.
 	 */
 
-	ctx = kernel_context(gt->i915);
-	if (!ctx)
-		return -ENOMEM;
-
-	ve = intel_execlists_create_virtual(ctx, siblings, nsibling);
+	ve = intel_execlists_create_virtual(siblings, nsibling);
 	if (IS_ERR(ve)) {
 		err = PTR_ERR(ve);
 		goto out_close;
@@ -2884,7 +2862,6 @@ static int mask_virtual_engine(struct intel_gt *gt,
 out_put:
 	intel_context_put(ve);
 out_close:
-	kernel_context_close(ctx);
 	return err;
 }
 
@@ -2924,7 +2901,6 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 				    unsigned int nsibling)
 {
 	struct i915_request *last = NULL;
-	struct i915_gem_context *ctx;
 	struct intel_context *ve;
 	struct i915_vma *scratch;
 	struct igt_live_test t;
@@ -2932,17 +2908,11 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	int err = 0;
 	u32 *cs;
 
-	ctx = kernel_context(gt->i915);
-	if (!ctx)
-		return -ENOMEM;
-
 	scratch = create_scratch(siblings[0]->gt);
-	if (IS_ERR(scratch)) {
-		err = PTR_ERR(scratch);
-		goto out_close;
-	}
+	if (IS_ERR(scratch))
+		return PTR_ERR(scratch);
 
-	ve = intel_execlists_create_virtual(ctx, siblings, nsibling);
+	ve = intel_execlists_create_virtual(siblings, nsibling);
 	if (IS_ERR(ve)) {
 		err = PTR_ERR(ve);
 		goto out_scratch;
@@ -3025,8 +2995,6 @@ static int preserved_virtual_engine(struct intel_gt *gt,
 	intel_context_put(ve);
 out_scratch:
 	i915_vma_unpin_and_release(&scratch, 0);
-out_close:
-	kernel_context_close(ctx);
 	return err;
 }
 
@@ -3078,7 +3046,6 @@ static int bond_virtual_engine(struct intel_gt *gt,
 #define BOND_SCHEDULE BIT(0)
 {
 	struct intel_engine_cs *master;
-	struct i915_gem_context *ctx;
 	struct i915_request *rq[16];
 	enum intel_engine_id id;
 	struct igt_spinner spin;
@@ -3129,12 +3096,6 @@ static int bond_virtual_engine(struct intel_gt *gt,
 	if (igt_spinner_init(&spin, gt))
 		return -ENOMEM;
 
-	ctx = kernel_context(gt->i915);
-	if (!ctx) {
-		err = -ENOMEM;
-		goto err_spin;
-	}
-
 	err = 0;
 	rq[0] = ERR_PTR(-ENOMEM);
 	for_each_engine(master, gt, id) {
@@ -3145,7 +3106,9 @@ static int bond_virtual_engine(struct intel_gt *gt,
 
 		memset_p((void *)rq, ERR_PTR(-EINVAL), ARRAY_SIZE(rq));
 
-		rq[0] = spinner_create_request(&spin, ctx, master, MI_NOOP);
+		rq[0] = igt_spinner_create_request(&spin,
+						   master->kernel_context,
+						   MI_NOOP);
 		if (IS_ERR(rq[0])) {
 			err = PTR_ERR(rq[0]);
 			goto out;
@@ -3172,9 +3135,7 @@ static int bond_virtual_engine(struct intel_gt *gt,
 		for (n = 0; n < nsibling; n++) {
 			struct intel_context *ve;
 
-			ve = intel_execlists_create_virtual(ctx,
-							    siblings,
-							    nsibling);
+			ve = intel_execlists_create_virtual(siblings, nsibling);
 			if (IS_ERR(ve)) {
 				err = PTR_ERR(ve);
 				onstack_fence_fini(&fence);
@@ -3254,8 +3215,6 @@ static int bond_virtual_engine(struct intel_gt *gt,
 	if (igt_flush_test(gt->i915))
 		err = -EIO;
 
-	kernel_context_close(ctx);
-err_spin:
 	igt_spinner_fini(&spin);
 	return err;
 }
@@ -3567,8 +3526,7 @@ static int live_lrc_fixed(void *arg)
 	return err;
 }
 
-static int __live_lrc_state(struct i915_gem_context *fixme,
-			    struct intel_engine_cs *engine,
+static int __live_lrc_state(struct intel_engine_cs *engine,
 			    struct i915_vma *scratch)
 {
 	struct intel_context *ce;
@@ -3583,7 +3541,7 @@ static int __live_lrc_state(struct i915_gem_context *fixme,
 	int err;
 	int n;
 
-	ce = intel_context_create(fixme, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
@@ -3657,7 +3615,6 @@ static int live_lrc_state(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *fixme;
 	struct i915_vma *scratch;
 	enum intel_engine_id id;
 	int err = 0;
@@ -3667,18 +3624,12 @@ static int live_lrc_state(void *arg)
 	 * intel_context.
 	 */
 
-	fixme = kernel_context(gt->i915);
-	if (!fixme)
-		return -ENOMEM;
-
 	scratch = create_scratch(gt);
-	if (IS_ERR(scratch)) {
-		err = PTR_ERR(scratch);
-		goto out_close;
-	}
+	if (IS_ERR(scratch))
+		return PTR_ERR(scratch);
 
 	for_each_engine(engine, gt, id) {
-		err = __live_lrc_state(fixme, engine, scratch);
+		err = __live_lrc_state(engine, scratch);
 		if (err)
 			break;
 	}
@@ -3687,8 +3638,6 @@ static int live_lrc_state(void *arg)
 		err = -EIO;
 
 	i915_vma_unpin_and_release(&scratch, 0);
-out_close:
-	kernel_context_close(fixme);
 	return err;
 }
 
@@ -3721,8 +3670,7 @@ static int gpr_make_dirty(struct intel_engine_cs *engine)
 	return 0;
 }
 
-static int __live_gpr_clear(struct i915_gem_context *fixme,
-			    struct intel_engine_cs *engine,
+static int __live_gpr_clear(struct intel_engine_cs *engine,
 			    struct i915_vma *scratch)
 {
 	struct intel_context *ce;
@@ -3738,7 +3686,7 @@ static int __live_gpr_clear(struct i915_gem_context *fixme,
 	if (err)
 		return err;
 
-	ce = intel_context_create(fixme, engine);
+	ce = intel_context_create(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
@@ -3800,7 +3748,6 @@ static int live_gpr_clear(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *fixme;
 	struct i915_vma *scratch;
 	enum intel_engine_id id;
 	int err = 0;
@@ -3810,18 +3757,12 @@ static int live_gpr_clear(void *arg)
 	 * to avoid leaking any information from previous contexts.
 	 */
 
-	fixme = kernel_context(gt->i915);
-	if (!fixme)
-		return -ENOMEM;
-
 	scratch = create_scratch(gt);
-	if (IS_ERR(scratch)) {
-		err = PTR_ERR(scratch);
-		goto out_close;
-	}
+	if (IS_ERR(scratch))
+		return PTR_ERR(scratch);
 
 	for_each_engine(engine, gt, id) {
-		err = __live_gpr_clear(fixme, engine, scratch);
+		err = __live_gpr_clear(engine, scratch);
 		if (err)
 			break;
 	}
@@ -3830,8 +3771,6 @@ static int live_gpr_clear(void *arg)
 		err = -EIO;
 
 	i915_vma_unpin_and_release(&scratch, 0);
-out_close:
-	kernel_context_close(fixme);
 	return err;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index de010f527757..de1f83100fb6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -289,8 +289,7 @@ static int live_mocs_clean(void *arg)
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
 
-		ce = intel_context_create(engine->kernel_context->gem_context,
-					  engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			err = PTR_ERR(ce);
 			break;
@@ -384,8 +383,7 @@ static int live_mocs_reset(void *arg)
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
 
-		ce = intel_context_create(engine->kernel_context->gem_context,
-					  engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			err = PTR_ERR(ce);
 			break;
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index f8b7691be4d1..8cc55a0e9e06 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -160,8 +160,7 @@ int live_rc6_ctx_wa(void *arg)
 			const u32 *res;
 
 			/* Use a sacrifical context */
-			ce = intel_context_create(engine->kernel_context->gem_context,
-						  engine);
+			ce = intel_context_create(engine);
 			if (IS_ERR(ce)) {
 				err = PTR_ERR(ce);
 				goto out;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index d5d1e1a32187..ac1921854cbf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -264,22 +264,15 @@ static int
 switch_to_scratch_context(struct intel_engine_cs *engine,
 			  struct igt_spinner *spin)
 {
-	struct i915_gem_context *ctx;
 	struct intel_context *ce;
 	struct i915_request *rq;
 	int err = 0;
 
-	ctx = kernel_context(engine->i915);
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
-
-	GEM_BUG_ON(i915_gem_context_is_bannable(ctx));
-
-	ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
-	GEM_BUG_ON(IS_ERR(ce));
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
 
 	rq = igt_spinner_create_request(spin, ce, MI_NOOP);
-
 	intel_context_put(ce);
 
 	if (IS_ERR(rq)) {
@@ -293,7 +286,6 @@ switch_to_scratch_context(struct intel_engine_cs *engine,
 	if (err && spin)
 		igt_spinner_end(spin);
 
-	kernel_context_close(ctx);
 	return err;
 }
 
@@ -367,20 +359,17 @@ static int check_whitelist_across_reset(struct intel_engine_cs *engine,
 	return err;
 }
 
-static struct i915_vma *create_batch(struct i915_gem_context *ctx)
+static struct i915_vma *create_batch(struct i915_address_space *vm)
 {
 	struct drm_i915_gem_object *obj;
-	struct i915_address_space *vm;
 	struct i915_vma *vma;
 	int err;
 
-	obj = i915_gem_object_create_internal(ctx->i915, 16 * PAGE_SIZE);
+	obj = i915_gem_object_create_internal(vm->i915, 16 * PAGE_SIZE);
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
 	vma = i915_vma_instance(obj, vm, NULL);
-	i915_vm_put(vm);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err_obj;
@@ -452,8 +441,7 @@ static int whitelist_writable_count(struct intel_engine_cs *engine)
 	return count;
 }
 
-static int check_dirty_whitelist(struct i915_gem_context *ctx,
-				 struct intel_engine_cs *engine)
+static int check_dirty_whitelist(struct intel_context *ce)
 {
 	const u32 values[] = {
 		0x00000000,
@@ -481,19 +469,17 @@ static int check_dirty_whitelist(struct i915_gem_context *ctx,
 		0xffff00ff,
 		0xffffffff,
 	};
-	struct i915_address_space *vm;
+	struct intel_engine_cs *engine = ce->engine;
 	struct i915_vma *scratch;
 	struct i915_vma *batch;
 	int err = 0, i, v;
 	u32 *cs, *results;
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
-	scratch = create_scratch(vm, 2 * ARRAY_SIZE(values) + 1);
-	i915_vm_put(vm);
+	scratch = create_scratch(ce->vm, 2 * ARRAY_SIZE(values) + 1);
 	if (IS_ERR(scratch))
 		return PTR_ERR(scratch);
 
-	batch = create_batch(ctx);
+	batch = create_batch(ce->vm);
 	if (IS_ERR(batch)) {
 		err = PTR_ERR(batch);
 		goto out_scratch;
@@ -518,7 +504,7 @@ static int check_dirty_whitelist(struct i915_gem_context *ctx,
 
 		srm = MI_STORE_REGISTER_MEM;
 		lrm = MI_LOAD_REGISTER_MEM;
-		if (INTEL_GEN(ctx->i915) >= 8)
+		if (INTEL_GEN(engine->i915) >= 8)
 			lrm++, srm++;
 
 		pr_debug("%s: Writing garbage to %x\n",
@@ -577,7 +563,7 @@ static int check_dirty_whitelist(struct i915_gem_context *ctx,
 		i915_gem_object_unpin_map(batch->obj);
 		intel_gt_chipset_flush(engine->gt);
 
-		rq = igt_request_alloc(ctx, engine);
+		rq = intel_context_create_request(ce);
 		if (IS_ERR(rq)) {
 			err = PTR_ERR(rq);
 			goto out_batch;
@@ -696,7 +682,7 @@ static int check_dirty_whitelist(struct i915_gem_context *ctx,
 			break;
 	}
 
-	if (igt_flush_test(ctx->i915))
+	if (igt_flush_test(engine->i915))
 		err = -EIO;
 out_batch:
 	i915_vma_unpin_and_release(&batch, 0);
@@ -709,38 +695,31 @@ static int live_dirty_whitelist(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *ctx;
 	enum intel_engine_id id;
-	struct file *file;
-	int err = 0;
 
 	/* Can the user write to the whitelisted registers? */
 
 	if (INTEL_GEN(gt->i915) < 7) /* minimum requirement for LRI, SRM, LRM */
 		return 0;
 
-	file = mock_file(gt->i915);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
-	ctx = live_context(gt->i915, file);
-	if (IS_ERR(ctx)) {
-		err = PTR_ERR(ctx);
-		goto out_file;
-	}
-
 	for_each_engine(engine, gt, id) {
+		struct intel_context *ce;
+		int err;
+
 		if (engine->whitelist.count == 0)
 			continue;
 
-		err = check_dirty_whitelist(ctx, engine);
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce))
+			return PTR_ERR(ce);
+
+		err = check_dirty_whitelist(ce);
+		intel_context_put(ce);
 		if (err)
-			goto out_file;
+			return err;
 	}
 
-out_file:
-	fput(file);
-	return err;
+	return 0;
 }
 
 static int live_reset_whitelist(void *arg)
@@ -830,12 +809,15 @@ static int read_whitelisted_registers(struct i915_gem_context *ctx,
 static int scrub_whitelisted_registers(struct i915_gem_context *ctx,
 				       struct intel_engine_cs *engine)
 {
+	struct i915_address_space *vm;
 	struct i915_request *rq;
 	struct i915_vma *batch;
 	int i, err = 0;
 	u32 *cs;
 
-	batch = create_batch(ctx);
+	vm = i915_gem_context_get_vm_rcu(ctx);
+	batch = create_batch(vm);
+	i915_vm_put(vm);
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 228c66534e21..b3299f88e24e 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -35,12 +35,12 @@
 
 #include <linux/kthread.h>
 
-#include "gem/i915_gem_context.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_context.h"
 #include "gt/intel_ring.h"
 
 #include "i915_drv.h"
+#include "i915_gem_gtt.h"
 #include "gvt.h"
 
 #define RING_CTX_OFF(x) \
@@ -1220,16 +1220,14 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 	struct drm_i915_private *i915 = vgpu->gvt->dev_priv;
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	struct intel_engine_cs *engine;
-	struct i915_gem_context *ctx;
 	struct i915_ppgtt *ppgtt;
 	enum intel_engine_id i;
 	int ret;
 
-	ctx = i915_gem_context_create_kernel(i915, I915_PRIORITY_MAX);
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
+	ppgtt = i915_ppgtt_create(i915);
+	if (IS_ERR(ppgtt))
+		return PTR_ERR(ppgtt);
 
-	ppgtt = i915_vm_to_ppgtt(i915_gem_context_get_vm_rcu(ctx));
 	i915_context_ppgtt_root_save(s, ppgtt);
 
 	for_each_engine(engine, i915, i) {
@@ -1238,12 +1236,14 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 		INIT_LIST_HEAD(&s->workload_q_head[i]);
 		s->shadow[i] = ERR_PTR(-EINVAL);
 
-		ce = intel_context_create(ctx, engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			ret = PTR_ERR(ce);
 			goto out_shadow_ctx;
 		}
 
+		i915_vm_put(ce->vm);
+		ce->vm = i915_vm_get(&ppgtt->vm);
 		intel_context_set_single_submission(ce);
 
 		if (!USES_GUC_SUBMISSION(i915)) { /* Max ring buffer size */
@@ -1278,7 +1278,6 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 	bitmap_zero(s->tlb_handle_pending, I915_NUM_ENGINES);
 
 	i915_vm_put(&ppgtt->vm);
-	i915_gem_context_put(ctx);
 	return 0;
 
 out_shadow_ctx:
@@ -1291,7 +1290,6 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 		intel_context_put(s->shadow[i]);
 	}
 	i915_vm_put(&ppgtt->vm);
-	i915_gem_context_put(ctx);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 3d0edde84705..cfe09964622b 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -6,6 +6,7 @@
 
 #include <linux/debugobjects.h>
 
+#include "gt/intel_context.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_ring.h"
 
@@ -724,6 +725,7 @@ void i915_request_add_active_barriers(struct i915_request *rq)
 	struct llist_node *node, *next;
 	unsigned long flags;
 
+	GEM_BUG_ON(!intel_context_is_barrier(rq->context));
 	GEM_BUG_ON(intel_engine_is_virtual(engine));
 	GEM_BUG_ON(i915_request_timeline(rq) != engine->kernel_context->timeline);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0781b6326b8c..95db8017f138 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -955,9 +955,6 @@ struct drm_i915_private {
 
 	struct pci_dev *bridge_dev;
 
-	/* Context used internally to idle the GPU and setup initial state */
-	struct i915_gem_context *kernel_context;
-
 	struct intel_engine_cs *engine[I915_NUM_ENGINES];
 	struct rb_root uabi_engines;
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 6e7010089e23..e7f0ef18e31e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1123,8 +1123,7 @@ static int __intel_engines_record_defaults(struct intel_gt *gt)
 		GEM_BUG_ON(!engine->kernel_context);
 		engine->serial++; /* force the kernel context switch */
 
-		ce = intel_context_create(engine->kernel_context->gem_context,
-					  engine);
+		ce = intel_context_create(engine);
 		if (IS_ERR(ce)) {
 			err = PTR_ERR(ce);
 			goto out;
@@ -1284,6 +1283,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	}
 
 	intel_gt_init(&dev_priv->gt);
+	i915_gem_init__contexts(dev_priv);
 
 	ret = intel_engines_setup(&dev_priv->gt);
 	if (ret) {
@@ -1291,16 +1291,10 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		goto err_unlock;
 	}
 
-	ret = i915_gem_init_contexts(dev_priv);
-	if (ret) {
-		GEM_BUG_ON(ret == -EIO);
-		goto err_scratch;
-	}
-
 	ret = intel_engines_init(&dev_priv->gt);
 	if (ret) {
 		GEM_BUG_ON(ret == -EIO);
-		goto err_context;
+		goto err_scratch;
 	}
 
 	intel_uc_init(&dev_priv->gt.uc);
@@ -1364,9 +1358,6 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		intel_uc_fini(&dev_priv->gt.uc);
 		intel_engines_cleanup(&dev_priv->gt);
 	}
-err_context:
-	if (ret != -EIO)
-		i915_gem_driver_release__contexts(dev_priv);
 err_scratch:
 	intel_gt_driver_release(&dev_priv->gt);
 err_unlock:
@@ -1431,7 +1422,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 {
 	intel_engines_cleanup(&dev_priv->gt);
-	i915_gem_driver_release__contexts(dev_priv);
 	intel_gt_driver_release(&dev_priv->gt);
 
 	intel_wa_list_free(&dev_priv->gt_wa_list);
@@ -1439,6 +1429,8 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
 	i915_gem_cleanup_userptr(dev_priv);
 
+	i915_gem_driver_release__contexts(dev_priv);
+
 	i915_gem_drain_freed_objects(dev_priv);
 
 	WARN_ON(!list_empty(&dev_priv->gem.contexts.list));
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index d9a2f58a620a..2ad2fc5efdbf 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -1375,12 +1375,8 @@ static int gen8_init_scratch(struct i915_address_space *vm)
 	 * If everybody agrees to not to write into the scratch page,
 	 * we can reuse it for all vm, keeping contexts and processes separate.
 	 */
-	if (vm->has_read_only &&
-	    vm->i915->kernel_context &&
-	    vm->i915->kernel_context->vm) {
-		struct i915_address_space *clone =
-			rcu_dereference_protected(vm->i915->kernel_context->vm,
-						  true); /* static */
+	if (vm->has_read_only && vm->gt->vm && !i915_is_ggtt(vm->gt->vm)) {
+		struct i915_address_space *clone = vm->gt->vm;
 
 		GEM_BUG_ON(!clone->has_read_only);
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9d4733927a2c..84350c7bc711 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2323,9 +2323,6 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 	 */
 	spin_lock(&i915->gem.contexts.lock);
 	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
-		if (ctx == i915->kernel_context)
-			continue;
-
 		if (!kref_get_unless_zero(&ctx->ref))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index ed70d8dcea74..14a5a99284fa 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1301,8 +1301,8 @@ void __i915_request_queue(struct i915_request *rq,
 
 void i915_request_add(struct i915_request *rq)
 {
-	struct i915_sched_attr attr = rq->context->gem_context->sched;
 	struct intel_timeline * const tl = i915_request_timeline(rq);
+	struct i915_sched_attr attr = {};
 	struct i915_request *prev;
 
 	lockdep_assert_held(&tl->mutex);
@@ -1312,6 +1312,9 @@ void i915_request_add(struct i915_request *rq)
 
 	prev = __i915_request_commit(rq);
 
+	if (rq->context->gem_context)
+		attr = rq->context->gem_context->sched;
+
 	/*
 	 * Boost actual workloads past semaphores!
 	 *
diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 71a4ca38fbac..f89d9c42f1fa 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -749,10 +749,8 @@ static int live_empty_request(void *arg)
 
 static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 {
-	struct i915_gem_context *ctx = i915->kernel_context;
 	struct drm_i915_gem_object *obj;
 	const int gen = INTEL_GEN(i915);
-	struct i915_address_space *vm;
 	struct i915_vma *vma;
 	u32 *cmd;
 	int err;
@@ -761,9 +759,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
-	vma = i915_vma_instance(obj, vm, NULL);
-	i915_vm_put(vm);
+	vma = i915_vma_instance(obj, i915->gt.vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
 		goto err;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index d14ba8498f57..a5e46a4739f9 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -63,7 +63,6 @@ static void mock_device_release(struct drm_device *dev)
 
 	for_each_engine(engine, &i915->gt, id)
 		mock_engine_free(engine);
-	i915_gem_driver_release__contexts(i915);
 
 	drain_workqueue(i915->wq);
 	i915_gem_drain_freed_objects(i915);
@@ -180,6 +179,7 @@ struct drm_i915_private *mock_gem_device(void)
 	mock_init_contexts(i915);
 
 	mock_init_ggtt(i915, &i915->ggtt);
+	i915->gt.vm = i915_vm_get(&i915->ggtt.vm);
 
 	mkwrite_device_info(i915)->engine_mask = BIT(0);
 
@@ -187,10 +187,6 @@ struct drm_i915_private *mock_gem_device(void)
 	if (!i915->engine[RCS0])
 		goto err_unlock;
 
-	i915->kernel_context = mock_context(i915, NULL);
-	if (!i915->kernel_context)
-		goto err_engine;
-
 	if (mock_engine_init(i915->engine[RCS0]))
 		goto err_context;
 
@@ -199,8 +195,6 @@ struct drm_i915_private *mock_gem_device(void)
 	return i915;
 
 err_context:
-	i915_gem_driver_release__contexts(i915);
-err_engine:
 	mock_engine_free(i915->engine[RCS0]);
 err_unlock:
 	destroy_workqueue(i915->wq);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
