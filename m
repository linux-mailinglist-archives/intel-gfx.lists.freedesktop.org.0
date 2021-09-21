Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B19F0413939
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 19:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B348C6EA2F;
	Tue, 21 Sep 2021 17:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70D86EA16;
 Tue, 21 Sep 2021 17:51:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="210509865"
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="210509865"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 10:51:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,311,1624345200"; d="scan'208";a="512413793"
Received: from rogerc2x-mobl.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.52])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2021 10:51:42 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Brost <matthew.brost@intel.com>
Date: Tue, 21 Sep 2021 19:51:11 +0200
Message-Id: <20210921175111.850331-8-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
References: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 7/7] drm/i915: Reduce the number of objects
 subject to memcpy recover
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

We really only need memcpy restore for objects that affect the
operability of the migrate context. That is, primarily the page-table
objects of the migrate VM.

Add an object flag, I915_BO_ALLOC_PM_EARLY for objects that need early
restores using memcpy and a way to assign LMEM page-table object flags
to be used by the vms.

Restore objects without this flag with the gpu blitter and only objects
carrying the flag using TTM memcpy.

Initially mark the migrate, gt, gtt and vgpu vms to use this flag, and
defer for a later audit which vms actually need it. Most importantly, user-
allocated vms with pinned page-table objects can be restored using the
blitter.

Performance-wise memcpy restore is probably as fast as gpu restore if not
faster, but using gpu restore will help tackling future restrictions in
mappable LMEM size.

v4:
- Don't mark the aliasing ppgtt page table flags for early resume, but
  rather the ggtt page table flags as intended. (Matthew Auld)
- The check for user buffer objects during early resume is pointless, since
  they are never marked I915_BO_ALLOC_PM_EARLY. (Matthew Auld)
