Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2334C6CB5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 13:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18B210E43D;
	Mon, 28 Feb 2022 12:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133D610E3D6;
 Mon, 28 Feb 2022 12:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646051804; x=1677587804;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=veBf2nwqXxnCHRBd6awnOqfgC5iQHglnFuJQI01TkYI=;
 b=CwrZBtaQcSQimhXq4kjyh6f82eCbAHd+AwHjcRpoZ3TwYRvdRk5ifWYW
 qA/s+37B7Lwkg/ktNj2Ad2uoKZl0FkjOsMild9Xb5ayleKL7OWRPpT58I
 z7kln3pVaBIbXiilWDvepY6DU0FAhaJH7IFeE7xhM4m2YKubqV9bbwyaF
 YcwdqQfEEwpyITs3PZgTU3CpSF4JUdWlnATqQ9ISYp6LiI+XzICDFYsnT
 LP5VDitFYrmSaTYQQvXfkdkaJSBLiF9Zeu8SaGeVTJBGYD744ZzcShQ6c
 Kg5f9CWd2tU42eMHiKYvP0Kxh57ijpTvEfAqrhBsm4QMyYTMnBAxyqthr A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="233490738"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="233490738"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 04:36:43 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="550218625"
Received: from acroni2x-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.26.243])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 04:36:42 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Feb 2022 12:36:07 +0000
Message-Id: <20220228123607.580432-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220228123607.580432-1-matthew.auld@intel.com>
References: <20220228123607.580432-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 4/4] drm/i915/selftests: exercise mmap migration
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
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Exercise each of the migration scenarios, verifying that the final
placement and buffer contents match our expectations.

v2(Thomas): Replace for_i915_gem_ww() block with simpler object_lock()

v3:
- For testing purposes allow forcing the io_size such that we can
  exercise the allocation + migration path on devices that don't have the
  small BAR limit.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 329 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |  10 +
 drivers/gpu/drm/i915/i915_ttm_buddy_manager.h |   5 +
 3 files changed, 344 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 8ae1a1530bd8..c1b1147479c8 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -8,10 +8,13 @@
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_region.h"
+#include "gem/i915_gem_ttm.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_migrate.h"
+#include "i915_ttm_buddy_manager.h"
 
 #include "huge_gem_object.h"
 #include "i915_selftest.h"
@@ -1001,6 +1004,331 @@ static int igt_mmap(void *arg)
 	return 0;
 }
 
