Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D9D489E46
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 18:22:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C0210FF7C;
	Mon, 10 Jan 2022 17:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B07310FC67;
 Mon, 10 Jan 2022 17:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641835361; x=1673371361;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sju5SYpmkMjVHyKSVkpL/HH4M038VnaysTDU+vbxzUQ=;
 b=PdhAekJEmnQxep0iETwBZJGzIipn6Dt7FzolWA26DtP1bC44c6S7vwxB
 UWYbjIuq70AzgD/KmekHT441kT0XtVUWHvP2UUl1wxiC56ia1rNJht9mZ
 haA+HUrdfTo+l8ah8bXvdBhEP7Nwx85gArqpUzD70ZQLcaa/phjo69TPW
 +FmDYtptrik9VIL7MtsmXHR5OEsmt896LXj/v4uUSfNLUtaekgJzCcpqe
 GBWF+kH0BjdvBzCnyeteo2puGcyquvhmVFSUTR4/OeyKzDdq4vcJAgh9s
 R2abUJQwifS4rUbl0ZMeOa8FEQutqVX/GlzbT2r/qVZIHF0QJLGn1Kjb5 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="243471522"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="243471522"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:22:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514744029"
Received: from pheino-mobl.ger.corp.intel.com (HELO thellstr-mobl1.intel.com)
 ([10.249.254.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 09:22:38 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 10 Jan 2022 18:22:18 +0100
Message-Id: <20220110172219.107131-6-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
References: <20220110172219.107131-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 5/6] drm/i915: Asynchronous migration selftest
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a selftest to exercise asynchronous migration and -unbining.
Extend the gem_migrate selftest to perform the migrations while
depending on a spinner and a bound vma set up on the migrated
buffer object.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  12 ++
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |   3 +
 .../drm/i915/gem/selftests/i915_gem_migrate.c | 192 ++++++++++++++++--
 3 files changed, 192 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index d87b508b59b1..1a9e1f940a7d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -756,6 +756,18 @@ i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj)
 	return dma_fence_get(i915_gem_to_ttm(obj)->moving);
 }
 
+void i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
+				      struct dma_fence *fence)
+{
+	struct dma_fence **moving = &i915_gem_to_ttm(obj)->moving;
+
+	if (*moving == fence)
+		return;
+
+	dma_fence_put(*moving);
+	*moving = dma_fence_get(fence);
+}
+
 /**
  * i915_gem_object_wait_moving_fence - Wait for the object's moving fence if any
  * @obj: The object whose moving fence to wait for.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index bc448f895ae8..02c37fe4a535 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -523,6 +523,9 @@ i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
 struct dma_fence *
 i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj);
 
+void i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
+				      struct dma_fence *fence);
+
 int i915_gem_object_wait_moving_fence(struct drm_i915_gem_object *obj,
 				      bool intr);
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
index ecb691c81d1e..d534141b2cf7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_migrate.c
@@ -4,8 +4,13 @@
  */
 
 #include "gt/intel_migrate.h"
+#include "gt/intel_gpu_commands.h"
 #include "gem/i915_gem_ttm_move.h"
 
+#include "i915_deps.h"
+
+#include "selftests/igt_spinner.h"
+
 static int igt_fill_check_buffer(struct drm_i915_gem_object *obj,
 				 bool fill)
 {
@@ -101,7 +106,8 @@ static int igt_same_create_migrate(void *arg)
 }
 
 static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