v5:
- Mark GuC LMEM objects with I915_BO_ALLOC_PM_EARLY to have them restored
  before we fire up the migrate context.

Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c      |  4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h |  9 ++++++---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c           |  6 +++++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c       |  5 +++--
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c  |  2 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c             |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c             |  5 +++--
 drivers/gpu/drm/i915/gt/gen8_ppgtt.h             |  4 +++-
 drivers/gpu/drm/i915/gt/intel_ggtt.c             |  3 ++-
 drivers/gpu/drm/i915/gt/intel_gt.c               |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c              |  3 ++-
 drivers/gpu/drm/i915/gt/intel_gtt.h              |  9 +++++++--
 drivers/gpu/drm/i915/gt/intel_migrate.c          |  2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c            | 13 ++++++++-----
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c           |  3 ++-
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c         |  7 +++++--
 drivers/gpu/drm/i915/gvt/scheduler.c             |  2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c    |  4 ++--
 19 files changed, 56 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index c2ab0e22db0a..8208fd5b72c3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1287,7 +1287,7 @@ i915_gem_create_context(struct drm_i915_private *i915,
 	} else if (HAS_FULL_PPGTT(i915)) {
 		struct i915_ppgtt *ppgtt;
 
-		ppgtt = i915_ppgtt_create(&i915->gt);
+		ppgtt = i915_ppgtt_create(&i915->gt, 0);
 		if (IS_ERR(ppgtt)) {
 			drm_dbg(&i915->drm, "PPGTT setup failed (%ld)\n",
 				PTR_ERR(ppgtt));
@@ -1465,7 +1465,7 @@ int i915_gem_vm_create_ioctl(struct drm_device *dev, void *data,
 	if (args->flags)
 		return -EINVAL;
 
-	ppgtt = i915_ppgtt_create(&i915->gt);
+	ppgtt = i915_ppgtt_create(&i915->gt, 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 118691ce81d7..fa2ba9e2a4d0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -294,13 +294,16 @@ struct drm_i915_gem_object {
 #define I915_BO_ALLOC_USER        BIT(3)
 /* Object is allowed to lose its contents on suspend / resume, even if pinned */
 #define I915_BO_ALLOC_PM_VOLATILE BIT(4)
+/* Object needs to be restored early using memcpy during resume */
+#define I915_BO_ALLOC_PM_EARLY    BIT(5)
 #define I915_BO_ALLOC_FLAGS (I915_BO_ALLOC_CONTIGUOUS | \
 			     I915_BO_ALLOC_VOLATILE | \
 			     I915_BO_ALLOC_CPU_CLEAR | \
 			     I915_BO_ALLOC_USER | \
-			     I915_BO_ALLOC_PM_VOLATILE)
-#define I915_BO_READONLY          BIT(5)
-#define I915_TILING_QUIRK_BIT     6 /* unknown swizzling; do not release! */
+			     I915_BO_ALLOC_PM_VOLATILE | \
+			     I915_BO_ALLOC_PM_EARLY)
+#define I915_BO_READONLY          BIT(6)
+#define I915_TILING_QUIRK_BIT     7 /* unknown swizzling; do not release! */
 
 	/**
 	 * @mem_flags - Mutable placement-related flags
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 12b37b4c1192..726b40e1fbb0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -97,8 +97,12 @@ int i915_gem_backup_suspend(struct drm_i915_private *i915)
 	 * More objects may have become unpinned as requests were
 	 * retired. Now try to evict again. The gt may be wedged here
 	 * in which case we automatically fall back to memcpy.
+	 * We allow also backing up pinned objects that have not been
+	 * marked for early recover, and that may contain, for example,
+	 * page-tables for the migrate context.
 	 */
-	ret = lmem_suspend(i915, I915_TTM_BACKUP_ALLOW_GPU);
+	ret = lmem_suspend(i915, I915_TTM_BACKUP_ALLOW_GPU |
+			   I915_TTM_BACKUP_PINNED);
 	if (ret)
 		goto out_recover;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
index 03a00d193f40..3b6d14b5c604 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c
@@ -57,7 +57,8 @@ static int i915_ttm_backup(struct i915_gem_apply_to_region *apply,
 	if (pm_apply->allow_gpu && i915_gem_object_evictable(obj))
 		return ttm_bo_validate(bo, i915_ttm_sys_placement(), &ctx);
 
-	if (!pm_apply->backup_pinned)
+	if (!pm_apply->backup_pinned ||
+	    (pm_apply->allow_gpu && (obj->flags & I915_BO_ALLOC_PM_EARLY)))
 		return 0;
 
 	if (obj->flags & I915_BO_ALLOC_PM_VOLATILE)
@@ -155,7 +156,7 @@ static int i915_ttm_restore(struct i915_gem_apply_to_region *apply,
 	if (!backup)
 		return 0;
 
-	if (!pm_apply->allow_gpu && (obj->flags & I915_BO_ALLOC_USER))
+	if (!pm_apply->allow_gpu && !(obj->flags & I915_BO_ALLOC_PM_EARLY))
 		return 0;
 
 	err = i915_gem_object_lock(backup, apply->ww);
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 0827634c842c..77d84a9e8789 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1645,7 +1645,7 @@ int i915_gem_huge_page_mock_selftests(void)
 	mkwrite_device_info(dev_priv)->ppgtt_type = INTEL_PPGTT_FULL;
 	mkwrite_device_info(dev_priv)->ppgtt_size = 48;
 
-	ppgtt = i915_ppgtt_create(&dev_priv->gt);
+	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
 	if (IS_ERR(ppgtt)) {
 		err = PTR_ERR(ppgtt);
 		goto out_unlock;
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 1aee5e6b1b23..890191f286e3 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -429,7 +429,7 @@ struct i915_ppgtt *gen6_ppgtt_create(struct intel_gt *gt)
 	mutex_init(&ppgtt->flush);
 	mutex_init(&ppgtt->pin_mutex);
 
-	ppgtt_init(&ppgtt->base, gt);
+	ppgtt_init(&ppgtt->base, gt, 0);
 	ppgtt->base.vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen6_pte_t));
 	ppgtt->base.vm.top = 1;
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
index 6a5af995f5b1..037a9a6e4889 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
@@ -753,7 +753,8 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
  * space.
  *
  */
-struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
+struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
+				     unsigned long lmem_pt_obj_flags)
 {
 	struct i915_ppgtt *ppgtt;
 	int err;
@@ -762,7 +763,7 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
 	if (!ppgtt)
 		return ERR_PTR(-ENOMEM);
 
-	ppgtt_init(ppgtt, gt);
+	ppgtt_init(ppgtt, gt, lmem_pt_obj_flags);
 	ppgtt->vm.top = i915_vm_is_4lvl(&ppgtt->vm) ? 3 : 2;
 	ppgtt->vm.pd_shift = ilog2(SZ_4K * SZ_4K / sizeof(gen8_pte_t));
 
diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
index b9028c2ad3c7..f541d19264b4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
@@ -12,7 +12,9 @@ struct i915_address_space;
 struct intel_gt;
 enum i915_cache_level;
 
-struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt);
+struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt,
+				     unsigned long lmem_pt_obj_flags);
+
 u64 gen8_ggtt_pte_encode(dma_addr_t addr,
 			 enum i915_cache_level level,
 			 u32 flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8d71f67926f1..06576fc1310e 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -644,7 +644,7 @@ static int init_aliasing_ppgtt(struct i915_ggtt *ggtt)
 	struct i915_ppgtt *ppgtt;
 	int err;
 
-	ppgtt = i915_ppgtt_create(ggtt->vm.gt);
+	ppgtt = i915_ppgtt_create(ggtt->vm.gt, 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
@@ -909,6 +909,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 		size = gen8_get_total_gtt_size(snb_gmch_ctl);
 
 	ggtt->vm.alloc_pt_dma = alloc_pt_dma;
+	ggtt->vm.lmem_pt_obj_flags = I915_BO_ALLOC_PM_EARLY;
 
 	ggtt->vm.total = (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
 	ggtt->vm.cleanup = gen6_gmch_remove;
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5753c5943ed9..4037c3778225 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -481,7 +481,7 @@ static void intel_gt_fini_scratch(struct intel_gt *gt)
 static struct i915_address_space *kernel_vm(struct intel_gt *gt)
 {
 	if (INTEL_PPGTT(gt->i915) > INTEL_PPGTT_ALIASING)
-		return &i915_ppgtt_create(gt)->vm;
+		return &i915_ppgtt_create(gt, I915_BO_ALLOC_PM_EARLY)->vm;
 	else
 		return i915_vm_get(&gt->ggtt->vm);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index a0c2b952aa57..67d14afa6623 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -28,7 +28,8 @@ struct drm_i915_gem_object *alloc_pt_lmem(struct i915_address_space *vm, int sz)
 	 * used the passed in size for the page size, which should ensure it
 	 * also has the same alignment.
 	 */
-	obj = __i915_gem_object_create_lmem_with_ps(vm->i915, sz, sz, 0);
+	obj = __i915_gem_object_create_lmem_with_ps(vm->i915, sz, sz,
+						    vm->lmem_pt_obj_flags);
 	/*
 	 * Ensure all paging structures for this vm share the same dma-resv
 	 * object underneath, with the idea that one object_lock() will lock
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 5b539bd7645d..bc6750263359 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -260,6 +260,9 @@ struct i915_address_space {
 	u8 pd_shift;
 	u8 scratch_order;
 
+	/* Flags used when creating page-table objects for this vm */
+	unsigned long lmem_pt_obj_flags;
+
 	struct drm_i915_gem_object *
 		(*alloc_pt_dma)(struct i915_address_space *vm, int sz);
 
@@ -519,7 +522,8 @@ i915_page_dir_dma_addr(const struct i915_ppgtt *ppgtt, const unsigned int n)
 	return __px_dma(pt ? px_base(pt) : ppgtt->vm.scratch[ppgtt->vm.top]);
 }
 
-void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt);
+void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
+		unsigned long lmem_pt_obj_flags);
 
 int i915_ggtt_probe_hw(struct drm_i915_private *i915);
 int i915_ggtt_init_hw(struct drm_i915_private *i915);
@@ -537,7 +541,8 @@ static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
 
 int i915_ppgtt_init_hw(struct intel_gt *gt);
 
-struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
+struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
+				     unsigned long lmem_pt_obj_flags);
 
 void i915_ggtt_suspend(struct i915_ggtt *gtt);
 void i915_ggtt_resume(struct i915_ggtt *ggtt);
diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 1dac21aa7e5c..afb1cce9a352 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -78,7 +78,7 @@ static struct i915_address_space *migrate_vm(struct intel_gt *gt)
 	 * TODO: Add support for huge LMEM PTEs
 	 */
 
-	vm = i915_ppgtt_create(gt);
+	vm = i915_ppgtt_create(gt, I915_BO_ALLOC_PM_EARLY);
 	if (IS_ERR(vm))
 		return ERR_CAST(vm);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index 886060f7e6fc..4396bfd630d8 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -155,19 +155,20 @@ int i915_ppgtt_init_hw(struct intel_gt *gt)
 }
 
 static struct i915_ppgtt *
-__ppgtt_create(struct intel_gt *gt)
+__ppgtt_create(struct intel_gt *gt, unsigned long lmem_pt_obj_flags)
 {
 	if (GRAPHICS_VER(gt->i915) < 8)
 		return gen6_ppgtt_create(gt);
 	else
-		return gen8_ppgtt_create(gt);
+		return gen8_ppgtt_create(gt, lmem_pt_obj_flags);
 }
 
-struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt)
+struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt,
+				     unsigned long lmem_pt_obj_flags)
 {
 	struct i915_ppgtt *ppgtt;
 
-	ppgtt = __ppgtt_create(gt);
+	ppgtt = __ppgtt_create(gt, lmem_pt_obj_flags);
 	if (IS_ERR(ppgtt))
 		return ppgtt;
 
@@ -298,7 +299,8 @@ int ppgtt_set_pages(struct i915_vma *vma)
 	return 0;
 }
 
