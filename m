Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE01D478E7C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 15:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57185112876;
	Fri, 17 Dec 2021 14:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0C8112878;
 Fri, 17 Dec 2021 14:52:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="300540408"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="300540408"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 06:52:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="506789755"
Received: from olindum-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.180])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 06:52:47 -0800
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 17 Dec 2021 15:52:23 +0100
Message-Id: <20211217145228.10987-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211217145228.10987-1-thomas.hellstrom@linux.intel.com>
References: <20211217145228.10987-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915: Break out the i915_deps utility
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

Since it's starting to be used outside the i915 TTM move code, move it
to a separate set of files.

v2:
- Update the documentation.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 176 +------------
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h |  17 --
 drivers/gpu/drm/i915/i915_deps.c             | 244 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_deps.h             |  46 ++++
 drivers/gpu/drm/i915/i915_request.c          |   2 +-
 6 files changed, 293 insertions(+), 193 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_deps.c
 create mode 100644 drivers/gpu/drm/i915/i915_deps.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6ddd2d2bbaaf..1b62b9f65196 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -163,6 +163,7 @@ i915-y += \
 	  i915_active.o \
 	  i915_buddy.o \
 	  i915_cmd_parser.o \
+	  i915_deps.o \
 	  i915_gem_evict.o \
 	  i915_gem_gtt.o \
 	  i915_gem_ww.o \
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 960145c8200f..e8a99e8cd129 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -5,6 +5,7 @@
 
 #include <drm/ttm/ttm_bo_driver.h>
 
+#include "i915_deps.h"
 #include "i915_drv.h"
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
@@ -41,181 +42,6 @@ void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
 }
 #endif
 
-/**
- * DOC: Set of utilities to dynamically collect dependencies into a
- * structure which is fed into the GT migration code.
- *
- * Once we can do async unbinding, this is also needed to coalesce
- * the migration fence with the unbind fences if these are coalesced
- * post-migration.
- *
- * While collecting the individual dependencies, we store the refcounted
- * struct dma_fence pointers in a realloc-managed pointer array, since
- * that can be easily fed into a dma_fence_array. Other options are
- * available, like for example an xarray for similarity with drm/sched.
- * Can be changed easily if needed.
- *
- * A struct i915_deps need to be initialized using i915_deps_init().
- * If i915_deps_add_dependency() or i915_deps_add_resv() return an
- * error code they will internally call i915_deps_fini(), which frees
- * all internal references and allocations.
- *
- * We might want to break this out into a separate file as a utility.
- */
-
-#define I915_DEPS_MIN_ALLOC_CHUNK 8U
-
-static void i915_deps_reset_fences(struct i915_deps *deps)
-{
-	if (deps->fences != &deps->single)
-		kfree(deps->fences);
-	deps->num_deps = 0;
-	deps->fences_size = 1;
-	deps->fences = &deps->single;
-}
-
-static void i915_deps_init(struct i915_deps *deps, gfp_t gfp)
-{
-	deps->fences = NULL;
-	deps->gfp = gfp;
-	i915_deps_reset_fences(deps);
-}
-
-static void i915_deps_fini(struct i915_deps *deps)
-{
-	unsigned int i;
-
-	for (i = 0; i < deps->num_deps; ++i)
-		dma_fence_put(deps->fences[i]);
-
-	if (deps->fences != &deps->single)
-		kfree(deps->fences);
-}
-
-static int i915_deps_grow(struct i915_deps *deps, struct dma_fence *fence,
-			  const struct ttm_operation_ctx *ctx)
-{
-	int ret;
-
-	if (deps->num_deps >= deps->fences_size) {
-		unsigned int new_size = 2 * deps->fences_size;
-		struct dma_fence **new_fences;
-
-		new_size = max(new_size, I915_DEPS_MIN_ALLOC_CHUNK);
-		new_fences = kmalloc_array(new_size, sizeof(*new_fences), deps->gfp);
-		if (!new_fences)
-			goto sync;
-
-		memcpy(new_fences, deps->fences,
-		       deps->fences_size * sizeof(*new_fences));
-		swap(new_fences, deps->fences);
-		if (new_fences != &deps->single)
-			kfree(new_fences);
-		deps->fences_size = new_size;
-	}
-	deps->fences[deps->num_deps++] = dma_fence_get(fence);
-	return 0;
-
-sync:
-	if (ctx->no_wait_gpu && !dma_fence_is_signaled(fence)) {
-		ret = -EBUSY;
-		goto unref;
-	}
-
-	ret = dma_fence_wait(fence, ctx->interruptible);
-	if (ret)
-		goto unref;
-
-	ret = fence->error;
-	if (ret)
-		goto unref;
-
-	return 0;
-
-unref:
-	i915_deps_fini(deps);
-	return ret;
-}
-
-static int i915_deps_sync(const struct i915_deps *deps,
-			  const struct ttm_operation_ctx *ctx)
-{
-	struct dma_fence **fences = deps->fences;
-	unsigned int i;
-	int ret = 0;
-
-	for (i = 0; i < deps->num_deps; ++i, ++fences) {
-		if (ctx->no_wait_gpu && !dma_fence_is_signaled(*fences)) {
-			ret = -EBUSY;
-			break;
-		}
-
-		ret = dma_fence_wait(*fences, ctx->interruptible);
-		if (!ret)
-			ret = (*fences)->error;
-		if (ret)
-			break;
-	}
-
-	return ret;
-}
-
-static int i915_deps_add_dependency(struct i915_deps *deps,
-				    struct dma_fence *fence,
-				    const struct ttm_operation_ctx *ctx)
-{
-	unsigned int i;
-	int ret;
-
-	if (!fence)
-		return 0;
-
-	if (dma_fence_is_signaled(fence)) {
-		ret = fence->error;
-		if (ret)
-			i915_deps_fini(deps);
-		return ret;
-	}
-
-	for (i = 0; i < deps->num_deps; ++i) {
-		struct dma_fence *entry = deps->fences[i];
-
-		if (!entry->context || entry->context != fence->context)
-			continue;
-
-		if (dma_fence_is_later(fence, entry)) {
-			dma_fence_put(entry);
-			deps->fences[i] = dma_fence_get(fence);
-		}
-
-		return 0;
-	}
-
-	return i915_deps_grow(deps, fence, ctx);
-}
-
-static int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
-			      bool all, const bool no_excl,
-			      const struct ttm_operation_ctx *ctx)
-{
-	struct dma_resv_iter iter;
-	struct dma_fence *fence;
-
-	dma_resv_assert_held(resv);
-	dma_resv_for_each_fence(&iter, resv, all, fence) {
-		int ret;
-
-		if (no_excl && dma_resv_iter_is_exclusive(&iter))
-			continue;
-
-		ret = i915_deps_add_dependency(deps, fence, ctx);
-		if (ret)
-			return ret;
-	}
-
-	return 0;
-}
-
 static enum i915_cache_level
 i915_ttm_cache_level(struct drm_i915_private *i915, struct ttm_resource *res,
 		     struct ttm_tt *ttm)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