-				  struct drm_i915_gem_object *obj)
+				  struct drm_i915_gem_object *obj,
+				  struct i915_vma *vma)
 {
 	int err;
 
@@ -109,6 +115,24 @@ static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
 	if (err)
 		return err;
 
+	if (vma) {
+		err = i915_vma_pin_ww(vma, ww, obj->base.size, 0,
+				      0UL | PIN_OFFSET_FIXED |
+				      PIN_USER);
+		if (err) {
+			if (err != -EINTR && err != ERESTARTSYS &&
+			    err != -EDEADLK)
+				pr_err("Failed to pin vma.\n");
+			return err;
+		}
+
+		i915_vma_unpin(vma);
+	}
+
+	/*
+	 * Migration will implicitly unbind (asynchronously) any bound
+	 * vmas.
+	 */
 	if (i915_gem_object_is_lmem(obj)) {
 		err = i915_gem_object_migrate(obj, ww, INTEL_REGION_SMEM);
 		if (err) {
@@ -149,11 +173,15 @@ static int lmem_pages_migrate_one(struct i915_gem_ww_ctx *ww,
 	return err;
 }
 
-static int igt_lmem_pages_migrate(void *arg)
+static int __igt_lmem_pages_migrate(struct intel_gt *gt,
+				    struct i915_address_space *vm,
+				    struct i915_deps *deps,
+				    struct igt_spinner *spin,
+				    struct dma_fence *spin_fence)
 {
-	struct intel_gt *gt = arg;
 	struct drm_i915_private *i915 = gt->i915;
 	struct drm_i915_gem_object *obj;
+	struct i915_vma *vma = NULL;
 	struct i915_gem_ww_ctx ww;
 	struct i915_request *rq;
 	int err;
@@ -165,6 +193,14 @@ static int igt_lmem_pages_migrate(void *arg)
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
+	if (vm) {
+		vma = i915_vma_instance(obj, vm, NULL);
+		if (IS_ERR(vma)) {
+			err = PTR_ERR(vma);
+			goto out_put;
+		}
+	}
+
 	/* Initial GPU fill, sync, CPU initialization. */
 	for_i915_gem_ww(&ww, err, true) {
 		err = i915_gem_object_lock(obj, &ww);
@@ -175,25 +211,23 @@ static int igt_lmem_pages_migrate(void *arg)
 		if (err)
 			continue;
 
-		err = intel_migrate_clear(&gt->migrate, &ww, NULL,
+		err = intel_migrate_clear(&gt->migrate, &ww, deps,
 					  obj->mm.pages->sgl, obj->cache_level,
 					  i915_gem_object_is_lmem(obj),
 					  0xdeadbeaf, &rq);
 		if (rq) {
 			dma_resv_add_excl_fence(obj->base.resv, &rq->fence);
+			i915_gem_object_set_moving_fence(obj, &rq->fence);
 			i915_request_put(rq);
 		}
 		if (err)
 			continue;
 
-		err = i915_gem_object_wait(obj, I915_WAIT_INTERRUPTIBLE,
-					   5 * HZ);
-		if (err)
-			continue;
-
-		err = igt_fill_check_buffer(obj, true);
-		if (err)
-			continue;
+		if (!vma) {
+			err = igt_fill_check_buffer(obj, true);
+			if (err)
+				continue;
+		}
 	}
 	if (err)
 		goto out_put;
@@ -204,7 +238,7 @@ static int igt_lmem_pages_migrate(void *arg)
 	 */
 	for (i = 1; i <= 5; ++i) {
 		for_i915_gem_ww(&ww, err, true)
-			err = lmem_pages_migrate_one(&ww, obj);
+			err = lmem_pages_migrate_one(&ww, obj, vma);
 		if (err)
 			goto out_put;
 	}
@@ -213,12 +247,27 @@ static int igt_lmem_pages_migrate(void *arg)
 	if (err)
 		goto out_put;
 
+	if (spin) {
+		if (dma_fence_is_signaled(spin_fence)) {
+			pr_err("Spinner was terminated by hangcheck.\n");
+			err = -EBUSY;
+			goto out_unlock;
+		}
+		igt_spinner_end(spin);
+	}
+
 	/* Finally sync migration and check content. */
 	err = i915_gem_object_wait_migration(obj, true);
 	if (err)
 		goto out_unlock;
 
-	err = igt_fill_check_buffer(obj, false);
+	if (vma) {
+		err = i915_vma_wait_for_bind(vma);
+		if (err)
+			goto out_unlock;
+	} else {
+		err = igt_fill_check_buffer(obj, false);
+	}
 
 out_unlock:
 	i915_gem_object_unlock(obj);
@@ -231,6 +280,7 @@ static int igt_lmem_pages_migrate(void *arg)
 static int igt_lmem_pages_failsafe_migrate(void *arg)
 {
 	int fail_gpu, fail_alloc, ret;
+	struct intel_gt *gt = arg;
 
 	for (fail_gpu = 0; fail_gpu < 2; ++fail_gpu) {
 		for (fail_alloc = 0; fail_alloc < 2; ++fail_alloc) {
@@ -238,7 +288,118 @@ static int igt_lmem_pages_failsafe_migrate(void *arg)
 				fail_gpu, fail_alloc);
 			i915_ttm_migrate_set_failure_modes(fail_gpu,
 							   fail_alloc);
-			ret = igt_lmem_pages_migrate(arg);
+			ret = __igt_lmem_pages_migrate(gt, NULL, NULL, NULL, NULL);
+			if (ret)
+				goto out_err;
+		}
+	}
+
+out_err:
+	i915_ttm_migrate_set_failure_modes(false, false);
+	return ret;
+}
+
+/*
+ * This subtest tests that unbinding at migration is indeed performed
+ * async. We launch a spinner and a number of migrations depending on
+ * that spinner to have terminated. Before each migration we bind a
+ * vma, which should then be async unbound by the migration operation.
+ * If we are able to schedule migrations without blocking while the
+ * spinner is still running, those unbinds are indeed async and non-
+ * blocking.
+ *
+ * Note that each async bind operation is awaiting the previous migration
+ * due to the moving fence resulting from the migration.
+ */
+static int igt_async_migrate(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+	struct i915_ppgtt *ppgtt;
+	struct igt_spinner spin;
+	int err;
+
+	ppgtt = i915_ppgtt_create(gt, 0);
+	if (IS_ERR(ppgtt))
+		return PTR_ERR(ppgtt);
+
+	if (igt_spinner_init(&spin, gt)) {
+		err = -ENOMEM;
+		goto out_spin;
+	}
+
+	for_each_engine(engine, gt, id) {
+		struct ttm_operation_ctx ctx = {
+			.interruptible = true
+		};
+		struct dma_fence *spin_fence;
+		struct intel_context *ce;
+		struct i915_request *rq;
+		struct i915_deps deps;
+
+		ce = intel_context_create(engine);
+		if (IS_ERR(ce)) {
+			err = PTR_ERR(ce);
+			goto out_ce;
+		}
+
+		/*
+		 * Use MI_NOOP, making the spinner non-preemptible. If there
+		 * is a code path where we fail async operation due to the
+		 * running spinner, we will block and fail to end the
+		 * spinner resulting in a deadlock. But with a non-
+		 * preemptible spinner, hangcheck will terminate the spinner
+		 * for us, and we will later detect that and fail the test.
+		 */
+		rq = igt_spinner_create_request(&spin, ce, MI_NOOP);
+		intel_context_put(ce);
+		if (IS_ERR(rq)) {
+			err = PTR_ERR(rq);
+			goto out_ce;
+		}
+
+		i915_deps_init(&deps, GFP_KERNEL);
+		err = i915_deps_add_dependency(&deps, &rq->fence, &ctx);
+		spin_fence = dma_fence_get(&rq->fence);
+		i915_request_add(rq);
+		if (err)
+			goto out_ce;
+
+		err = __igt_lmem_pages_migrate(gt, &ppgtt->vm, &deps, &spin,
+					       spin_fence);
+		i915_deps_fini(&deps);
+		dma_fence_put(spin_fence);
+		if (err)
+			goto out_ce;
+	}
+
+out_ce:
+	igt_spinner_fini(&spin);
+out_spin:
+	i915_vm_put(&ppgtt->vm);
+
+	return err;
+}
+
+/*
+ * Setting ASYNC_FAIL_ALLOC to 2 will simulate memory allocation failure while
+ * arming the migration error check and block async migration. This
+ * will cause us to deadlock and hangcheck will terminate the spinner
+ * causing the test to fail.
+ */
+#define ASYNC_FAIL_ALLOC 1
+static int igt_lmem_async_migrate(void *arg)
+{
+	int fail_gpu, fail_alloc, ret;
+	struct intel_gt *gt = arg;
+
+	for (fail_gpu = 0; fail_gpu < 2; ++fail_gpu) {
+		for (fail_alloc = 0; fail_alloc < ASYNC_FAIL_ALLOC; ++fail_alloc) {
+			pr_info("Simulated failure modes: gpu: %d, alloc: %d\n",
+				fail_gpu, fail_alloc);
+			i915_ttm_migrate_set_failure_modes(fail_gpu,
+							   fail_alloc);
+			ret = igt_async_migrate(gt);
 			if (ret)
 				goto out_err;
 		}
@@ -256,6 +417,7 @@ int i915_gem_migrate_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_lmem_create_migrate),
 		SUBTEST(igt_same_create_migrate),
 		SUBTEST(igt_lmem_pages_failsafe_migrate),
+		SUBTEST(igt_lmem_async_migrate),
 	};
 
 	if (!HAS_LMEM(i915))
-- 
2.31.1