-void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt)
+void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
+		unsigned long lmem_pt_obj_flags)
 {
 	struct drm_i915_private *i915 = gt->i915;
 
@@ -306,6 +308,7 @@ void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt)
 	ppgtt->vm.i915 = i915;
 	ppgtt->vm.dma = i915->drm.dev;
 	ppgtt->vm.total = BIT_ULL(INTEL_INFO(i915)->ppgtt_size);
+	ppgtt->vm.lmem_pt_obj_flags = lmem_pt_obj_flags;
 
 	dma_resv_init(&ppgtt->vm._resv);
 	i915_address_space_init(&ppgtt->vm, VM_CLASS_PPGTT);
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7e6fdabac599..7e2d99dd012d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1596,7 +1596,7 @@ static int igt_reset_evict_ppgtt(void *arg)
 	if (INTEL_PPGTT(gt->i915) < INTEL_PPGTT_FULL)
 		return 0;
 
-	ppgtt = i915_ppgtt_create(gt);
+	ppgtt = i915_ppgtt_create(gt, 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 8ffb689066f6..8f8182bf7c11 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -651,7 +651,8 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
 	if (HAS_LMEM(gt->i915))
 		obj = i915_gem_object_create_lmem(gt->i915, size,
 						  I915_BO_ALLOC_CPU_CLEAR |
-						  I915_BO_ALLOC_CONTIGUOUS);
+						  I915_BO_ALLOC_CONTIGUOUS |
+						  I915_BO_ALLOC_PM_EARLY);
 	else
 		obj = i915_gem_object_create_shmem(gt->i915, size);
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index a685d563df72..3aa87be4f2e4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -372,10 +372,13 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
 		uc_fw->private_data_size = css->private_data_size;
 
