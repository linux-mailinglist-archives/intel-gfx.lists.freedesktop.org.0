Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE8912DF8C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 17:39:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A8589C17;
	Wed,  1 Jan 2020 16:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3919189C13
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jan 2020 16:39:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19742815-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 16:39:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jan 2020 16:39:18 +0000
Message-Id: <20200101163918.768253-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200101163918.768253-1-chris@chris-wilson.co.uk>
References: <20200101163918.768253-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/selftests: Extend fault handler
 selftests to all memory regions
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

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

Instead of testing individually our new fault handlers, iterate over all
memory regions and test all from one interface.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 297 ++++++++++++------
 1 file changed, 209 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index cbf796da64e3..35a5d51674bf 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -9,6 +9,7 @@
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
+#include "gem/i915_gem_region.h"
 #include "huge_gem_object.h"
 #include "i915_selftest.h"
 #include "selftests/i915_random.h"
@@ -725,114 +726,222 @@ static int igt_mmap_offset_exhaustion(void *arg)
 	goto out;
 }
 
-#define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))
-static int igt_mmap(void *arg, enum i915_mmap_type type)
+static int gtt_set(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = arg;
-	struct drm_i915_gem_object *obj;
-	struct i915_mmap_offset *mmo;
-	struct vm_area_struct *area;
-	unsigned long addr;
-	void *vaddr;
-	int err = 0, i;
+	struct i915_vma *vma;
+	void __iomem *map;
+	int err = 0;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
-		return 0;
+	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, PIN_MAPPABLE);
+	if (IS_ERR(vma))
+		return PTR_ERR(vma);
 
-	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
-		return PTR_ERR(obj);
+	intel_gt_pm_get(vma->vm->gt);
+	map = i915_vma_pin_iomap(vma);
+	i915_vma_unpin(vma);
+	if (IS_ERR(map)) {
+		err = PTR_ERR(map);
+		goto out;
+	}
+
+	memset_io(map, POISON_INUSE, obj->base.size);
+	i915_vma_unpin_iomap(vma);
 
-	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
-	if (IS_ERR(vaddr)) {
-		err = PTR_ERR(vaddr);
+out:
+	intel_gt_pm_put(vma->vm->gt);
+	return err;
+}
+
+static int gtt_check(struct drm_i915_gem_object *obj)
+{
+	struct i915_vma *vma;
+	void __iomem *map;
+	int err = 0;
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
 		goto out;
 	}
