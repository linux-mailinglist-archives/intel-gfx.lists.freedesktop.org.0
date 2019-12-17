Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84111122AC5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 12:58:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B704A6E9B3;
	Tue, 17 Dec 2019 11:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E30E6E9B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 11:58:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 03:58:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,325,1571727600"; d="scan'208";a="247438921"
Received: from klipka-mobl.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.229])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 03:58:03 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 13:57:50 +0200
Message-Id: <20191217115750.11938-2-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
References: <20191217115750.11938-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Add selftest for memory
 region PF handling
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of testing individually our new fault handlers, iterate over all
memory regions and test all from one interface.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 226 ++++++++++++------
 1 file changed, 153 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 591435c5f368..e98ec15e7c51 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -9,6 +9,8 @@
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_region.h"
 #include "huge_gem_object.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
@@ -725,44 +727,94 @@ static int igt_mmap_offset_exhaustion(void *arg)
 	goto out;
 }
 
+typedef int (*obj_set_fn_t)(struct drm_i915_gem_object *obj, bool init);
+
+static int gtt_obj_set(struct drm_i915_gem_object *obj, bool init)
+{
+	u32 __iomem *map;
+	struct i915_vma *vma;
+	int err = 0;
+
+	i915_gem_object_lock(obj);
+	err = i915_gem_object_set_to_gtt_domain(obj, true);
+	i915_gem_object_unlock(obj);
+	if (err)
+		return err;
+
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
+
+	intel_gt_pm_get(vma->vm->gt);
+	map = i915_vma_pin_iomap(vma);
+	i915_vma_unpin(vma);
+	if (IS_ERR(map)) {
+		err = PTR_ERR(map);
+		goto out;
+	}
+
+	if (init) {
+		memset_io(map, POISON_INUSE, PAGE_SIZE);
+		i915_gem_object_flush_map(obj);
+	} else {
+		if (memchr_inv(map, POISON_FREE, PAGE_SIZE)) {
+			pr_err("Write via mmap did not land in backing store\n");
+			err = -EINVAL;
+		}
+	}
+	i915_vma_unpin_iomap(vma);
+
+out:
+	intel_gt_pm_put(vma->vm->gt);
+	return err;
+}
+
+static int cpu_obj_set(struct drm_i915_gem_object *obj, bool init)
+{
+	int err = 0;
+	void *vaddr = i915_gem_object_pin_map(obj, i915_gem_object_is_lmem(obj) ?
+					I915_MAP_WC : I915_MAP_WB);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	if (init) {
+		memset(vaddr, POISON_INUSE, PAGE_SIZE);
+		i915_gem_object_flush_map(obj);
+	} else {
+		if (memchr_inv(vaddr, POISON_FREE, PAGE_SIZE)) {
+			pr_err("Write via mmap did not land in backing store\n");
+			err = -EINVAL;
+		}
+	}
+	i915_gem_object_unpin_map(obj);
+
+	return err;
+}
+
 #define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))
-static int igt_mmap(void *arg, enum i915_mmap_type type)
+static int igt_mmap(struct drm_i915_private *i915, struct drm_i915_gem_object *obj,
+		    enum i915_mmap_type type, obj_set_fn_t obj_set_fn)
 {
-	struct drm_i915_private *i915 = arg;
-	struct drm_i915_gem_object *obj;
 	struct i915_mmap_offset *mmo;
 	struct vm_area_struct *area;
 	unsigned long addr;
-	void *vaddr;
-	int err = 0, i;
+	int err = 0, out_err = 0, i;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
+	if (!i915_ggtt_has_aperture(&i915->ggtt) &&
+	    type == I915_MMAP_TYPE_GTT)
 		return 0;
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto out;
-	}
-	memset(vaddr, POISON_INUSE, PAGE_SIZE);
-	i915_gem_object_flush_map(obj);
-	i915_gem_object_unpin_map(obj);
+	err = obj_set_fn(obj, true);
+	if (err)
+		return err;
 
 	mmo = mmap_offset_attach(obj, type, NULL);
-	if (IS_ERR(mmo)) {
-		err = PTR_ERR(mmo);
-		goto out;
-	}
+	if (IS_ERR(mmo))
+		return PTR_ERR(mmo);
 
 	addr = igt_mmap_node(i915, &mmo->vma_node, 0, PROT_WRITE, MAP_SHARED);
-	if (IS_ERR_VALUE(addr)) {
-		err = addr;
-		goto out;
-	}
+	if (IS_ERR_VALUE(addr))
+		return addr;
 
 	pr_debug("igt_mmap() @ %lx\n", addr);
 
@@ -808,31 +860,46 @@ static int igt_mmap(void *arg, enum i915_mmap_type type)
 
 out_unmap:
 	vm_munmap(addr, PAGE_SIZE);
+	out_err = obj_set_fn(obj, false);
+	if (out_err)
+		err = out_err;
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_FORCE_WC);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
-		goto out;
-	}
-	if (err == 0 && memchr_inv(vaddr, POISON_FREE, PAGE_SIZE)) {
-		pr_err("Write via mmap did not land in backing store\n");
-		err = -EINVAL;
-	}
-	i915_gem_object_unpin_map(obj);
-
-out:
-	i915_gem_object_put(obj);
 	return err;
 }
 