-	if (HAS_LMEM(i915))
+	if (HAS_LMEM(i915)) {
 		obj = i915_gem_object_create_lmem_from_data(i915, fw->data, fw->size);
-	else
+		if (!IS_ERR(obj))
+			obj->flags |= I915_BO_ALLOC_PM_EARLY;
+	} else {
 		obj = i915_gem_object_create_shmem_from_data(i915, fw->data, fw->size);
+	}
 
 	if (IS_ERR(obj)) {
 		err = PTR_ERR(obj);
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index b56a8e37a3cd..0d18e13e3468 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1386,7 +1386,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 	enum intel_engine_id i;
 	int ret;
 
-	ppgtt = i915_ppgtt_create(&i915->gt);
+	ppgtt = i915_ppgtt_create(&i915->gt, I915_BO_ALLOC_PM_EARLY);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index 2d60a5a5b065..46f4236039a9 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -155,7 +155,7 @@ static int igt_ppgtt_alloc(void *arg)
 	if (!HAS_PPGTT(dev_priv))
 		return 0;
 
-	ppgtt = i915_ppgtt_create(&dev_priv->gt);
+	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
 	if (IS_ERR(ppgtt))
 		return PTR_ERR(ppgtt);
 
@@ -1053,7 +1053,7 @@ static int exercise_ppgtt(struct drm_i915_private *dev_priv,
 	if (IS_ERR(file))
 		return PTR_ERR(file);
 
-	ppgtt = i915_ppgtt_create(&dev_priv->gt);
+	ppgtt = i915_ppgtt_create(&dev_priv->gt, 0);
 	if (IS_ERR(ppgtt)) {
 		err = PTR_ERR(ppgtt);
 		goto out_free;
-- 
2.31.1

