Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4CF401EC3
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 18:55:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A85D989B62;
	Mon,  6 Sep 2021 16:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E7689B20;
 Mon,  6 Sep 2021 16:55:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="219697342"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="219697342"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 09:55:38 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="579695067"
Received: from mkrygin-mobl1.ccr.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.45])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 09:55:37 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon,  6 Sep 2021 18:55:11 +0200
Message-Id: <20210906165515.450541-4-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
References: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915 Implement LMEM backup and
 restore for suspend / resume
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just evict unpinned objects to system. For pinned LMEM objects,
make a backup system object and blit the contents to that.

Backup is performed in three steps,
1: Opportunistically evict evictable objects using the gpu blitter.
2: After gt idle, evict evictable objects using the gpu blitter. This will
be modified in an upcoming patch to backup pinned objects that are not used
by the blitter itself.
3: Backup remaining pinned objects using memcpy.

Also move uC suspend to after 2) to make sure we have a functional GuC
during 2) if using GuC submission.

v2:
- Major refactor to make sure gem_exec_suspend@hang-SX subtests work, and
  suspend / resume works with a slightly modified GuC submission enabling
  patch series.

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_pm.c        |  92 +++++++-
 drivers/gpu/drm/i915/gem/i915_gem_pm.h        |   3 +-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  29 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h       |  10 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c    | 205 ++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h    |  24 ++
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +-
 drivers/gpu/drm/i915/i915_drv.c               |  10 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +-
 11 files changed, 364 insertions(+), 17 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c36c8a4f0716..3379a0a6c91e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -155,6 +155,7 @@ gem-y += \
 	gem/i915_gem_throttle.o \
 	gem/i915_gem_tiling.o \
 	gem/i915_gem_ttm.o \
+	gem/i915_gem_ttm_pm.o \
 	gem/i915_gem_userptr.o \
 	gem/i915_gem_wait.o \
 	gem/i915_gemfs.o
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 2471f36aaff3..734cc8e16481 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -534,6 +534,7 @@ struct drm_i915_gem_object {
 	struct {
 		struct sg_table *cached_io_st;
 		struct i915_gem_object_page_iter get_io_page;
+		struct drm_i915_gem_object *backup;
 		bool created:1;
 	} ttm;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 8b9d7d14c4bd..9746c255ddcc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -5,6 +5,7 @@
  */
 
 #include "gem/i915_gem_pm.h"
+#include "gem/i915_gem_ttm_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_gt_requests.h"
@@ -39,7 +40,79 @@ void i915_gem_suspend(struct drm_i915_private *i915)
 	i915_gem_drain_freed_objects(i915);
 }
 