-static int igt_mmap_gtt(void *arg)
+static int igt_mmap_memory_regions(void *arg)
 {
-	return igt_mmap(arg, I915_MMAP_TYPE_GTT);
-}
+	struct drm_i915_private *i915 = arg;
+	int i, err = 0;
 
-static int igt_mmap_cpu(void *arg)
-{
-	return igt_mmap(arg, I915_MMAP_TYPE_WC);
+	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
+		struct intel_memory_region *mem = i915->mm.regions[i];
+		struct drm_i915_gem_object *obj;
+
+		if (!mem)
+			continue;
+		obj = i915_gem_object_create_region(mem, PAGE_SIZE,
+						    mem->type == INTEL_MEMORY_LOCAL ?
+						    I915_BO_ALLOC_CONTIGUOUS : 0);
+		if (IS_ERR(obj)) {
+			err = PTR_ERR(obj);
+			break;
+		}
+
+		if (!i915_gem_object_type_has(obj,
+					      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+					      I915_GEM_OBJECT_HAS_IOMEM))
+			err = igt_mmap(i915, obj, I915_MMAP_TYPE_GTT,
+				       gtt_obj_set);
+		else
+			err = igt_mmap(i915, obj, I915_MMAP_TYPE_WC,
+				       cpu_obj_set);
+		i915_gem_object_put(obj);
+		if (err)
+			break;
+	}
+
+	return err;
 }
 
 static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
@@ -887,32 +954,24 @@ static int prefault_range(u64 start, u64 len)
 	return __get_user(c, end - 1);
 }
 
-static int igt_mmap_revoke(void *arg, enum i915_mmap_type type)
+static int igt_mmap_revoke(struct drm_i915_private *i915, struct drm_i915_gem_object *obj,
+			   enum i915_mmap_type type)
 {
-	struct drm_i915_private *i915 = arg;
-	struct drm_i915_gem_object *obj;
 	struct i915_mmap_offset *mmo;
 	unsigned long addr;
 	int err;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
+	if (!i915_ggtt_has_aperture(&i915->ggtt) &&
+	    type == I915_MMAP_TYPE_GTT)
 		return 0;
 
-	obj = i915_gem_object_create_internal(i915, SZ_4M);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
-
 	mmo = mmap_offset_attach(obj, type, NULL);
-	if (IS_ERR(mmo)) {
-		err = PTR_ERR(mmo);
-		goto out;
-	}
+	if (IS_ERR(mmo))
+		return PTR_ERR(mmo);
 
 	addr = igt_mmap_node(i915, &mmo->vma_node, 0, PROT_WRITE, MAP_SHARED);
-	if (IS_ERR_VALUE(addr)) {
-		err = addr;
-		goto out;
-	}
+	if (IS_ERR_VALUE(addr))
+		return addr;
 
 	err = prefault_range(addr, obj->base.size);
 	if (err)
@@ -952,19 +1011,42 @@ static int igt_mmap_revoke(void *arg, enum i915_mmap_type type)
 
 out_unmap:
 	vm_munmap(addr, obj->base.size);
-out:
-	i915_gem_object_put(obj);
+
 	return err;
 }
 
-static int igt_mmap_gtt_revoke(void *arg)
+static int igt_mmap_memory_regions_revoke(void *arg)
 {
-	return igt_mmap_revoke(arg, I915_MMAP_TYPE_GTT);
-}
+	struct drm_i915_private *i915 = arg;
+	int i, err = 0;
 
-static int igt_mmap_cpu_revoke(void *arg)
-{
-	return igt_mmap_revoke(arg, I915_MMAP_TYPE_WC);
+	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
+		struct intel_memory_region *mem = i915->mm.regions[i];
+		struct drm_i915_gem_object *obj;
+
+		if (!mem)
+			continue;
+		obj = i915_gem_object_create_region(mem, PAGE_SIZE,
+						    mem->type == INTEL_MEMORY_LOCAL ?
+						    I915_BO_ALLOC_CONTIGUOUS : 0);
+		if (IS_ERR(obj)) {
+			err = PTR_ERR(obj);
+			break;
+		}
+
+		if (!i915_gem_object_type_has(obj,
+					      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+					      I915_GEM_OBJECT_HAS_IOMEM))
+			err = igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
+		else
+			err = igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
+
+		i915_gem_object_put(obj);
+		if (err)
+			break;
+	}
+
+	return err;
 }
 
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
@@ -973,10 +1055,8 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
-		SUBTEST(igt_mmap_gtt),
-		SUBTEST(igt_mmap_cpu),
-		SUBTEST(igt_mmap_gtt_revoke),
-		SUBTEST(igt_mmap_cpu_revoke),
+		SUBTEST(igt_mmap_memory_regions),
+		SUBTEST(igt_mmap_memory_regions_revoke),
 	};
 
 	return i915_subtests(tests, i915);
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
