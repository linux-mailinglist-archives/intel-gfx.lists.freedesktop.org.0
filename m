Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190661B91CA
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 18:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C27589F27;
	Sun, 26 Apr 2020 16:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34B289F27
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 16:36:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21027602-1500050 
 for multiple; Sun, 26 Apr 2020 17:36:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 26 Apr 2020 17:36:08 +0100
Message-Id: <20200426163608.13704-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move more i915->ggtt to local
 variables
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

We have been preparing for a transfer of ownership of the GGTT from the
global drm_i915_private into the intel_gt, and a part of the process has
been to reduce the number of direct references to i915->ggtt and instead
try and derive the pointer from a supplied intel_gt.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    |  7 +++---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      | 17 +++++++-------
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  | 10 ++++-----
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 22 ++++++++++---------
 .../drm/i915/gem/selftests/i915_gem_object.c  |  3 ++-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  6 ++---
 drivers/gpu/drm/i915/i915_debugfs.c           |  7 +++---
 drivers/gpu/drm/i915/i915_gem.c               | 14 ++++++------
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  4 ++--
 9 files changed, 48 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index 7f76fc68f498..c48ac59fdb29 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -366,22 +366,23 @@ i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
 static void i915_gem_object_bump_inactive_ggtt(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct i915_vma *vma;
 
 	if (list_empty(&obj->vma.list))
 		return;
 
-	mutex_lock(&i915->ggtt.vm.mutex);
+	mutex_lock(&ggtt->vm.mutex);
 	spin_lock(&obj->vma.lock);
 	for_each_ggtt_vma(vma, obj) {
 		if (!drm_mm_node_allocated(&vma->node))
 			continue;
 
-		GEM_BUG_ON(vma->vm != &i915->ggtt.vm);
+		GEM_BUG_ON(vma->vm != &ggtt->vm);
 		list_move_tail(&vma->vm_link, &vma->vm->bound_list);
 	}
 	spin_unlock(&obj->vma.lock);
-	mutex_unlock(&i915->ggtt.vm.mutex);
+	mutex_unlock(&ggtt->vm.mutex);
 
 	if (i915_gem_object_is_shrinkable(obj)) {
 		unsigned long flags;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b39c24dae64e..9eed1b5c351a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -365,16 +365,16 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 	assert_rpm_wakelock_held(rpm);
 
 	/* Mark as being mmapped into userspace for later revocation */
-	mutex_lock(&i915->ggtt.vm.mutex);
+	mutex_lock(&ggtt->vm.mutex);
 	if (!i915_vma_set_userfault(vma) && !obj->userfault_count++)
-		list_add(&obj->userfault_link, &i915->ggtt.userfault_list);
-	mutex_unlock(&i915->ggtt.vm.mutex);
+		list_add(&obj->userfault_link, &ggtt->userfault_list);
+	mutex_unlock(&ggtt->vm.mutex);
 
 	/* Track the mmo associated with the fenced vma */
 	vma->mmo = mmo;
 
 	if (IS_ACTIVE(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND))
-		intel_wakeref_auto(&i915->ggtt.userfault_wakeref,
+		intel_wakeref_auto(&ggtt->userfault_wakeref,
 				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
 
 	if (write) {
@@ -419,6 +419,7 @@ void __i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	intel_wakeref_t wakeref;
 
 	/*
@@ -430,8 +431,8 @@ static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 	 * requirement that operations to the GGTT be made holding the RPM
 	 * wakeref.
 	 */
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-	mutex_lock(&i915->ggtt.vm.mutex);
+	wakeref = intel_runtime_pm_get(ggtt->vm.gt->uncore->rpm);
+	mutex_lock(&ggtt->vm.mutex);
 
 	if (!obj->userfault_count)
 		goto out;
@@ -449,8 +450,8 @@ static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
 	wmb();
 
 out:
-	mutex_unlock(&i915->ggtt.vm.mutex);
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	mutex_unlock(&ggtt->vm.mutex);
+	intel_runtime_pm_put(ggtt->vm.gt->uncore->rpm, wakeref);
 }
 
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 5b65ce738b16..ba3f5e81d1a7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -352,20 +352,20 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 {
 	struct drm_i915_private *i915 =
 		container_of(nb, struct drm_i915_private, mm.vmap_notifier);
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct i915_vma *vma, *next;
 	unsigned long freed_pages = 0;
 	intel_wakeref_t wakeref;
 
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+	with_intel_runtime_pm(ggtt->vm.gt->uncore->rpm, wakeref)
 		freed_pages += i915_gem_shrink(i915, -1UL, NULL,
 					       I915_SHRINK_BOUND |
 					       I915_SHRINK_UNBOUND |
 					       I915_SHRINK_VMAPS);
 
 	/* We also want to clear any cached iomaps as they wrap vmap */
-	mutex_lock(&i915->ggtt.vm.mutex);
-	list_for_each_entry_safe(vma, next,
-				 &i915->ggtt.vm.bound_list, vm_link) {
+	mutex_lock(&ggtt->vm.mutex);
+	list_for_each_entry_safe(vma, next, &ggtt->vm.bound_list, vm_link) {
 		unsigned long count = vma->node.size >> PAGE_SHIFT;
 
 		if (!vma->iomap || i915_vma_is_active(vma))
@@ -374,7 +374,7 @@ i915_gem_shrinker_vmap(struct notifier_block *nb, unsigned long event, void *ptr
 		if (__i915_vma_unbind(vma) == 0)
 			freed_pages += count;
 	}
-	mutex_unlock(&i915->ggtt.vm.mutex);
+	mutex_unlock(&ggtt->vm.mutex);
 
 	*(unsigned long *)ptr += freed_pages;
 	return NOTIFY_DONE;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index ef7abcb3f4ee..3d06874833a2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -299,12 +299,13 @@ static int igt_partial_tiling(void *arg)
 {
 	const unsigned int nreal = 1 << 12; /* largest tile row x2 */
 	struct drm_i915_private *i915 = arg;
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct drm_i915_gem_object *obj;
 	intel_wakeref_t wakeref;
 	int tiling;
 	int err;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
+	if (!i915_ggtt_has_aperture(ggtt))
 		return 0;
 
 	/* We want to check the page mapping and fencing of a large object
@@ -317,7 +318,7 @@ static int igt_partial_tiling(void *arg)
 
 	obj = huge_gem_object(i915,
 			      nreal << PAGE_SHIFT,
-			      (1 + next_prime_number(i915->ggtt.vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);
+			      (1 + next_prime_number(ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
@@ -328,7 +329,7 @@ static int igt_partial_tiling(void *arg)
 		goto out;
 	}
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_runtime_pm_get(ggtt->vm.gt->uncore->rpm);
 
 	if (1) {
 		IGT_TIMEOUT(end);
@@ -363,10 +364,10 @@ static int igt_partial_tiling(void *arg)
 		tile.tiling = tiling;
 		switch (tiling) {
 		case I915_TILING_X:
-			tile.swizzle = i915->ggtt.bit_6_swizzle_x;
+			tile.swizzle = ggtt->bit_6_swizzle_x;
 			break;
 		case I915_TILING_Y:
-			tile.swizzle = i915->ggtt.bit_6_swizzle_y;
+			tile.swizzle = ggtt->bit_6_swizzle_y;
 			break;
 		}
 
@@ -419,7 +420,7 @@ next_tiling: ;
 	}
 
 out_unlock:
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_runtime_pm_put(ggtt->vm.gt->uncore->rpm, wakeref);
 	i915_gem_object_unpin_pages(obj);
 out:
 	i915_gem_object_put(obj);
@@ -430,6 +431,7 @@ static int igt_smoke_tiling(void *arg)
 {
 	const unsigned int nreal = 1 << 12; /* largest tile row x2 */
 	struct drm_i915_private *i915 = arg;
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct drm_i915_gem_object *obj;
 	intel_wakeref_t wakeref;
 	I915_RND_STATE(prng);
@@ -437,7 +439,7 @@ static int igt_smoke_tiling(void *arg)
 	IGT_TIMEOUT(end);
 	int err;
 
-	if (!i915_ggtt_has_aperture(&i915->ggtt))
+	if (!i915_ggtt_has_aperture(ggtt))
 		return 0;
 
 	/*
@@ -454,7 +456,7 @@ static int igt_smoke_tiling(void *arg)
 
 	obj = huge_gem_object(i915,
 			      nreal << PAGE_SHIFT,
-			      (1 + next_prime_number(i915->ggtt.vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);
+			      (1 + next_prime_number(ggtt->vm.total >> PAGE_SHIFT)) << PAGE_SHIFT);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
@@ -483,10 +485,10 @@ static int igt_smoke_tiling(void *arg)
 			break;
 
 		case I915_TILING_X:
-			tile.swizzle = i915->ggtt.bit_6_swizzle_x;
+			tile.swizzle = ggtt->bit_6_swizzle_x;
 			break;
 		case I915_TILING_Y:
-			tile.swizzle = i915->ggtt.bit_6_swizzle_y;
+			tile.swizzle = ggtt->bit_6_swizzle_y;
 			break;
 		}
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
index faa5b6d91795..2ceb3306342a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object.c
@@ -35,6 +35,7 @@ static int igt_gem_huge(void *arg)
 {
 	const unsigned int nreal = 509; /* just to be awkward */
 	struct drm_i915_private *i915 = arg;
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	struct drm_i915_gem_object *obj;
 	unsigned int n;
 	int err;
@@ -43,7 +44,7 @@ static int igt_gem_huge(void *arg)
 
 	obj = huge_gem_object(i915,
 			      nreal * PAGE_SIZE,
-			      i915->ggtt.vm.total + PAGE_SIZE);
+			      ggtt->vm.total + PAGE_SIZE);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 7fb36b12fe7a..acc37c796f43 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -716,8 +716,8 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
 		swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 	}
 
-	i915->ggtt.bit_6_swizzle_x = swizzle_x;
-	i915->ggtt.bit_6_swizzle_y = swizzle_y;
+	ggtt->bit_6_swizzle_x = swizzle_x;
+	ggtt->bit_6_swizzle_y = swizzle_y;
 }
 
 /*
@@ -882,7 +882,7 @@ void intel_gt_init_swizzling(struct intel_gt *gt)
 	struct intel_uncore *uncore = gt->uncore;
 
 	if (INTEL_GEN(i915) < 5 ||
-	    i915->ggtt.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
+	    gt->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
 		return;
 
 	intel_uncore_rmw(uncore, DISP_ARB_CTL, 0, DISP_TILE_SURFACE_SWIZZLING);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e3c5ff25c807..8821eebfd3b1 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -648,13 +648,14 @@ static int i915_interrupt_info(struct seq_file *m, void *data)
 static int i915_gem_fence_regs_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	unsigned int i;
 
-	seq_printf(m, "Total fences = %d\n", i915->ggtt.num_fences);
+	seq_printf(m, "Total fences = %d\n", ggtt->num_fences);
 
 	rcu_read_lock();
-	for (i = 0; i < i915->ggtt.num_fences; i++) {
-		struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
+	for (i = 0; i < ggtt->num_fences; i++) {
+		struct i915_fence_reg *reg = &ggtt->fence_regs[i];
 		struct i915_vma *vma = reg->vma;
 
 		seq_printf(m, "Fence %d, pin count = %d, object = ",
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 0cbcb9f54e7d..28c68ed73015 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -403,7 +403,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 	u64 remain, offset;
 	int ret;
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+	wakeref = intel_runtime_pm_get(ggtt->vm.gt->uncore->rpm);
 	vma = ERR_PTR(-ENODEV);
 	if (!i915_gem_object_is_tiled(obj))
 		vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0,
@@ -480,7 +480,7 @@ i915_gem_gtt_pread(struct drm_i915_gem_object *obj,
 		i915_vma_unpin(vma);
 	}
 out_rpm:
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	intel_runtime_pm_put(ggtt->vm.gt->uncore->rpm, wakeref);
 	return ret;
 }
 
@@ -578,7 +578,7 @@ i915_gem_gtt_pwrite_fast(struct drm_i915_gem_object *obj,
 {
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_ggtt *ggtt = &i915->ggtt;
-	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	struct intel_runtime_pm *rpm = ggtt->vm.gt->uncore->rpm;
 	intel_wakeref_t wakeref;
 	struct drm_mm_node node;
 	struct dma_fence *fence;
@@ -892,6 +892,7 @@ i915_gem_sw_finish_ioctl(struct drm_device *dev, void *data,
 void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 {
 	struct drm_i915_gem_object *obj, *on;
+	struct i915_ggtt *ggtt = &i915->ggtt;
 	int i;
 
 	/*
@@ -901,8 +902,7 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	 * protection between themselves).
 	 */
 
-	list_for_each_entry_safe(obj, on,
-				 &i915->ggtt.userfault_list, userfault_link)
+	list_for_each_entry_safe(obj, on, &ggtt->userfault_list, userfault_link)
 		__i915_gem_object_release_mmap_gtt(obj);
 
 	/*
@@ -910,8 +910,8 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
 	 * in use by hardware (i.e. they are pinned), we should not be powering
 	 * down! All other fences will be reacquired by the user upon waking.
 	 */
-	for (i = 0; i < i915->ggtt.num_fences; i++) {
-		struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
+	for (i = 0; i < ggtt->num_fences; i++) {
+		struct i915_fence_reg *reg = &ggtt->fence_regs[i];
 
 		/*
 		 * Ideally we want to assert that the fence register is not
diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
index cb43381b0d37..e15f89e9a011 100644
--- a/drivers/gpu/drm/i915/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
@@ -107,7 +107,7 @@ int i915_gem_gtt_reserve(struct i915_address_space *vm,
 	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_PAGE_SIZE));
 	GEM_BUG_ON(!IS_ALIGNED(offset, I915_GTT_MIN_ALIGNMENT));
 	GEM_BUG_ON(range_overflows(offset, size, vm->total));
-	GEM_BUG_ON(vm == &vm->i915->ggtt.alias->vm);
+	GEM_BUG_ON(vm == &vm->gt->ggtt->alias->vm);
 	GEM_BUG_ON(drm_mm_node_allocated(node));
 
 	node->size = size;
@@ -205,7 +205,7 @@ int i915_gem_gtt_insert(struct i915_address_space *vm,
 	GEM_BUG_ON(start >= end);
 	GEM_BUG_ON(start > 0  && !IS_ALIGNED(start, I915_GTT_PAGE_SIZE));
 	GEM_BUG_ON(end < U64_MAX && !IS_ALIGNED(end, I915_GTT_PAGE_SIZE));
-	GEM_BUG_ON(vm == &vm->i915->ggtt.alias->vm);
+	GEM_BUG_ON(vm == &vm->gt->ggtt->alias->vm);
 	GEM_BUG_ON(drm_mm_node_allocated(node));
 
 	if (unlikely(range_overflows(start, size, end)))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