-void i915_gem_suspend_late(struct drm_i915_private *i915)
+static int lmem_restore(struct drm_i915_private *i915, bool allow_gpu)
+{
+	struct intel_memory_region *mr;
+	int ret = 0, id;
+
+	for_each_memory_region(mr, i915, id) {
+		if (mr->type == INTEL_MEMORY_LOCAL) {
+			ret = i915_ttm_restore_region(mr, allow_gpu);
+			if (ret)
+				break;
+		}
+	}
+
+	return ret;
+}
+
+static int lmem_suspend(struct drm_i915_private *i915, bool allow_gpu,
+			bool backup_pinned)
+{
+	struct intel_memory_region *mr;
+	int ret = 0, id;
+
+	for_each_memory_region(mr, i915, id) {
+		if (mr->type == INTEL_MEMORY_LOCAL) {
+			ret = i915_ttm_backup_region(mr, allow_gpu, backup_pinned);
+			if (ret)
+				break;
+		}
+	}
+
+	return ret;
+}
+
+static void lmem_recover(struct drm_i915_private *i915)
+{
+	struct intel_memory_region *mr;
+	int id;
+
+	for_each_memory_region(mr, i915, id)
+		if (mr->type == INTEL_MEMORY_LOCAL)
+			i915_ttm_recover_region(mr);
+}
+
+int i915_gem_backup_suspend(struct drm_i915_private *i915)
+{
+	int ret;
+
+	/* Opportunistically try to evict unpinned objects */
+	ret = lmem_suspend(i915, true, false);
+	if (ret)
+		goto out_recover;
+
+	i915_gem_suspend(i915);
+
+	/*
+	 * More objects may have become unpinned as requests were
+	 * retired. Now try to evict again. The gt may be wedged here
+	 * in which case we automatically fall back to memcpy.
+	 */
+
+	ret = lmem_suspend(i915, true, false);
+	if (ret)
+		goto out_recover;
+
+	return 0;
+
+out_recover:
+	lmem_recover(i915);
+
+	return ret;
+}
+
+int i915_gem_suspend_late(struct drm_i915_private *i915)
 {
 	struct drm_i915_gem_object *obj;
 	struct list_head *phases[] = {
@@ -49,6 +122,13 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 	}, **phase;
 	unsigned long flags;
 	bool flush = false;
+	int ret;
+
+	ret = lmem_suspend(i915, false, true);
+	if (ret) {
+		lmem_recover(i915);
+		return ret;
+	}
 
 	/*
 	 * Neither the BIOS, ourselves or any other kernel
@@ -83,6 +163,8 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 	if (flush)
 		wbinvd_on_all_cpus();
+
+	return 0;
 }
 
 int i915_gem_freeze(struct drm_i915_private *i915)
@@ -128,12 +210,20 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 
 void i915_gem_resume(struct drm_i915_private *i915)
 {
+	int ret;
+
 	GEM_TRACE("%s\n", dev_name(i915->drm.dev));
 
+	ret = lmem_restore(i915, false);
+	GEM_WARN_ON(ret);
+
 	/*
 	 * As we didn't flush the kernel context before suspend, we cannot
 	 * guarantee that the context image is complete. So let's just reset
 	 * it and start again.
 	 */
 	intel_gt_resume(&i915->gt);
+
+	ret = lmem_restore(i915, true);
+	GEM_WARN_ON(ret);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.h b/drivers/gpu/drm/i915/gem/i915_gem_pm.h
index c9a66630e92e..1b37d2bb6de8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.h
@@ -17,7 +17,8 @@ void i915_gem_resume(struct drm_i915_private *i915);
 void i915_gem_idle_work_handler(struct work_struct *work);
 
 void i915_gem_suspend(struct drm_i915_private *i915);
-void i915_gem_suspend_late(struct drm_i915_private *i915);
+int i915_gem_suspend_late(struct drm_i915_private *i915);
+int i915_gem_backup_suspend(struct drm_i915_private *i915);
 
 int i915_gem_freeze(struct drm_i915_private *i915);
 int i915_gem_freeze_late(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index df2dcbad1eb9..eac52732c0ac 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -10,18 +10,16 @@
 #include "intel_memory_region.h"
 #include "intel_region_ttm.h"
 
+#include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_ttm.h"
-#include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_ttm_pm.h"
 
-#include "gt/intel_migrate.h"
-#include "gt/intel_engine_pm.h"
 
-#define I915_PL_LMEM0 TTM_PL_PRIV
-#define I915_PL_SYSTEM TTM_PL_SYSTEM
-#define I915_PL_STOLEN TTM_PL_VRAM
-#define I915_PL_GGTT TTM_PL_TT
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_migrate.h"
 
 #define I915_TTM_PRIO_PURGE     0
 #define I915_TTM_PRIO_NO_PAGES  1
@@ -64,6 +62,20 @@ static struct ttm_placement i915_sys_placement = {
 	.busy_placement = &sys_placement_flags,
 };
 
+/**
+ * i915_ttm_sys_placement - Return the struct ttm_placement to be
+ * used for an object in system memory.
+ *
+ * Rather than making the struct extern, use this
+ * function.
+ *
+ * Return: A pointer to a static variable for sys placement.
+ */
+struct ttm_placement *i915_ttm_sys_placement(void)
+{
+	return &i915_sys_placement;
+}
+
 static int i915_ttm_err_to_gem(int err)
 {
 	/* Fastpath */
@@ -446,7 +458,7 @@ static int i915_ttm_accel_move(struct ttm_buffer_object *bo,
 	enum i915_cache_level src_level, dst_level;
 	int ret;
 
-	if (!i915->gt.migrate.context)
+	if (!i915->gt.migrate.context || intel_gt_is_wedged(&i915->gt))
 		return -EINVAL;
 
 	dst_level = i915_ttm_cache_level(i915, dst_mem, dst_ttm);
@@ -890,6 +902,7 @@ void i915_ttm_bo_destroy(struct ttm_buffer_object *bo)
 {
 	struct drm_i915_gem_object *obj = i915_ttm_to_gem(bo);
 
+	i915_ttm_backup_free(obj);
 	i915_gem_object_release_memory_region(obj);
 	mutex_destroy(&obj->ttm.get_io_page.lock);
 	if (obj->ttm.created)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index 34ac78d47b0d..0b7291dd897c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -50,4 +50,14 @@ int __i915_gem_ttm_object_init(struct intel_memory_region *mem,
 int i915_gem_obj_copy_ttm(struct drm_i915_gem_object *dst,
 			  struct drm_i915_gem_object *src,
 			  bool allow_accel, bool intr);
+
+/* Internal I915 TTM declarations and definitions below. */
+
+#define I915_PL_LMEM0 TTM_PL_PRIV
+#define I915_PL_SYSTEM TTM_PL_SYSTEM
+#define I915_PL_STOLEN TTM_PL_VRAM
+#define I915_PL_GGTT TTM_PL_TT
+
+struct ttm_placement *i915_ttm_sys_placement(void);
+
 #endif
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
new file mode 100644
index 000000000000..3884bf45dab8
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
@@ -0,0 +1,205 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include <drm/ttm/ttm_placement.h>
+#include <drm/ttm/ttm_tt.h>
+
+#include "i915_drv.h"
+#include "intel_memory_region.h"
+#include "intel_region_ttm.h"
+
+#include "gem/i915_gem_region.h"
+#include "gem/i915_gem_ttm.h"
+#include "gem/i915_gem_ttm_pm.h"
+
+/**
+ * i915_ttm_backup_free - Free any backup attached to this object
+ * @obj: The object whose backup is to be freed.
+ */
+void i915_ttm_backup_free(struct drm_i915_gem_object *obj)
+{
+	if (obj->ttm.backup) {
+		i915_gem_object_put(obj->ttm.backup);
+		obj->ttm.backup = NULL;
+	}
+}
+
+/**
+ * struct i915_gem_ttm_pm_apply - Apply-to-region subclass for restore
+ * @base: The i915_gem_apply_to_region we derive from.
+ * @allow_gpu: Whether using the gpu blitter is allowed.
+ * @backup_pinned: On backup, backup also pinned objects.
+ */
+struct i915_gem_ttm_pm_apply {
+	struct i915_gem_apply_to_region base;
+	bool allow_gpu : 1;
+	bool backup_pinned : 1;
+};
+
+static int i915_ttm_backup(struct i915_gem_apply_to_region *apply,
+			   struct drm_i915_gem_object *obj)
+{
+	struct i915_gem_ttm_pm_apply *pm_apply =
+		container_of(apply, typeof(*pm_apply), base);
+	struct ttm_buffer_object *bo = i915_gem_to_ttm(obj);
+	struct ttm_buffer_object *backup_bo;
+	struct drm_i915_private *i915 =
+		container_of(bo->bdev, typeof(*i915), bdev);
+	struct intel_memory_region *sys_region;
+	struct drm_i915_gem_object *backup;
+	struct ttm_operation_ctx ctx = {};
+	int err = 0;
+
+	if (bo->resource->mem_type == I915_PL_SYSTEM || obj->ttm.backup)
+		return 0;
+
+	if (pm_apply->allow_gpu && i915_gem_object_evictable(obj))
+		return ttm_bo_validate(bo, i915_ttm_sys_placement(), &ctx);
+
+	if (!pm_apply->backup_pinned)
+		return 0;
+
+	sys_region = i915->mm.regions[INTEL_REGION_SMEM];
+	backup = i915_gem_object_create_region(sys_region,
+					       obj->base.size,
+					       0, 0);
+	if (IS_ERR(backup))
+		return PTR_ERR(backup);
+
+	err = i915_gem_object_lock(backup, apply->ww);
+	if (err)
+		goto out_no_lock;
+
+	backup_bo = i915_gem_to_ttm(backup);
+	err = ttm_tt_populate(backup_bo->bdev, backup_bo->ttm, &ctx);
+	if (err)
+		goto out_no_populate;
+
+	err = i915_gem_obj_copy_ttm(backup, obj, pm_apply->allow_gpu, false);
+	GEM_WARN_ON(err);
+
+	obj->ttm.backup = backup;
+	return 0;
+
+out_no_populate:
+	i915_gem_ww_unlock_single(backup);
+out_no_lock:
+	i915_gem_object_put(backup);
+
+	return err;
+}
+
+static int i915_ttm_recover(struct i915_gem_apply_to_region *apply,
+			    struct drm_i915_gem_object *obj)
+{
+	i915_ttm_backup_free(obj);
+	return 0;
+}
+
+/**
+ * i915_ttm_recover_region - Free the backup of all objects of a region
+ * @mr: The memory region
+ *
+ * Checks all objects of a region if there is backup attached and if so
+ * frees that backup. Typically this is called to recover after a partially
+ * performed backup.
+ */
+void i915_ttm_recover_region(struct intel_memory_region *mr)
+{
+	static const struct i915_gem_apply_to_region_ops recover_ops = {
+		.process_obj = i915_ttm_recover,
+	};
+	struct i915_gem_apply_to_region apply = {.ops = &recover_ops};
+	int ret;
+
+	ret = i915_gem_process_region(mr, &apply);
+	GEM_WARN_ON(ret);
+}
+
+/**
+ * i915_ttm_backup_region - Back up all objects of a region to smem.
+ * @mr: The memory region
+ * @allow_gpu: Whether to allow the gpu blitter for this backup.
+ * @backup_pinned: Backup also pinned objects.
+ *
+ * Loops over all objects of a region and either evicts them if they are
+ * evictable or backs them up using a backup object if they are pinned.
+ *
+ * Return: Zero on success. Negative error code on error.
+ */
+int i915_ttm_backup_region(struct intel_memory_region *mr, bool allow_gpu,
+			   bool backup_pinned)
+{
+	static const struct i915_gem_apply_to_region_ops backup_ops = {
+		.process_obj = i915_ttm_backup,
+	};
+	struct i915_gem_ttm_pm_apply pm_apply = {
+		.base = {.ops = &backup_ops},
+		.allow_gpu = allow_gpu,
+		.backup_pinned = backup_pinned,
+	};
+
+	return i915_gem_process_region(mr, &pm_apply.base);
+}
+
+static int i915_ttm_restore(struct i915_gem_apply_to_region *apply,
+			    struct drm_i915_gem_object *obj)
+{
+	struct i915_gem_ttm_pm_apply *pm_apply =
+		container_of(apply, typeof(*pm_apply), base);
+	struct drm_i915_gem_object *backup = obj->ttm.backup;
+	struct ttm_buffer_object *backup_bo = i915_gem_to_ttm(backup);
+	struct ttm_operation_ctx ctx = {};
+	int err;
+
+	if (!obj->ttm.backup)
+		return 0;
+
+	if (!pm_apply->allow_gpu && (obj->flags & I915_BO_ALLOC_USER))
+		return 0;
+
+	err = i915_gem_object_lock(backup, apply->ww);
+	if (err)
+		return err;
+
+	/* Content may have been swapped. */
+	err = ttm_tt_populate(backup_bo->bdev, backup_bo->ttm, &ctx);
+	if (!err) {
+		err = i915_gem_obj_copy_ttm(obj, backup, pm_apply->allow_gpu,
+					    false);
+		GEM_WARN_ON(err);
+
+		obj->ttm.backup = NULL;
+		err = 0;
+	}
+
+	i915_gem_ww_unlock_single(backup);
+	i915_gem_object_put(backup);
+
+	return err;
+}
+
+/**
+ * i915_ttm_restore_region - Back up all objects of a region to smem.
+ * @mr: The memory region
+ * @allow_gpu: Whether to allow the gpu blitter to recover.
+ *
+ * Loops over all objects of a region and either evicts them if they are
+ * evictable or backs them up using a backup object if they are pinned.
+ *
+ * Return: Zero on success. Negative error code on error.
+ */
+int i915_ttm_restore_region(struct intel_memory_region *mr, bool allow_gpu)
+{
+	static const struct i915_gem_apply_to_region_ops restore_ops = {
+		.process_obj = i915_ttm_restore,
+	};
+	struct i915_gem_ttm_pm_apply pm_apply = {
+		.base = {.ops = &restore_ops},
+		.allow_gpu = allow_gpu,
+	};
+
+	return i915_gem_process_region(mr, &pm_apply.base);
+}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h
new file mode 100644
index 000000000000..4da27c21f3f4
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _I915_GEM_TTM_PM_H_
+#define _I915_GEM_TTM_PM_H_
+
+#include <linux/types.h>
+
+struct intel_memory_region;
+struct drm_i915_gem_object;
+
+int i915_ttm_backup_region(struct intel_memory_region *mr, bool allow_gpu,
+			   bool backup_pinned);
+
+void i915_ttm_recover_region(struct intel_memory_region *mr);
+
+int i915_ttm_restore_region(struct intel_memory_region *mr, bool allow_gpu);
+
+/* Internal I915 TTM functions below. */
+void i915_ttm_backup_free(struct drm_i915_gem_object *obj);
+
+#endif
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index dea8e2479897..c8e439d3b0e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -295,8 +295,6 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
 {
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
-
-	intel_uc_suspend(&gt->uc);
 }
 
 static suspend_state_t pm_suspend_target(void)
@@ -320,6 +318,8 @@ void intel_gt_suspend_late(struct intel_gt *gt)
 
 	GEM_BUG_ON(gt->awake);
 
+	intel_uc_suspend(&gt->uc);
+
 	/*
 	 * On disabling the device, we want to turn off HW access to memory
 	 * that we no longer own.
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 59fb4c710c8c..ffb54ea26dcc 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1096,9 +1096,7 @@ static int i915_drm_prepare(struct drm_device *dev)
 	 * split out that work and pull it forward so that after point,
 	 * the GPU is not woken again.
 	 */
-	i915_gem_suspend(i915);
-
-	return 0;
+	return i915_gem_backup_suspend(i915);
 }
 
 static int i915_drm_suspend(struct drm_device *dev)
@@ -1167,7 +1165,11 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 
 	disable_rpm_wakeref_asserts(rpm);
 
-	i915_gem_suspend_late(dev_priv);
+	ret = i915_gem_suspend_late(dev_priv);
+	if (ret) {
+		enable_rpm_wakeref_asserts(rpm);
+		return ret;
+	}
 
 	intel_uncore_suspend(&dev_priv->uncore);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index be2392bbcecc..7d448591a445 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1856,7 +1856,7 @@ void i915_gem_driver_unregister(struct drm_i915_private *i915);
 void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
 void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 void i915_gem_suspend(struct drm_i915_private *dev_priv);
-void i915_gem_suspend_late(struct drm_i915_private *dev_priv);
+int i915_gem_suspend_late(struct drm_i915_private *dev_priv);
 void i915_gem_resume(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
-- 
2.31.1