+static void igt_close_objects(struct drm_i915_private *i915,
+			      struct list_head *objects)
+{
+	struct drm_i915_gem_object *obj, *on;
+
+	list_for_each_entry_safe(obj, on, objects, st_link) {
+		i915_gem_object_lock(obj, NULL);
+		if (i915_gem_object_has_pinned_pages(obj))
+			i915_gem_object_unpin_pages(obj);
+		/* No polluting the memory region between tests */
+		__i915_gem_object_put_pages(obj);
+		i915_gem_object_unlock(obj);
+		list_del(&obj->st_link);
+		i915_gem_object_put(obj);
+	}
+
+	cond_resched();
+
+	i915_gem_drain_freed_objects(i915);
+}
+
+static void igt_make_evictable(struct list_head *objects)
+{
+	struct drm_i915_gem_object *obj;
+
+	list_for_each_entry(obj, objects, st_link) {
+		i915_gem_object_lock(obj, NULL);
+		if (i915_gem_object_has_pinned_pages(obj))
+			i915_gem_object_unpin_pages(obj);
+		i915_gem_object_unlock(obj);
+	}
+
+	cond_resched();
+}
+
+static int igt_fill_mappable(struct intel_memory_region *mr,
+			     struct list_head *objects)
+{
+	u64 size, total;
+	int err;
+
+	total = 0;
+	size = mr->io_size;
+	do {
+		struct drm_i915_gem_object *obj;
+
+		obj = i915_gem_object_create_region(mr, size, 0, 0);
+		if (IS_ERR(obj)) {
+			err = PTR_ERR(obj);
+			goto err_close;
+		}
+
+		list_add(&obj->st_link, objects);
+
+		err = i915_gem_object_pin_pages_unlocked(obj);
+		if (err) {
+			if (err != -ENXIO && err != -ENOMEM)
+				goto err_close;
+
+			if (size == mr->min_page_size) {
+				err = 0;
+				break;
+			}
+
+			size >>= 1;
+			continue;
+		}
+
+		total += obj->base.size;
+	} while (1);
+
+	pr_info("%s filled=%lluMiB\n", __func__, total >> 20);
+	return 0;
+
+err_close:
+	igt_close_objects(mr->i915, objects);
+	return err;
+}
+
+static int ___igt_mmap_migrate(struct drm_i915_private *i915,
+			       struct drm_i915_gem_object *obj,
+			       unsigned long addr,
+			       bool unfaultable)
+{
+	struct vm_area_struct *area;
+	int err = 0, i;
+
+	pr_info("igt_mmap(%s, %d) @ %lx\n",
+		obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);
+
+	mmap_read_lock(current->mm);
+	area = vma_lookup(current->mm, addr);
+	mmap_read_unlock(current->mm);
+	if (!area) {
+		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
+		       obj->mm.region->name);
+		err = -EINVAL;
+		goto out_unmap;
+	}
+
+	for (i = 0; i < obj->base.size / sizeof(u32); i++) {
+		u32 __user *ux = u64_to_user_ptr((u64)(addr + i * sizeof(*ux)));
+		u32 x;
+
+		if (get_user(x, ux)) {
+			err = -EFAULT;
+			if (!unfaultable) {
+				pr_err("%s: Unable to read from mmap, offset:%zd\n",
+				       obj->mm.region->name, i * sizeof(x));
+				goto out_unmap;
+			}
+
+			continue;
+		}
+
+		if (unfaultable) {
+			pr_err("%s: Faulted unmappable memory\n",
+			       obj->mm.region->name);
+			err = -EINVAL;
+			goto out_unmap;
+		}
+
+		if (x != expand32(POISON_INUSE)) {
+			pr_err("%s: Read incorrect value from mmap, offset:%zd, found:%x, expected:%x\n",
+			       obj->mm.region->name,
+			       i * sizeof(x), x, expand32(POISON_INUSE));
+			err = -EINVAL;
+			goto out_unmap;
+		}
+
+		x = expand32(POISON_FREE);
+		if (put_user(x, ux)) {
+			pr_err("%s: Unable to write to mmap, offset:%zd\n",
+			       obj->mm.region->name, i * sizeof(x));
+			err = -EFAULT;
+			goto out_unmap;
+		}
+	}
+
+	if (unfaultable) {
+		if (err == -EFAULT)
+			err = 0;
+	} else {
+		obj->flags &= ~I915_BO_ALLOC_GPU_ONLY;
+		err = wc_check(obj);
+	}
+out_unmap:
+	vm_munmap(addr, obj->base.size);
+	return err;
+}
+
+#define IGT_MMAP_MIGRATE_TOPDOWN     (1 << 0)
+#define IGT_MMAP_MIGRATE_FILL        (1 << 1)
+#define IGT_MMAP_MIGRATE_EVICTABLE   (1 << 2)
+#define IGT_MMAP_MIGRATE_UNFAULTABLE (1 << 3)
+static int __igt_mmap_migrate(struct intel_memory_region **placements,
+			      int n_placements,
+			      struct intel_memory_region *expected_mr,
+			      unsigned int flags)
+{
+	struct drm_i915_private *i915 = placements[0]->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_request *rq = NULL;
+	unsigned long addr;
+	LIST_HEAD(objects);
+	u64 offset;
+	int err;
+
+	obj = __i915_gem_object_create_user(i915, PAGE_SIZE,
+					    placements,
+					    n_placements);
+	if (IS_ERR(obj))
+		return PTR_ERR(obj);
+
+	if (flags & IGT_MMAP_MIGRATE_TOPDOWN)
+		obj->flags |= I915_BO_ALLOC_GPU_ONLY;
+
+	err = __assign_mmap_offset(obj, I915_MMAP_TYPE_FIXED, &offset, NULL);
+	if (err)
+		goto out_put;
+
+	/*
+	 * This will eventually create a GEM context, due to opening dummy drm
+	 * file, which needs a tiny amount of mappable device memory for the top
+	 * level paging structures(and perhaps scratch), so make sure we
+	 * allocate early, to avoid tears.
+	 */
+	addr = igt_mmap_offset(i915, offset, obj->base.size,
+			       PROT_WRITE, MAP_SHARED);
+	if (IS_ERR_VALUE(addr)) {
+		err = addr;
+		goto out_put;
+	}
+
+	if (flags & IGT_MMAP_MIGRATE_FILL) {
+		err = igt_fill_mappable(placements[0], &objects);
+		if (err)
+			goto out_put;
+	}
+
+	err = i915_gem_object_lock(obj, NULL);
+	if (err)
+		goto out_put;
+
+	err = i915_gem_object_pin_pages(obj);
+	if (err) {
+		i915_gem_object_unlock(obj);
+		goto out_put;
+	}
+
+	err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
+					  obj->mm.pages->sgl, obj->cache_level,
+					  i915_gem_object_is_lmem(obj),
+					  expand32(POISON_INUSE), &rq);
+	i915_gem_object_unpin_pages(obj);
+	if (rq) {
+		dma_resv_add_excl_fence(obj->base.resv, &rq->fence);
+		i915_gem_object_set_moving_fence(obj, &rq->fence);
+		i915_request_put(rq);
+	}
+	i915_gem_object_unlock(obj);
+	if (err)
+		goto out_put;
+
+	if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
+		igt_make_evictable(&objects);
+
+	err = ___igt_mmap_migrate(i915, obj, addr,
+				  flags & IGT_MMAP_MIGRATE_UNFAULTABLE);
+	if (!err && obj->mm.region != expected_mr) {
+		pr_err("%s region mismatch %s\n", __func__, expected_mr->name);
+		err = -EINVAL;
+	}
+
+out_put:
+	i915_gem_object_put(obj);
+	igt_close_objects(i915, &objects);
+	return err;
+}
+
+static int igt_mmap_migrate(void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+	struct intel_memory_region *system = i915->mm.regions[INTEL_REGION_SMEM];
+	struct intel_memory_region *mr;
+	enum intel_region_id id;
+
+	for_each_memory_region(mr, i915, id) {
+		struct intel_memory_region *mixed[] = { mr, system };
+		struct intel_memory_region *single[] = { mr };
+		struct ttm_resource_manager *man = mr->region_private;
+		resource_size_t saved_io_size;
+		int err;
+
+		if (mr->private)
+			continue;
+
+		if (!mr->io_size)
+			continue;
+
+		/*
+		 * For testing purposes let's force small BAR, if not already
+		 * present.
+		 */
+		saved_io_size = mr->io_size;
+		if (mr->io_size == mr->total) {
+			resource_size_t io_size = mr->io_size;
+
+			io_size = rounddown_pow_of_two(io_size >> 1);
+			if (io_size < PAGE_SIZE)
+				continue;
+
+			mr->io_size = io_size;
+			i915_ttm_buddy_man_force_visible_size(man,
+							      io_size >> PAGE_SHIFT);
+		}
+
+		/*
+		 * Allocate in the mappable portion, should be no suprises here.
+		 */
+		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), mr, 0);
+		if (err)
+			goto out_io_size;
+
+		/*
+		 * Allocate in the non-mappable portion, but force migrating to
+		 * the mappable portion on fault (LMEM -> LMEM)
+		 */
+		err = __igt_mmap_migrate(single, ARRAY_SIZE(single), mr,
+					 IGT_MMAP_MIGRATE_TOPDOWN |
+					 IGT_MMAP_MIGRATE_FILL |
+					 IGT_MMAP_MIGRATE_EVICTABLE);
+		if (err)
+			goto out_io_size;
+
+		/*
+		 * Allocate in the non-mappable portion, but force spilling into
+		 * system memory on fault (LMEM -> SMEM)
+		 */
+		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), system,
+					 IGT_MMAP_MIGRATE_TOPDOWN |
+					 IGT_MMAP_MIGRATE_FILL);
+		if (err)
+			goto out_io_size;
+
+		/*
+		 * Allocate in the non-mappable portion, but since the mappable
+		 * portion is already full, and we can't spill to system memory,
+		 * then we should expect the fault to fail.
+		 */
+		err = __igt_mmap_migrate(single, ARRAY_SIZE(single), mr,
+					 IGT_MMAP_MIGRATE_TOPDOWN |
+					 IGT_MMAP_MIGRATE_FILL |
+					 IGT_MMAP_MIGRATE_UNFAULTABLE);
+out_io_size:
+		mr->io_size = saved_io_size;
+		i915_ttm_buddy_man_force_visible_size(man,
+						      mr->io_size >> PAGE_SHIFT);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
 static const char *repr_mmap_type(enum i915_mmap_type type)
 {
 	switch (type) {
@@ -1426,6 +1754,7 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
 		SUBTEST(igt_mmap),
+		SUBTEST(igt_mmap_migrate),
 		SUBTEST(igt_mmap_access),
 		SUBTEST(igt_mmap_revoke),
 		SUBTEST(igt_mmap_gpu),
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
index 92d49a3c378c..129f668f21ff 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
@@ -362,3 +362,13 @@ u64 i915_ttm_buddy_man_visible_size(struct ttm_resource_manager *man)
 
 	return bman->visible_size;
 }
+
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+void i915_ttm_buddy_man_force_visible_size(struct ttm_resource_manager *man,
+					   u64 size)
+{
+	struct i915_ttm_buddy_manager *bman = to_buddy_manager(man);
+
+	bman->visible_size = size;
+}
+#endif
diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
index 35fe03a6a78c..52d9586d242c 100644
--- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
+++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.h
@@ -61,4 +61,9 @@ int i915_ttm_buddy_man_reserve(struct ttm_resource_manager *man,
 
 u64 i915_ttm_buddy_man_visible_size(struct ttm_resource_manager *man);
 
+#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
+void i915_ttm_buddy_man_force_visible_size(struct ttm_resource_manager *man,
+					   u64 size);
+#endif
+
 #endif
-- 
2.34.1

