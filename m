Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0C490B2D
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jan 2022 16:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76B1E88EB4;
	Mon, 17 Jan 2022 15:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C8E88862;
 Mon, 17 Jan 2022 15:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642432176; x=1673968176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/AD2x6GTAtJN06ja5FD2YHx8o0k4S41S+oMyUqgOPNc=;
 b=UKcZIvauMcApG16yuNoQd48seil5ZDpY5vhPo61cZAtD2kLYQJLkp8gN
 WyUNWR9LfktZ5Y0xgPcv6b+EE4LzULEZTasJyIA6fUr1e7DratKqEx6bW
 KbySvmCRoFwfeX2yxr52SLvj/+JWfT29L2XqaSWkt/UCR4RzNCCm/y4f6
 1A8VlOLrXgZulJ/uxTIIokYG1a3Z06UssW+Oc6bNO47E9G1W0qVGIwhV1
 QLv6j8WOtDHBqa+QwAzj1H3YviriuFvCdtTpCo7JLH4WXAucSm8BOdxLW
 iPm1HgHH5LJP+UrpCEEqwuowj2zPtnZpixMnYtKvmbv4C6ypyD1MiVkgF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="305375385"
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="305375385"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 07:09:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,295,1635231600"; d="scan'208";a="476680705"
Received: from ashvay-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.118])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 07:09:30 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Mon, 17 Jan 2022 17:09:09 +0200
Message-Id: <20220117150910.231889-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220117150910.231889-1-andi.shyti@linux.intel.com>
References: <20220117150910.231889-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Prepare for multiple GTs
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
Cc: Abdiel Janulgue <abdiel.janulgue@gmail.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

On a multi-tile platform, each tile has its own registers + GGTT
space, and BAR 0 is extended to cover all of them.

Up to four gts are supported in i915->gt[], with slot zero
shadowing the existing i915->gt0 to enable source compatibility
with legacy driver paths. A for_each_gt macro is added to iterate
over the GTs and will be used by upcoming patches that convert
various parts of the driver to be multi-gt aware.

Only the primary/root tile is initialized for now; the other
tiles will be detected and plugged in by future patches once the
necessary infrastructure is in place to handle them.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@gmail.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c            | 139 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_gt.h            |  14 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   9 +-
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
 drivers/gpu/drm/i915/i915_driver.c            |  29 ++--
 drivers/gpu/drm/i915/i915_drv.h               |   6 +
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +
 drivers/gpu/drm/i915/intel_uncore.c           |  12 +-
 drivers/gpu/drm/i915/intel_uncore.h           |   3 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   5 +-
 10 files changed, 185 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 622cdfed8a8b..17927da9e23e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -27,7 +27,8 @@
 #include "shmem_utils.h"
 #include "pxp/intel_pxp.h"
 
-void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
+static void
+__intel_gt_init_early(struct intel_gt *gt)
 {
 	spin_lock_init(&gt->irq_lock);
 
@@ -47,19 +48,27 @@ void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 	intel_rps_init_early(&gt->rps);
 }
 
+/* Preliminary initialization of Tile 0 */
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915)
 {
 	gt->i915 = i915;
 	gt->uncore = &i915->uncore;
+
+	__intel_gt_init_early(gt);
 }
 
-int intel_gt_probe_lmem(struct intel_gt *gt)
+static int intel_gt_probe_lmem(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	unsigned int instance = gt->info.id;
 	struct intel_memory_region *mem;
 	int id;
 	int err;
 
+	id = INTEL_REGION_LMEM + instance;
+	if (drm_WARN_ON(&i915->drm, id >= INTEL_REGION_STOLEN_SMEM))
+		return -ENODEV;
+
 	mem = intel_gt_setup_lmem(gt);
 	if (mem == ERR_PTR(-ENODEV))
 		mem = intel_gt_setup_fake_lmem(gt);
@@ -74,9 +83,8 @@ int intel_gt_probe_lmem(struct intel_gt *gt)
 		return err;
 	}
 
-	id = INTEL_REGION_LMEM;
-
 	mem->id = id;
+	mem->instance = instance;
 
 	intel_memory_region_set_name(mem, "local%u", mem->instance);
 
@@ -791,16 +799,21 @@ void intel_gt_driver_release(struct intel_gt *gt)
 	intel_gt_fini_buffer_pool(gt);
 }
 
