Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB9D1EE483
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1C96E353;
	Thu,  4 Jun 2020 12:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DBA6E353
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 12:37:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21395144-1500050 
 for multiple; Thu, 04 Jun 2020 13:36:44 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 13:36:41 +0100
Message-Id: <20200604123641.767-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604102140.8845-1-chris@chris-wilson.co.uk>
References: <20200604102140.8845-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise all copy engines
 with the blt routines
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just to remove an obnoxious HAS_ENGINES(), and in the process make the
code agnostic to the availabilty of any particular engine by making it
exercise any and all such engines declared on the system.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../i915/gem/selftests/i915_gem_client_blt.c  |  3 -
 .../i915/gem/selftests/i915_gem_object_blt.c  | 55 ++++++++++++-------
 .../gpu/drm/i915/gem/selftests/mock_context.c | 37 +++++++++++++
 .../gpu/drm/i915/gem/selftests/mock_context.h |  4 ++
 drivers/gpu/drm/i915/i915_drv.h               |  5 ++
 5 files changed, 80 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 8fe3ad2ee34e..299c29e9ad86 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -702,8 +702,5 @@ int i915_gem_client_blt_live_selftests(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(&i915->gt))
 		return 0;
 
-	if (!HAS_ENGINE(i915, BCS0))
-		return 0;
-
 	return i915_live_subtests(tests, i915);
 }
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 31549ad83fa6..23b6e11bbc3e 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -193,7 +193,7 @@ static int perf_copy_blt(void *arg)
 }
 
 struct igt_thread_arg {
-	struct drm_i915_private *i915;
+	struct intel_engine_cs *engine;
 	struct i915_gem_context *ctx;
 	struct file *file;
 	struct rnd_state prng;
@@ -203,7 +203,7 @@ struct igt_thread_arg {
 static int igt_fill_blt_thread(void *arg)
 {
 	struct igt_thread_arg *thread = arg;
-	struct drm_i915_private *i915 = thread->i915;
+	struct intel_engine_cs *engine = thread->engine;
 	struct rnd_state *prng = &thread->prng;
 	struct drm_i915_gem_object *obj;
 	struct i915_gem_context *ctx;
@@ -215,7 +215,7 @@ static int igt_fill_blt_thread(void *arg)
 
 	ctx = thread->ctx;
 	if (!ctx) {
-		ctx = live_context(i915, thread->file);
+		ctx = live_context_for_engine(engine, thread->file);
 		if (IS_ERR(ctx))
 			return PTR_ERR(ctx);
 
@@ -223,7 +223,7 @@ static int igt_fill_blt_thread(void *arg)
 		ctx->sched.priority = I915_USER_PRIORITY(prio);
 	}
 
-	ce = i915_gem_context_get_engine(ctx, BCS0);
+	ce = i915_gem_context_get_engine(ctx, 0);
 	GEM_BUG_ON(IS_ERR(ce));
 
 	/*
@@ -256,7 +256,7 @@ static int igt_fill_blt_thread(void *arg)
 		pr_debug("%s with phys_sz= %x, sz=%x, val=%x\n", __func__,
 			 phys_sz, sz, val);
 
-		obj = huge_gem_object(i915, phys_sz, sz);
+		obj = huge_gem_object(engine->i915, phys_sz, sz);
 		if (IS_ERR(obj)) {
 			err = PTR_ERR(obj);
 			goto err_flush;
@@ -321,7 +321,7 @@ static int igt_fill_blt_thread(void *arg)
 static int igt_copy_blt_thread(void *arg)
 {
 	struct igt_thread_arg *thread = arg;
-	struct drm_i915_private *i915 = thread->i915;
+	struct intel_engine_cs *engine = thread->engine;
 	struct rnd_state *prng = &thread->prng;
 	struct drm_i915_gem_object *src, *dst;
 	struct i915_gem_context *ctx;
@@ -333,7 +333,7 @@ static int igt_copy_blt_thread(void *arg)
 
 	ctx = thread->ctx;
 	if (!ctx) {
-		ctx = live_context(i915, thread->file);
+		ctx = live_context_for_engine(engine, thread->file);
 		if (IS_ERR(ctx))
 			return PTR_ERR(ctx);
 
@@ -341,7 +341,7 @@ static int igt_copy_blt_thread(void *arg)
 		ctx->sched.priority = I915_USER_PRIORITY(prio);
 	}
 
-	ce = i915_gem_context_get_engine(ctx, BCS0);
+	ce = i915_gem_context_get_engine(ctx, 0);
 	GEM_BUG_ON(IS_ERR(ce));
 
 	/*
@@ -374,7 +374,7 @@ static int igt_copy_blt_thread(void *arg)
 		pr_debug("%s with phys_sz= %x, sz=%x, val=%x\n", __func__,
 			 phys_sz, sz, val);
 
-		src = huge_gem_object(i915, phys_sz, sz);
+		src = huge_gem_object(engine->i915, phys_sz, sz);
 		if (IS_ERR(src)) {
 			err = PTR_ERR(src);
 			goto err_flush;
@@ -394,7 +394,7 @@ static int igt_copy_blt_thread(void *arg)
 		if (!(src->cache_coherent & I915_BO_CACHE_COHERENT_FOR_READ))
 			src->cache_dirty = true;
 
-		dst = huge_gem_object(i915, phys_sz, sz);
+		dst = huge_gem_object(engine->i915, phys_sz, sz);
 		if (IS_ERR(dst)) {
 			err = PTR_ERR(dst);
 			goto err_put_src;
@@ -456,7 +456,7 @@ static int igt_copy_blt_thread(void *arg)
 	return err;
 }
 
-static int igt_threaded_blt(struct drm_i915_private *i915,
+static int igt_threaded_blt(struct intel_engine_cs *engine,
 			    int (*blt_fn)(void *arg),
 			    unsigned int flags)
 #define SINGLE_CTX BIT(0)
@@ -477,14 +477,14 @@ static int igt_threaded_blt(struct drm_i915_private *i915,
 	if (!thread)
 		goto out_tsk;
 
-	thread[0].file = mock_file(i915);
+	thread[0].file = mock_file(engine->i915);
 	if (IS_ERR(thread[0].file)) {
 		err = PTR_ERR(thread[0].file);
 		goto out_thread;
 	}
 
 	if (flags & SINGLE_CTX) {
-		thread[0].ctx = live_context(i915, thread[0].file);
+		thread[0].ctx = live_context_for_engine(engine, thread[0].file);
 		if (IS_ERR(thread[0].ctx)) {
 			err = PTR_ERR(thread[0].ctx);
 			goto out_file;
@@ -492,7 +492,7 @@ static int igt_threaded_blt(struct drm_i915_private *i915,
 	}
 
 	for (i = 0; i < n_cpus; ++i) {
-		thread[i].i915 = i915;
+		thread[i].engine = engine;
 		thread[i].file = thread[0].file;
 		thread[i].ctx = thread[0].ctx;
 		thread[i].n_cpus = n_cpus;
@@ -532,24 +532,40 @@ static int igt_threaded_blt(struct drm_i915_private *i915,
 	return err;
 }
 
+static int test_copy_engines(struct drm_i915_private *i915,
+			     int (*fn)(void *arg),
+			     unsigned int flags)
+{
+	struct intel_engine_cs *engine;
+	int ret;
+
+	for_each_uabi_class_engine(engine, I915_ENGINE_CLASS_COPY, i915) {
+		ret = igt_threaded_blt(engine, fn, flags);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int igt_fill_blt(void *arg)
 {
-	return igt_threaded_blt(arg, igt_fill_blt_thread, 0);
+	return test_copy_engines(arg, igt_fill_blt_thread, 0);
 }
 
 static int igt_fill_blt_ctx0(void *arg)
 {
-	return igt_threaded_blt(arg, igt_fill_blt_thread, SINGLE_CTX);
+	return test_copy_engines(arg, igt_fill_blt_thread, SINGLE_CTX);
 }
 
 static int igt_copy_blt(void *arg)
 {
-	return igt_threaded_blt(arg, igt_copy_blt_thread, 0);
+	return test_copy_engines(arg, igt_copy_blt_thread, 0);
 }
 
 static int igt_copy_blt_ctx0(void *arg)
 {
-	return igt_threaded_blt(arg, igt_copy_blt_thread, SINGLE_CTX);
+	return test_copy_engines(arg, igt_copy_blt_thread, SINGLE_CTX);
 }
 
 int i915_gem_object_blt_live_selftests(struct drm_i915_private *i915)
@@ -564,9 +580,6 @@ int i915_gem_object_blt_live_selftests(struct drm_i915_private *i915)
 	if (intel_gt_is_wedged(&i915->gt))
 		return 0;
 
-	if (!HAS_ENGINE(i915, BCS0))
-		return 0;
-
 	return i915_live_subtests(tests, i915);
 }
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index e7e3c620f542..aa0d06cf1903 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -99,6 +99,43 @@ live_context(struct drm_i915_private *i915, struct file *file)
 	return ERR_PTR(err);
 }
 
+struct i915_gem_context *
+live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
+{
+	struct i915_gem_engines *engines;
+	struct i915_gem_context *ctx;
+	struct intel_context *ce;
+
+	engines = alloc_engines(1);
+	if (!engines)
+		return ERR_PTR(-ENOMEM);
+
+	ctx = live_context(engine->i915, file);
+	if (IS_ERR(ctx)) {
+		__free_engines(engines, 0);
+		return ctx;
+	}
+
+	ce = intel_context_create(engine);
+	if (IS_ERR(ce)) {
+		__free_engines(engines, 0);
+		return ERR_CAST(ce);
+	}
+
+	intel_context_set_gem(ce, ctx);
+	engines->engines[0] = ce;
+	engines->num_engines = 1;
+
+	mutex_lock(&ctx->engines_mutex);
+	i915_gem_context_set_user_engines(ctx);
+	engines = rcu_replace_pointer(ctx->engines, engines, 1);
+	mutex_unlock(&ctx->engines_mutex);
+
+	engines_idle_release(ctx, engines);
+
+	return ctx;
+}
+
 struct i915_gem_context *
 kernel_context(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.h b/drivers/gpu/drm/i915/gem/selftests/mock_context.h
index fb83d2f09212..2a6121d33352 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.h
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.h
@@ -9,6 +9,7 @@
 
 struct file;
 struct drm_i915_private;
+struct intel_engine_cs;
 
 void mock_init_contexts(struct drm_i915_private *i915);
 
@@ -21,6 +22,9 @@ void mock_context_close(struct i915_gem_context *ctx);
 struct i915_gem_context *
 live_context(struct drm_i915_private *i915, struct file *file);
 
+struct i915_gem_context *
+live_context_for_engine(struct intel_engine_cs *engine, struct file *file);
+
 struct i915_gem_context *kernel_context(struct drm_i915_private *i915);
 void kernel_context_close(struct i915_gem_context *ctx);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e99255e17eb7..1e49abc5a342 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1264,6 +1264,11 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 	     (engine__); \
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
+#define for_each_uabi_class_engine(engine__, class__, i915__) \
+	for ((engine__) = intel_engine_lookup_user((i915__), (class__), 0); \
+	     (engine__) && (engine__)->uabi_class == (class__); \
+	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
+
 #define I915_GTT_OFFSET_NONE ((u32)-1)
 
 /*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
