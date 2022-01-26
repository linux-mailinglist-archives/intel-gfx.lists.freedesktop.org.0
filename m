Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FFF49CE03
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 16:22:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3BE10E905;
	Wed, 26 Jan 2022 15:22:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC82410E920;
 Wed, 26 Jan 2022 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643210543; x=1674746543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QbOcDkBVmbP5louhT6shUONrcFXvSL1vNsizIZ2EE+Q=;
 b=dq8nx4m6NuuUGqQJXOS7lFpchng3aeIEjuSZlj95CLB1MvhBswIiB9Md
 f4i9g4r7sUXk2Sk6LLtUMZapAecMyAOAN40jWDqer5zpy6cQhvDysB1JS
 meTo+pH/q4114I0kqo+c5+iDBaH66i2I/SmXYYxTSW7wg8oeqylkdUpNO
 83vqFSnLMZQPXzv9DfcILjvzs3L79lEyHGSGLsle7MOLC+S/iESHgOpRT
 tgzGseruFZjbwvVwnDvUR9J079DyKWtQAnBKneFAFwrDx0G60LrsHfnpm
 Z39aH3wV92AWY+TrudEye8XtPBJBteSh+dey9vV2zhbWXJpoE1rTHinuy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309885259"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="309885259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 07:22:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="674386307"
Received: from jamesstx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.247.182])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 07:22:21 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 15:21:49 +0000
Message-Id: <20220126152155.3070602-15-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126152155.3070602-1-matthew.auld@intel.com>
References: <20220126152155.3070602-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/20] drm/i915/selftests: exercise mmap
 migration
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

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 306 ++++++++++++++++++
 1 file changed, 306 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index ba29767348be..d2c1071df98a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -10,6 +10,7 @@
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gt/intel_migrate.h"
 #include "gem/i915_gem_region.h"
 #include "huge_gem_object.h"
 #include "i915_selftest.h"
@@ -999,6 +1000,310 @@ static int igt_mmap(void *arg)
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
+		 obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);
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
+		obj->flags &= ~I915_BO_ALLOC_TOPDOWN;
+		err = wc_check(obj);
+	}
+out_unmap:
+	vm_munmap(addr, obj->base.size);
+	return err;
+}
+
+#define IGT_MMAP_MIGRATE_TOPDOWN     (1<<0)
+#define IGT_MMAP_MIGRATE_FILL        (1<<1)
+#define IGT_MMAP_MIGRATE_EVICTABLE   (1<<2)
+#define IGT_MMAP_MIGRATE_UNFAULTABLE (1<<3)
+static int __igt_mmap_migrate(struct intel_memory_region **placements,
+			      int n_placements,
+			      struct intel_memory_region *expected_mr,
+			      unsigned int flags)
+{
+	struct drm_i915_private *i915 = placements[0]->i915;
+	struct drm_i915_gem_object *obj;
+	struct i915_gem_ww_ctx ww;
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
+		obj->flags |= I915_BO_ALLOC_TOPDOWN;
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
+	for_i915_gem_ww(&ww, err, true) {
+		err = i915_gem_object_lock(obj, &ww);
+		if (err)
+			continue;
+
+		err = i915_gem_object_pin_pages(obj);
+		if (err)
+			continue;
+
+		err = intel_context_migrate_clear(to_gt(i915)->migrate.context, NULL,
+						  obj->mm.pages->sgl, obj->cache_level,
+						  i915_gem_object_is_lmem(obj),
+						  expand32(POISON_INUSE), &rq);
+		i915_gem_object_unpin_pages(obj);
+		if (rq) {
+			dma_resv_add_excl_fence(obj->base.resv, &rq->fence);
+			i915_gem_object_set_moving_fence(obj, &rq->fence);
+			i915_request_put(rq);
+		}
+		if (err)
+			continue;
+	}
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
+		int err;
+
+		if (mr->private)
+			continue;
+
+		if (!mr->io_size || mr->io_size == mr->total)
+			continue;
+
+		/*
+		 * Allocate in the mappable portion, should be no suprises here.
+		 */
+		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), mr, 0);
+		if (err)
+			return err;
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
+			return err;
+
+		/*
+		 * Allocate in the non-mappable portion, but force spilling into
+		 * system memory on fault (LMEM -> SMEM)
+		 */
+		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), system,
+					 IGT_MMAP_MIGRATE_TOPDOWN |
+					 IGT_MMAP_MIGRATE_FILL);
+		if (err)
+			return err;
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
@@ -1424,6 +1729,7 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
 		SUBTEST(igt_mmap),
+		SUBTEST(igt_mmap_migrate),
 		SUBTEST(igt_mmap_access),
 		SUBTEST(igt_mmap_revoke),
 		SUBTEST(igt_mmap_gpu),
-- 
2.34.1