-void intel_gt_driver_late_release(struct intel_gt *gt)
+void intel_gt_driver_late_release(struct drm_i915_private *i915)
 {
+	struct intel_gt *gt;
+	unsigned int id;
+
 	/* We need to wait for inflight RCU frees to release their grip */
 	rcu_barrier();
 
-	intel_uc_driver_late_release(&gt->uc);
-	intel_gt_fini_requests(gt);
-	intel_gt_fini_reset(gt);
-	intel_gt_fini_timelines(gt);
-	intel_engines_free(gt);
+	for_each_gt(gt, i915, id) {
+		intel_uc_driver_late_release(&gt->uc);
+		intel_gt_fini_requests(gt);
+		intel_gt_fini_reset(gt);
+		intel_gt_fini_timelines(gt);
+		intel_engines_free(gt);
+	}
 }
 
 /**
@@ -909,6 +922,112 @@ u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg)
 	return intel_uncore_read_fw(gt->uncore, reg);
 }
 
+static int
+intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
+{
+	struct drm_i915_private *i915 = gt->i915;
+	unsigned int id = gt->info.id;
+	int ret;
+
+	if (id) {
+		struct intel_uncore_mmio_debug *mmio_debug;
+		struct intel_uncore *uncore;
+
+		/* For multi-tile platforms BAR0 must have at least 16MB per tile */
+		if (GEM_WARN_ON(pci_resource_len(to_pci_dev(i915->drm.dev), 0) <
+				(id + 1) * SZ_16M))
+			return -EINVAL;
+
+		uncore = kzalloc(sizeof(*uncore), GFP_KERNEL);
+		if (!gt->uncore)
+			return -ENOMEM;
+
+		mmio_debug = kzalloc(sizeof(*mmio_debug), GFP_KERNEL);
+		if (!mmio_debug) {
+			kfree(uncore);
+			return -ENOMEM;
+		}
+
+		gt->uncore = uncore;
+		gt->uncore->debug = mmio_debug;
+
+		__intel_gt_init_early(gt);
+	}
+
+	intel_uncore_init_early(gt->uncore, gt);
+
+	ret = intel_uncore_setup_mmio(gt->uncore, phys_addr);
+	if (ret)
+		return ret;
+
+	gt->phys_addr = phys_addr;
+
+	return 0;
+}
+
+static void
+intel_gt_tile_cleanup(struct intel_gt *gt)
+{
+	intel_uncore_cleanup_mmio(gt->uncore);
+
+	if (gt->info.id) {
+		kfree(gt->uncore);
+		kfree(gt);
+	}
+}
+
+int intel_gt_probe_all(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct intel_gt *gt = &i915->gt0;
+	phys_addr_t phys_addr;
+	unsigned int mmio_bar;
+	int ret;
+
+	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
+	phys_addr = pci_resource_start(pdev, mmio_bar);
+
+	/*
+	 * We always have at least one primary GT on any device
+	 * and it has been already initialized early during probe
+	 * in i915_driver_probe()
+	 */
+	ret = intel_gt_tile_setup(gt, phys_addr);
+	if (ret)
+		return ret;
+
+	i915->gt[0] = gt;
+
+	/* TODO: add more tiles */
+	return 0;
+}
+
+int intel_gt_tiles_init(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	unsigned int id;
+	int ret;
+
+	for_each_gt(gt, i915, id) {
+		ret = intel_gt_probe_lmem(gt);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+void intel_gt_release_all(struct drm_i915_private *i915)
+{
+	struct intel_gt *gt;
+	unsigned int id;
+
+	for_each_gt(gt, i915, id) {
+		intel_gt_tile_cleanup(gt);
+		i915->gt[id] = NULL;
+	}
+}
+
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 94e1bac8c0cc..fcd10d88612a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -35,9 +35,7 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 }
 
 void intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
-void __intel_gt_init_early(struct intel_gt *gt, struct drm_i915_private *i915);
 int intel_gt_assign_ggtt(struct intel_gt *gt);
-int intel_gt_probe_lmem(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
 int __must_check intel_gt_init_hw(struct intel_gt *gt);
 int intel_gt_init(struct intel_gt *gt);
@@ -47,7 +45,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt);
 void intel_gt_driver_remove(struct intel_gt *gt);
 void intel_gt_driver_release(struct intel_gt *gt);
 
-void intel_gt_driver_late_release(struct intel_gt *gt);
+void intel_gt_driver_late_release(struct drm_i915_private *i915);
 
 int intel_gt_wait_for_idle(struct intel_gt *gt, long timeout);
 
@@ -86,6 +84,16 @@ static inline bool intel_gt_needs_read_steering(struct intel_gt *gt,
 
 u32 intel_gt_read_register_fw(struct intel_gt *gt, i915_reg_t reg);
 
+int intel_gt_probe_all(struct drm_i915_private *i915);
+int intel_gt_tiles_init(struct drm_i915_private *i915);
+void intel_gt_release_all(struct drm_i915_private *i915);
+
+#define for_each_gt(gt__, i915__, id__) \
+	for ((id__) = 0; \
+	     (id__) < I915_MAX_GT; \
+	     (id__)++) \
+		for_each_if(((gt__) = (i915__)->gt[(id__)]))
+
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c0fa41e4c803..e66479d33bc3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -128,7 +128,14 @@ static const struct intel_wakeref_ops wf_ops = {
 
 void intel_gt_pm_init_early(struct intel_gt *gt)
 {
-	intel_wakeref_init(&gt->wakeref, gt->uncore->rpm, &wf_ops);
+	/*
+	 * We access the runtime_pm structure via gt->i915 here rather than
+	 * gt->uncore as we do elsewhere in the file because gt->uncore is not
+	 * yet initialized for all tiles at this point in the driver startup.
+	 * runtime_pm is per-device rather than per-tile, so this is still the
+	 * correct structure.
+	 */
+	intel_wakeref_init(&gt->wakeref, &gt->i915->runtime_pm, &wf_ops);
 	seqcount_mutex_init(&gt->stats.lock, &gt->wakeref.mutex);
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 14216cc471b1..7311e485faae 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -180,7 +180,14 @@ struct intel_gt {
 
 	const struct intel_mmio_range *steering_table[NUM_STEERING_TYPES];
 
+	/*
+	 * Base of per-tile GTTMMADR where we can derive the MMIO and the GGTT.
+	 */
+	phys_addr_t phys_addr;
+
 	struct intel_gt_info {
+		unsigned int id;
+
 		intel_engine_mask_t engine_mask;
 
 		u32 l3bank_mask;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8bef67cb6c33..aa00965cd36c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -316,9 +316,8 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_device_info_subplatform_init(dev_priv);
 	intel_step_init(dev_priv);
 
-	intel_gt_init_early(to_gt(dev_priv), dev_priv);
+	/* All tiles share a single mmio_debug */
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
-	intel_uncore_init_early(&dev_priv->uncore, to_gt(dev_priv));
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
@@ -349,7 +348,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_wopcm_init_early(&dev_priv->wopcm);
 
-	__intel_gt_init_early(to_gt(dev_priv), dev_priv);
+	intel_gt_init_early(to_gt(dev_priv), dev_priv);
 
 	i915_gem_init_early(dev_priv);
 
@@ -370,7 +369,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 err_gem:
 	i915_gem_cleanup_early(dev_priv);
-	intel_gt_driver_late_release(to_gt(dev_priv));
+	intel_gt_driver_late_release(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
 err_ttm:
 	vlv_suspend_cleanup(dev_priv);
@@ -389,7 +388,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	intel_irq_fini(dev_priv);
 	intel_power_domains_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
-	intel_gt_driver_late_release(to_gt(dev_priv));
+	intel_gt_driver_late_release(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
 	vlv_suspend_cleanup(dev_priv);
 	i915_workqueues_cleanup(dev_priv);
@@ -420,13 +419,9 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (ret < 0)
 		return ret;
 
-	ret = intel_uncore_setup_mmio(&dev_priv->uncore);
-	if (ret < 0)
-		goto err_bridge;
-
 	ret = intel_uncore_init_mmio(&dev_priv->uncore);
 	if (ret)
-		goto err_mmio;
+		return ret;
 
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_setup_mchbar(dev_priv);
@@ -444,9 +439,6 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 err_uncore:
 	intel_teardown_mchbar(dev_priv);
 	intel_uncore_fini_mmio(&dev_priv->uncore);
-err_mmio:
-	intel_uncore_cleanup_mmio(&dev_priv->uncore);
-err_bridge:
 	pci_dev_put(dev_priv->bridge_dev);
 
 	return ret;
@@ -460,7 +452,6 @@ static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
 {
 	intel_teardown_mchbar(dev_priv);
 	intel_uncore_fini_mmio(&dev_priv->uncore);
-	intel_uncore_cleanup_mmio(&dev_priv->uncore);
 	pci_dev_put(dev_priv->bridge_dev);
 }
 
@@ -593,7 +584,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_ggtt;
 
-	ret = intel_gt_probe_lmem(to_gt(dev_priv));
+	ret = intel_gt_tiles_init(dev_priv);
 	if (ret)
 		goto err_mem_regions;
 
@@ -858,10 +849,14 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	intel_vgpu_detect(i915);
 
-	ret = i915_driver_mmio_probe(i915);
+	ret = intel_gt_probe_all(i915);
 	if (ret < 0)
 		goto out_runtime_pm_put;
 
+	ret = i915_driver_mmio_probe(i915);
+	if (ret < 0)
+		goto out_tiles_cleanup;
+
 	ret = i915_driver_hw_probe(i915);
 	if (ret < 0)
 		goto out_cleanup_mmio;
@@ -918,6 +913,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
 	i915_driver_mmio_release(i915);
+out_tiles_cleanup:
+	intel_gt_release_all(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 	i915_driver_late_release(i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 890f1f6fbc49..ec76011366fb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -983,6 +983,12 @@ struct drm_i915_private {
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
 	struct intel_gt gt0;
 
+	/*
+	 * i915->gt[0] == &i915->gt0
+	 */
+#define I915_MAX_GT 4
+	struct intel_gt *gt[I915_MAX_GT];
+
 	struct {
 		struct i915_gem_contexts {
 			spinlock_t lock; /* locks list */
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 5625c9c38993..6a6324a08e72 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -30,6 +30,9 @@ enum intel_memory_type {
 enum intel_region_id {
 	INTEL_REGION_SMEM = 0,
 	INTEL_REGION_LMEM,
+	INTEL_REGION_LMEM1,
+	INTEL_REGION_LMEM2,
+	INTEL_REGION_LMEM3,
 	INTEL_REGION_STOLEN_SMEM,
 	INTEL_REGION_STOLEN_LMEM,
 	INTEL_REGION_UNKNOWN, /* Should be last */
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 41d082213e81..016639c1275d 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2020,14 +2020,11 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
 	return NOTIFY_OK;
 }
 
-int intel_uncore_setup_mmio(struct intel_uncore *uncore)
+int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
 {
 	struct drm_i915_private *i915 = uncore->i915;
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
-	int mmio_bar;
 	int mmio_size;
 
-	mmio_bar = GRAPHICS_VER(i915) == 2 ? 1 : 0;
 	/*
 	 * Before gen4, the registers and the GTT are behind different BARs.
 	 * However, from gen4 onwards, the registers and the GTT are shared
@@ -2044,7 +2041,7 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
 	else
 		mmio_size = 2 * 1024 * 1024;
 
-	uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
+	uncore->regs = ioremap(phys_addr, mmio_size);
 	if (uncore->regs == NULL) {
 		drm_err(&i915->drm, "failed to map registers\n");
 		return -EIO;
@@ -2055,9 +2052,8 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore)
 
 void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
 {
-	struct pci_dev *pdev = to_pci_dev(uncore->i915->drm.dev);
-
-	pci_iounmap(pdev, uncore->regs);
+	if (uncore->regs)
+		iounmap(uncore->regs);
 }
 
 void intel_uncore_init_early(struct intel_uncore *uncore,
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 210fe2a71612..2989032b580b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -29,6 +29,7 @@
 #include <linux/notifier.h>
 #include <linux/hrtimer.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
+#include <linux/types.h>
 
 #include "i915_reg.h"
 
@@ -219,7 +220,7 @@ void
 intel_uncore_mmio_debug_init_early(struct intel_uncore_mmio_debug *mmio_debug);
 void intel_uncore_init_early(struct intel_uncore *uncore,
 			     struct intel_gt *gt);
-int intel_uncore_setup_mmio(struct intel_uncore *uncore);
+int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr);
 int intel_uncore_init_mmio(struct intel_uncore *uncore);
 void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 					  struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 28a0f054009a..79520f217c90 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -73,7 +73,7 @@ static void mock_device_release(struct drm_device *dev)
 	destroy_workqueue(i915->wq);
 
 	intel_region_ttm_device_fini(i915);
-	intel_gt_driver_late_release(to_gt(i915));
+	intel_gt_driver_late_release(i915);
 	intel_memory_regions_driver_release(i915);
 
 	drm_mode_config_cleanup(&i915->drm);
@@ -179,7 +179,6 @@ struct drm_i915_private *mock_gem_device(void)
 
 	i915_gem_init__mm(i915);
 	intel_gt_init_early(to_gt(i915), i915);
-	__intel_gt_init_early(to_gt(i915), i915);
 	mock_uncore_init(&i915->uncore, i915);
 	atomic_inc(&to_gt(i915)->wakeref.count); /* disable; no hw support */
 	to_gt(i915)->awake = -ENODEV;
@@ -227,7 +226,7 @@ struct drm_i915_private *mock_gem_device(void)
 err_drv:
 	intel_region_ttm_device_fini(i915);
 err_ttm:
-	intel_gt_driver_late_release(to_gt(i915));
+	intel_gt_driver_late_release(i915);
 	intel_memory_regions_driver_release(i915);
 	drm_mode_config_cleanup(&i915->drm);
 	mock_destroy_device(i915);
-- 
2.34.1