-	memset(vaddr, POISON_INUSE, PAGE_SIZE);
+
+	if (memchr_inv((void __force *)map, POISON_FREE, obj->base.size)) {
+		pr_err("%s: Write via mmap did not land in backing store (GTT)\n",
+		       obj->mm.region->name);
+		err = -EINVAL;
+	}
+	i915_vma_unpin_iomap(vma);
+
+out:
+	intel_gt_pm_put(vma->vm->gt);
+	return err;
+}
+
+static int wc_set(struct drm_i915_gem_object *obj)
+{
+	void *vaddr;
+
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	memset(vaddr, POISON_INUSE, obj->base.size);
 	i915_gem_object_flush_map(obj);
 	i915_gem_object_unpin_map(obj);
 
-	mmo = mmap_offset_attach(obj, type, NULL);
-	if (IS_ERR(mmo)) {
-		err = PTR_ERR(mmo);
-		goto out;
+	return 0;
+}
+
+static int wc_check(struct drm_i915_gem_object *obj)
+{
+	void *vaddr;
+	int err = 0;
+
+	vaddr = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	if (IS_ERR(vaddr))
+		return PTR_ERR(vaddr);
+
+	if (memchr_inv(vaddr, POISON_FREE, obj->base.size)) {
+		pr_err("%s: Write via mmap did not land in backing store (WC)\n",
+		       obj->mm.region->name);
+		err = -EINVAL;
 	}
+	i915_gem_object_unpin_map(obj);
+
+	return err;
+}
+
+static bool can_mmap(struct drm_i915_gem_object *obj, enum i915_mmap_type type)
+{
+	if (type == I915_MMAP_TYPE_GTT &&
+	    !i915_ggtt_has_aperture(&to_i915(obj->base.dev)->ggtt))
+		return false;
+
+	if (type != I915_MMAP_TYPE_GTT &&
+	    !i915_gem_object_type_has(obj,
+				      I915_GEM_OBJECT_HAS_STRUCT_PAGE |
+				      I915_GEM_OBJECT_HAS_IOMEM))
+		return false;
+
+	return true;
+}
+
+#define expand32(x) (((x) << 0) | ((x) << 8) | ((x) << 16) | ((x) << 24))
+static int __igt_mmap(struct drm_i915_private *i915,
+		      struct drm_i915_gem_object *obj,
+		      enum i915_mmap_type type)
+{
+	struct i915_mmap_offset *mmo;
+	struct vm_area_struct *area;
+	unsigned long addr;
+	int err, i;
+
+	if (!can_mmap(obj, type))
+		return 0;
+
+	err = wc_set(obj);
+	if (err == -ENXIO)
+		err = gtt_set(obj);
+	if (err)
+		return err;
+
+	mmo = mmap_offset_attach(obj, type, NULL);
+	if (IS_ERR(mmo))
+		return PTR_ERR(mmo);
 
 	addr = igt_mmap_node(i915, &mmo->vma_node, 0, PROT_WRITE, MAP_SHARED);
-	if (IS_ERR_VALUE(addr)) {
-		err = addr;
-		goto out;
-	}
+	if (IS_ERR_VALUE(addr))
+		return addr;
 
-	pr_debug("igt_mmap() @ %lx\n", addr);
+	pr_debug("igt_mmap(%s, %d) @ %lx\n", obj->mm.region->name, type, addr);
 
 	area = find_vma(current->mm, addr);
 	if (!area) {
-		pr_err("Did not create a vm_area_struct for the mmap\n");
+		pr_err("%s: Did not create a vm_area_struct for the mmap\n",
+		       obj->mm.region->name);
 		err = -EINVAL;
 		goto out_unmap;
 	}
 
 	if (area->vm_private_data != mmo) {
-		pr_err("vm_area_struct did not point back to our mmap_offset object!\n");
+		pr_err("%s: vm_area_struct did not point back to our mmap_offset object!\n",
+		       obj->mm.region->name);
 		err = -EINVAL;
 		goto out_unmap;
 	}
 
-	for (i = 0; i < PAGE_SIZE / sizeof(u32); i++) {
+	for (i = 0; i < obj->base.size / sizeof(u32); i++) {
 		u32 __user *ux = u64_to_user_ptr((u64)(addr + i * sizeof(*ux)));
 		u32 x;
 
 		if (get_user(x, ux)) {
-			pr_err("Unable to read from mmap, offset:%zd\n",
-			       i * sizeof(x));
+			pr_err("%s: Unable to read from mmap, offset:%zd\n",
+			       obj->mm.region->name, i * sizeof(x));
 			err = -EFAULT;
-			break;
+			goto out_unmap;
 		}
 
 		if (x != expand32(POISON_INUSE)) {
-			pr_err("Read incorrect value from mmap, offset:%zd, found:%x, expected:%x\n",
+			pr_err("%s: Read incorrect value from mmap, offset:%zd, found:%x, expected:%x\n",
+			       obj->mm.region->name,
 			       i * sizeof(x), x, expand32(POISON_INUSE));
 			err = -EINVAL;
-			break;
+			goto out_unmap;
 		}
 
 		x = expand32(POISON_FREE);
 		if (put_user(x, ux)) {
-			pr_err("Unable to write to mmap, offset:%zd\n",
-			       i * sizeof(x));
+			pr_err("%s: Unable to write to mmap, offset:%zd\n",
+			       obj->mm.region->name, i * sizeof(x));
 			err = -EFAULT;
-			break;
+			goto out_unmap;
 		}
 	}
 
-out_unmap:
-	vm_munmap(addr, PAGE_SIZE);
+	if (type == I915_MMAP_TYPE_GTT)
+		intel_gt_flush_ggtt_writes(&i915->gt);
 
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
+	err = wc_check(obj);
+	if (err == -ENXIO)
+		err = gtt_check(obj);
+out_unmap:
+	vm_munmap(addr, obj->base.size);
 
-out:
-	i915_gem_object_put(obj);
 	return err;
 }
 
-static int igt_mmap_gtt(void *arg)
+static int igt_mmap(void *arg)
 {
-	return igt_mmap(arg, I915_MMAP_TYPE_GTT);
-}
+	struct drm_i915_private *i915 = arg;
+	struct intel_memory_region *mr;
+	enum intel_region_id id;
 
-static int igt_mmap_cpu(void *arg)
-{
-	return igt_mmap(arg, I915_MMAP_TYPE_WC);
+	for_each_memory_region(mr, i915, id) {
+		struct drm_i915_gem_object *obj;
+		int err;
+
+		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0);
+		if (obj == ERR_PTR(-ENODEV))
+			continue;
+
+		if (IS_ERR(obj))
+			return PTR_ERR(obj);
+
+		err = __igt_mmap(i915, obj, I915_MMAP_TYPE_GTT);
+		if (err == 0)
+			err = __igt_mmap(i915, obj, I915_MMAP_TYPE_WC);
+
+		i915_gem_object_put(obj);
+		if (err)
+			return err;
+	}
+
+	return 0;
 }
 
 static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
@@ -887,32 +996,24 @@ static int prefault_range(u64 start, u64 len)
 	return __get_user(c, end - 1);
 }
 
-static int igt_mmap_revoke(void *arg, enum i915_mmap_type type)
+static int __igt_mmap_revoke(struct drm_i915_private *i915,
+			     struct drm_i915_gem_object *obj,
+			     enum i915_mmap_type type)
 {
-	struct drm_i915_private *i915 = arg;
-	struct drm_i915_gem_object *obj;
 	struct i915_mmap_offset *mmo;
 	unsigned long addr;
 	int err;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
+	if (!can_mmap(obj, type))
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
@@ -922,8 +1023,10 @@ static int igt_mmap_revoke(void *arg, enum i915_mmap_type type)
 		   !atomic_read(&obj->bind_count));
 
 	err = check_present(addr, obj->base.size);
-	if (err)
+	if (err) {
+		pr_err("%s: was not present\n", obj->mm.region->name);
 		goto out_unmap;
+	}
 
 	/*
 	 * After unbinding the object from the GGTT, its address may be reused
@@ -947,24 +1050,44 @@ static int igt_mmap_revoke(void *arg, enum i915_mmap_type type)
 	}
 
 	err = check_absent(addr, obj->base.size);
-	if (err)
+	if (err) {
+		pr_err("%s: was not absent\n", obj->mm.region->name);
 		goto out_unmap;
+	}
 
 out_unmap:
 	vm_munmap(addr, obj->base.size);
-out:
-	i915_gem_object_put(obj);
+
 	return err;
 }
 
-static int igt_mmap_gtt_revoke(void *arg)
+static int igt_mmap_revoke(void *arg)
 {
-	return igt_mmap_revoke(arg, I915_MMAP_TYPE_GTT);
-}
+	struct drm_i915_private *i915 = arg;
+	struct intel_memory_region *mr;
+	enum intel_region_id id;
 
-static int igt_mmap_cpu_revoke(void *arg)
-{
-	return igt_mmap_revoke(arg, I915_MMAP_TYPE_WC);
+	for_each_memory_region(mr, i915, id) {
+		struct drm_i915_gem_object *obj;
+		int err;
+
+		obj = i915_gem_object_create_region(mr, PAGE_SIZE, 0);
+		if (obj == ERR_PTR(-ENODEV))
+			continue;
+
+		if (IS_ERR(obj))
+			return PTR_ERR(obj);
+
+		err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_GTT);
+		if (err == 0)
+			err = __igt_mmap_revoke(i915, obj, I915_MMAP_TYPE_WC);
+
+		i915_gem_object_put(obj);
+		if (err)
+			return err;
+	}
+
+	return 0;
 }
 
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
@@ -973,10 +1096,8 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
-		SUBTEST(igt_mmap_gtt),
-		SUBTEST(igt_mmap_cpu),
-		SUBTEST(igt_mmap_gtt_revoke),
-		SUBTEST(igt_mmap_cpu_revoke),
+		SUBTEST(igt_mmap),
+		SUBTEST(igt_mmap_revoke),
 	};
 
 	return i915_subtests(tests, i915);
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