index 138b7647a558..d2e7f149e05c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.h
@@ -18,23 +18,6 @@ struct ttm_tt;
 struct drm_i915_gem_object;
 struct i915_refct_sgt;
 
-/**
- * struct i915_deps - Collect dependencies into a single dma-fence
- * @single: Storage for pointer if the collection is a single fence.
- * @fences: Allocated array of fence pointers if more than a single fence;
- * otherwise points to the address of @single.
- * @num_deps: Current number of dependency fences.
- * @fences_size: Size of the @fences array in number of pointers.
- * @gfp: Allocation mode.
- */
-struct i915_deps {
-	struct dma_fence *single;
-	struct dma_fence **fences;
-	unsigned int num_deps;
-	unsigned int fences_size;
-	gfp_t gfp;
-};
-
 int i915_ttm_move_notify(struct ttm_buffer_object *bo);
 
 I915_SELFTEST_DECLARE(void i915_ttm_migrate_set_failure_modes(bool gpu_migration,
diff --git a/drivers/gpu/drm/i915/i915_deps.c b/drivers/gpu/drm/i915/i915_deps.c
new file mode 100644
index 000000000000..b232b8e294d4
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_deps.c
@@ -0,0 +1,244 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <linux/dma-fence.h>
+#include <linux/slab.h>
+
+#include <drm/ttm/ttm_bo_api.h>
+
+#include "i915_deps.h"
+
+/**
+ * DOC: Set of utilities to dynamically collect dependencies into a
+ * structure which is fed into the GT migration code.
+ *
+ * Once we can do async unbinding, this is also needed to coalesce
+ * the migration fence with the unbind fences if these are coalesced
+ * post-migration.
+ *
+ * While collecting the individual dependencies, we store the refcounted
+ * struct dma_fence pointers in a realloc-managed pointer array, since
+ * that can be easily fed into a dma_fence_array. Other options are
+ * available, like for example an xarray for similarity with drm/sched.
+ * Can be changed easily if needed.
+ *
+ * A struct i915_deps need to be initialized using i915_deps_init().
+ * If i915_deps_add_dependency() or i915_deps_add_resv() return an
+ * error code they will internally call i915_deps_fini(), which frees
+ * all internal references and allocations.
+ */
+
+/* Min number of fence pointers in the array when an allocation occurs. */
+#define I915_DEPS_MIN_ALLOC_CHUNK 8U
+
+static void i915_deps_reset_fences(struct i915_deps *deps)
+{
+	if (deps->fences != &deps->single)
+		kfree(deps->fences);
+	deps->num_deps = 0;
+	deps->fences_size = 1;
+	deps->fences = &deps->single;
+}
+
+/**
+ * i915_deps_init - Initialize an i915_deps structure
+ * @deps: Pointer to the i915_deps structure to initialize.
+ * @gfp: The allocation mode for subsequenst allocations.
+ */
+void i915_deps_init(struct i915_deps *deps, gfp_t gfp)
+{
+	deps->fences = NULL;
+	deps->gfp = gfp;
+	i915_deps_reset_fences(deps);
+}
+
+/**
+ * i915_deps_fini - Finalize an i915_deps structure
+ * @deps: Pointer to the i915_deps structure to finalize.
+ *
+ * This function drops all fence references taken, conditionally frees and
+ * then resets the fences array.
+ */
+void i915_deps_fini(struct i915_deps *deps)
+{
+	unsigned int i;
+
+	for (i = 0; i < deps->num_deps; ++i)
+		dma_fence_put(deps->fences[i]);
+
+	if (deps->fences != &deps->single)
+		kfree(deps->fences);
+}
+
+static int i915_deps_grow(struct i915_deps *deps, struct dma_fence *fence,
+			  const struct ttm_operation_ctx *ctx)
+{
+	int ret;
+
+	if (deps->num_deps >= deps->fences_size) {
+		unsigned int new_size = 2 * deps->fences_size;
+		struct dma_fence **new_fences;
+
+		new_size = max(new_size, I915_DEPS_MIN_ALLOC_CHUNK);
+		new_fences = kmalloc_array(new_size, sizeof(*new_fences), deps->gfp);
+		if (!new_fences)
+			goto sync;
+
+		memcpy(new_fences, deps->fences,
+		       deps->fences_size * sizeof(*new_fences));
+		swap(new_fences, deps->fences);
+		if (new_fences != &deps->single)
+			kfree(new_fences);
+		deps->fences_size = new_size;
+	}
+	deps->fences[deps->num_deps++] = dma_fence_get(fence);
+	return 0;
+
+sync:
+	if (ctx->no_wait_gpu && !dma_fence_is_signaled(fence)) {
+		ret = -EBUSY;
+		goto unref;
+	}
+
+	ret = dma_fence_wait(fence, ctx->interruptible);
+	if (ret)
+		goto unref;
+
+	ret = fence->error;
+	if (ret)
+		goto unref;
+
+	return 0;
+
+unref:
+	i915_deps_fini(deps);
+	return ret;
+}
+
+/**
+ * i915_deps_sync - Wait for all the fences in the dependency collection
+ * @deps: Pointer to the i915_deps structure the fences of which to wait for.
+ * @ctx: Pointer to a struct ttm_operation_ctx indicating how the waits
+ * should be performed.
+ *
+ * This function waits for fences in the dependency collection. If it
+ * encounters an error during the wait or a fence error, the wait for
+ * further fences is aborted and the error returned.
+ *
+ * Return: Zero if successful, Negative error code on error.
+ */
+int i915_deps_sync(const struct i915_deps *deps, const struct ttm_operation_ctx *ctx)
+{
+	struct dma_fence **fences = deps->fences;
+	unsigned int i;
+	int ret = 0;
+
+	for (i = 0; i < deps->num_deps; ++i, ++fences) {
+		if (ctx->no_wait_gpu && !dma_fence_is_signaled(*fences)) {
+			ret = -EBUSY;
+			break;
+		}
+
+		ret = dma_fence_wait(*fences, ctx->interruptible);
+		if (!ret)
+			ret = (*fences)->error;
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+/**
+ * i915_deps_add_dependency - Add a fence to the dependency collection
+ * @deps: Pointer to the i915_deps structure a fence is to be added to.
+ * @fence: The fence to add.
+ * @ctx: Pointer to a struct ttm_operation_ctx indicating how waits are to
+ * be performed if waiting.
+ *
+ * Adds a fence to the dependency collection, and takes a reference on it.
+ * If the fence context is not zero and there was a later fence from the
+ * same fence context already added, then the fence is not added to the
+ * dependency collection. If the fence context is not zero and there was
+ * an earlier fence already added, then the fence will replace the older
+ * fence from the same context and the reference on the earlier fence will
+ * be dropped.
+ * If there is a failure to allocate memory to accommodate the new fence to
+ * be added, the new fence will instead be waited for and an error may
+ * be returned; depending on the value of @ctx, or if there was a fence
+ * error. If an error was returned, the dependency collection will be
+ * finalized and all fence reference dropped.
+ *
+ * Return: 0 if success. Negative error code on error.
+ */
+int i915_deps_add_dependency(struct i915_deps *deps,
+			     struct dma_fence *fence,
+			     const struct ttm_operation_ctx *ctx)
+{
+	unsigned int i;
+	int ret;
+
+	if (!fence)
+		return 0;
+
+	if (dma_fence_is_signaled(fence)) {
+		ret = fence->error;
+		if (ret)
+			i915_deps_fini(deps);
+		return ret;
+	}
+
+	for (i = 0; i < deps->num_deps; ++i) {
+		struct dma_fence *entry = deps->fences[i];
+
+		if (!entry->context || entry->context != fence->context)
+			continue;
+
+		if (dma_fence_is_later(fence, entry)) {
+			dma_fence_put(entry);
+			deps->fences[i] = dma_fence_get(fence);
+		}
+
+		return 0;
+	}
+
+	return i915_deps_grow(deps, fence, ctx);
+}
+
+/**
+ * i915_deps_add_resv - Add the fences of a reservation object to a dependency
+ * collection.
+ * @deps: Pointer to the i915_deps structure a fence is to be added to.
+ * @resv: The reservation object, then fences of which to add.
+ * @all: Whether to include all shared fences of @resv.
+ * @no_excl: Whether to exclude the exclusive fence.
+ * @ctx: Pointer to a struct ttm_operation_ctx indicating how waits are to
+ * be performed if waiting.
+ *
+ * Calls i915_deps_add_depencency() on the indicated fences of @resv.
+ *
+ * Return: Zero on success. Negative error code on error.
+ */
+int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
+		       bool all, const bool no_excl,
+		       const struct ttm_operation_ctx *ctx)
+{
+	struct dma_resv_iter iter;
+	struct dma_fence *fence;
+
+	dma_resv_assert_held(resv);
+	dma_resv_for_each_fence(&iter, resv, all, fence) {
+		int ret;
+
+		if (no_excl && dma_resv_iter_is_exclusive(&iter))
+			continue;
+
+		ret = i915_deps_add_dependency(deps, fence, ctx);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/i915_deps.h b/drivers/gpu/drm/i915/i915_deps.h
new file mode 100644
index 000000000000..df18e21d8206
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_deps.h
@@ -0,0 +1,46 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _I915_DEPS_H_
+#define _I915_DEPS_H_
+
+#include <linux/types.h>
+
+struct ttm_operation_ctx;
+struct dma_fence;
+struct dma_resv;
+
+/**
+ * struct i915_deps - Collect dependencies into a single dma-fence
+ * @single: Storage for pointer if the collection is a single fence.
+ * @fences: Allocated array of fence pointers if more than a single fence;
+ * otherwise points to the address of @single.
+ * @num_deps: Current number of dependency fences.
+ * @fences_size: Size of the @fences array in number of pointers.
+ * @gfp: Allocation mode.
+ */
+struct i915_deps {
+	struct dma_fence *single;
+	struct dma_fence **fences;
+	unsigned int num_deps;
+	unsigned int fences_size;
+	gfp_t gfp;
+};
+
+void i915_deps_init(struct i915_deps *deps, gfp_t gfp);
+
+void i915_deps_fini(struct i915_deps *deps);
+
+int i915_deps_add_dependency(struct i915_deps *deps,
+			     struct dma_fence *fence,
+			     const struct ttm_operation_ctx *ctx);
+
+int i915_deps_add_resv(struct i915_deps *deps, struct dma_resv *resv,
+		       bool all, const bool no_excl,
+		       const struct ttm_operation_ctx *ctx);
+
+int i915_deps_sync(const struct i915_deps *deps,
+		   const struct ttm_operation_ctx *ctx);
+#endif
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 7d804df27546..76cf5ac91e94 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -32,7 +32,6 @@
 #include <linux/sched/mm.h>
 
 #include "gem/i915_gem_context.h"
-#include "gem/i915_gem_ttm_move.h"
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine.h"
@@ -43,6 +42,7 @@
 #include "gt/intel_rps.h"
 
 #include "i915_active.h"
+#include "i915_deps.h"
 #include "i915_drv.h"
 #include "i915_trace.h"
 #include "intel_pm.h"
-- 
2.31.1

