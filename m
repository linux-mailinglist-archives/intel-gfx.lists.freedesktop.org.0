Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F87471B2F
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Dec 2021 16:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374FC10F594;
	Sun, 12 Dec 2021 15:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1084910F592;
 Sun, 12 Dec 2021 15:13:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="299393846"
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="299393846"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:13:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,200,1635231600"; d="scan'208";a="463116964"
Received: from nipunpan-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.91])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 07:13:09 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Sun, 12 Dec 2021 17:13:05 +0200
Message-Id: <20211212151305.118148-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 09/12] drm/i915: Use to_gt() helper
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Michał Winiarski <michal.winiarski@intel.com>

Use to_gt() helper consistently throughout the codebase.
Pure mechanical s/i915->gt/to_gt(i915). No functional changes.

Signed-off-by: Michał Winiarski <michal.winiarski@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c        | 38 +++++++--------
 drivers/gpu/drm/i915/i915_debugfs_params.c |  4 +-
 drivers/gpu/drm/i915/i915_driver.c         | 32 ++++++-------
 drivers/gpu/drm/i915/i915_drv.h            |  2 +-
 drivers/gpu/drm/i915/i915_gem.c            | 16 +++----
 drivers/gpu/drm/i915/i915_getparam.c       | 10 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c      |  4 +-
 drivers/gpu/drm/i915/i915_irq.c            | 56 +++++++++++-----------
 drivers/gpu/drm/i915/i915_perf.c           |  2 +-
 drivers/gpu/drm/i915/i915_pmu.c            | 14 +++---
 drivers/gpu/drm/i915/i915_query.c          |  2 +-
 drivers/gpu/drm/i915/i915_sysfs.c          | 22 ++++-----
 drivers/gpu/drm/i915/intel_gvt.c           |  2 +-
 drivers/gpu/drm/i915/intel_wopcm.c         |  2 +-
 14 files changed, 103 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index bafb902269de..93c3d154885b 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -65,7 +65,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	intel_device_info_print_static(INTEL_INFO(i915), &p);
 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
-	intel_gt_info_print(&i915->gt.info, &p);
+	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
 	kernel_param_lock(THIS_MODULE);
@@ -293,7 +293,7 @@ static int i915_gpu_info_open(struct inode *inode, struct file *file)
 
 	gpu = NULL;
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
-		gpu = i915_gpu_coredump(&i915->gt, ALL_ENGINES);
+		gpu = i915_gpu_coredump(to_gt(i915), ALL_ENGINES);
 	if (IS_ERR(gpu))
 		return PTR_ERR(gpu);
 
@@ -351,7 +351,7 @@ static const struct file_operations i915_error_state_fops = {
 static int i915_frequency_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	intel_gt_pm_frequency_dump(gt, &p);
@@ -439,11 +439,11 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 static int i915_rps_boost_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_rps *rps = &to_gt(dev_priv)->rps;
 
 	seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
 	seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
-	seq_printf(m, "GPU busy? %s\n", yesno(dev_priv->gt.awake));
+	seq_printf(m, "GPU busy? %s\n", yesno(to_gt(dev_priv)->awake));
 	seq_printf(m, "Boosts outstanding? %d\n",
 		   atomic_read(&rps->num_waiters));
 	seq_printf(m, "Interactive? %d\n", READ_ONCE(rps->power.interactive));
@@ -476,7 +476,7 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 	seq_printf(m, "Runtime power status: %s\n",
 		   enableddisabled(!dev_priv->power_domains.init_wakeref));
 
-	seq_printf(m, "GPU idle: %s\n", yesno(!dev_priv->gt.awake));
+	seq_printf(m, "GPU idle: %s\n", yesno(!to_gt(dev_priv)->awake));
 	seq_printf(m, "IRQs disabled: %s\n",
 		   yesno(!intel_irqs_enabled(dev_priv)));
 #ifdef CONFIG_PM
@@ -508,18 +508,18 @@ static int i915_engine_info(struct seq_file *m, void *unused)
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "GT awake? %s [%d], %llums\n",
-		   yesno(i915->gt.awake),
-		   atomic_read(&i915->gt.wakeref.count),
-		   ktime_to_ms(intel_gt_get_awake_time(&i915->gt)));
+		   yesno(to_gt(i915)->awake),
+		   atomic_read(&to_gt(i915)->wakeref.count),
+		   ktime_to_ms(intel_gt_get_awake_time(to_gt(i915))));
 	seq_printf(m, "CS timestamp frequency: %u Hz, %d ns\n",
-		   i915->gt.clock_frequency,
-		   i915->gt.clock_period_ns);
+		   to_gt(i915)->clock_frequency,
+		   to_gt(i915)->clock_period_ns);
 
 	p = drm_seq_file_printer(m);
 	for_each_uabi_engine(engine, i915)
 		intel_engine_dump(engine, &p, "%s\n", engine->name);
 
-	intel_gt_show_timelines(&i915->gt, &p, i915_request_show_with_schedule);
+	intel_gt_show_timelines(to_gt(i915), &p, i915_request_show_with_schedule);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
@@ -558,14 +558,14 @@ static int i915_wedged_get(void *data, u64 *val)
 {
 	struct drm_i915_private *i915 = data;
 
-	return intel_gt_debugfs_reset_show(&i915->gt, val);
+	return intel_gt_debugfs_reset_show(to_gt(i915), val);
 }
 
 static int i915_wedged_set(void *data, u64 val)
 {
 	struct drm_i915_private *i915 = data;
 
-	return intel_gt_debugfs_reset_store(&i915->gt, val);
+	return intel_gt_debugfs_reset_store(to_gt(i915), val);
 }
 
 DEFINE_SIMPLE_ATTRIBUTE(i915_wedged_fops,
@@ -581,7 +581,7 @@ i915_perf_noa_delay_set(void *data, u64 val)
 	 * This would lead to infinite waits as we're doing timestamp
 	 * difference on the CS with only 32bits.
 	 */
-	if (intel_gt_ns_to_clock_interval(&i915->gt, val) > U32_MAX)
+	if (intel_gt_ns_to_clock_interval(to_gt(i915), val) > U32_MAX)
 		return -EINVAL;
 
 	atomic64_set(&i915->perf.noa_programming_delay, val);
@@ -671,7 +671,7 @@ i915_drop_caches_set(void *data, u64 val)
 	DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
 		  val, val & DROP_ALL);
 
-	ret = gt_drop_caches(&i915->gt, val);
+	ret = gt_drop_caches(to_gt(i915), val);
 	if (ret)
 		return ret;
 
@@ -702,7 +702,7 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
 static int i915_sseu_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	return intel_sseu_status(m, gt);
 }
@@ -711,14 +711,14 @@ static int i915_forcewake_open(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
 
-	return intel_gt_pm_debugfs_forcewake_user_open(&i915->gt);
+	return intel_gt_pm_debugfs_forcewake_user_open(to_gt(i915));
 }
 
 static int i915_forcewake_release(struct inode *inode, struct file *file)
 {
 	struct drm_i915_private *i915 = inode->i_private;
 
-	return intel_gt_pm_debugfs_forcewake_user_release(&i915->gt);
+	return intel_gt_pm_debugfs_forcewake_user_release(to_gt(i915));
 }
 
 static const struct file_operations i915_forcewake_fops = {
diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
index 20424275d41e..783c8676eee2 100644
--- a/drivers/gpu/drm/i915/i915_debugfs_params.c
+++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
@@ -40,8 +40,8 @@ static int notify_guc(struct drm_i915_private *i915)
 {
 	int ret = 0;
 
-	if (intel_uc_uses_guc_submission(&i915->gt.uc))
-		ret = intel_guc_global_policies_update(&i915->gt.uc.guc);
+	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
+		ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 42ae5a12040d..95174938b160 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -291,7 +291,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 static void sanitize_gpu(struct drm_i915_private *i915)
 {
 	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display)
-		__intel_gt_reset(&i915->gt, ALL_ENGINES);
+		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
 }
 
 /**
@@ -314,9 +314,9 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_device_info_subplatform_init(dev_priv);
 	intel_step_init(dev_priv);
 
-	intel_gt_init_early(&dev_priv->gt, dev_priv);
+	intel_gt_init_early(to_gt(dev_priv), dev_priv);
 	intel_uncore_mmio_debug_init_early(&dev_priv->mmio_debug);
-	intel_uncore_init_early(&dev_priv->uncore, &dev_priv->gt);
+	intel_uncore_init_early(&dev_priv->uncore, to_gt(dev_priv));
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
@@ -347,7 +347,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_wopcm_init_early(&dev_priv->wopcm);
 
-	__intel_gt_init_early(&dev_priv->gt, dev_priv);
+	__intel_gt_init_early(to_gt(dev_priv), dev_priv);
 
 	i915_gem_init_early(dev_priv);
 
@@ -368,7 +368,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 err_gem:
 	i915_gem_cleanup_early(dev_priv);
-	intel_gt_driver_late_release(&dev_priv->gt);
+	intel_gt_driver_late_release(to_gt(dev_priv));
 	intel_region_ttm_device_fini(dev_priv);
 err_ttm:
 	vlv_suspend_cleanup(dev_priv);
@@ -387,7 +387,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	intel_irq_fini(dev_priv);
 	intel_power_domains_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
-	intel_gt_driver_late_release(&dev_priv->gt);
+	intel_gt_driver_late_release(to_gt(dev_priv));
 	intel_region_ttm_device_fini(dev_priv);
 	vlv_suspend_cleanup(dev_priv);
 	i915_workqueues_cleanup(dev_priv);
@@ -430,7 +430,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	intel_setup_mchbar(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
 
-	ret = intel_gt_init_mmio(&dev_priv->gt);
+	ret = intel_gt_init_mmio(to_gt(dev_priv));
 	if (ret)
 		goto err_uncore;
 
@@ -587,9 +587,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_ggtt;
 
-	intel_gt_init_hw_early(&dev_priv->gt, &dev_priv->ggtt);
+	intel_gt_init_hw_early(to_gt(dev_priv), &dev_priv->ggtt);
 
-	ret = intel_gt_probe_lmem(&dev_priv->gt);
+	ret = intel_gt_probe_lmem(to_gt(dev_priv));
 	if (ret)
 		goto err_mem_regions;
 
@@ -702,7 +702,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	/* Depends on sysfs having been initialized */
 	i915_perf_register(dev_priv);
 
-	intel_gt_driver_register(&dev_priv->gt);
+	intel_gt_driver_register(to_gt(dev_priv));
 
 	intel_display_driver_register(dev_priv);
 
@@ -730,7 +730,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
-	intel_gt_driver_unregister(&dev_priv->gt);
+	intel_gt_driver_unregister(to_gt(dev_priv));
 
 	i915_perf_unregister(dev_priv);
 	i915_pmu_unregister(dev_priv);
@@ -763,7 +763,7 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
-		intel_gt_info_print(&dev_priv->gt.info, &p);
+		intel_gt_info_print(&to_gt(dev_priv)->info, &p);
 	}
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
@@ -1385,7 +1385,7 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_uncore_resume_early(&dev_priv->uncore);
 
-	intel_gt_check_and_clear_faults(&dev_priv->gt);
+	intel_gt_check_and_clear_faults(to_gt(dev_priv));
 
 	intel_display_power_resume_early(dev_priv);
 
@@ -1568,7 +1568,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	 */
 	i915_gem_runtime_suspend(dev_priv);
 
-	intel_gt_runtime_suspend(&dev_priv->gt);
+	intel_gt_runtime_suspend(to_gt(dev_priv));
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
@@ -1584,7 +1584,7 @@ static int intel_runtime_suspend(struct device *kdev)
 
 		intel_runtime_pm_enable_interrupts(dev_priv);
 
-		intel_gt_runtime_resume(&dev_priv->gt);
+		intel_gt_runtime_resume(to_gt(dev_priv));
 
 		enable_rpm_wakeref_asserts(rpm);
 
@@ -1672,7 +1672,7 @@ static int intel_runtime_resume(struct device *kdev)
 	 * No point of rolling back things in case of an error, as the best
 	 * we can do is to hope that things will still work (and disable RPM).
 	 */
-	intel_gt_runtime_resume(&dev_priv->gt);
+	intel_gt_runtime_resume(to_gt(dev_priv));
 
 	/*
 	 * On VLV/CHV display interrupts are part of the display
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c8dd0f521ac..902bb89f628f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1553,7 +1553,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
 			    INTEL_INFO(dev_priv)->has_pxp) && \
-			    VDBOX_MASK(&dev_priv->gt))
+			    VDBOX_MASK(to_gt(dev_priv)))
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 527228d4da7e..8ba2119092f2 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1049,7 +1049,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	if (ret)
 		return ret;
 
-	intel_uc_fetch_firmwares(&dev_priv->gt.uc);
+	intel_uc_fetch_firmwares(&to_gt(dev_priv)->uc);
 	intel_wopcm_init(&dev_priv->wopcm);
 
 	ret = i915_init_ggtt(dev_priv);
@@ -1069,7 +1069,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	 */
 	intel_init_clock_gating(dev_priv);
 
-	ret = intel_gt_init(&dev_priv->gt);
+	ret = intel_gt_init(to_gt(dev_priv));
 	if (ret)
 		goto err_unlock;
 
@@ -1085,7 +1085,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	i915_gem_drain_workqueue(dev_priv);
 
 	if (ret != -EIO)
-		intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
+		intel_uc_cleanup_firmwares(&to_gt(dev_priv)->uc);
 
 	if (ret == -EIO) {
 		/*
@@ -1093,10 +1093,10 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 		 * as wedged. But we only want to do this when the GPU is angry,
 		 * for all other failure, such as an allocation failure, bail.
 		 */
-		if (!intel_gt_is_wedged(&dev_priv->gt)) {
+		if (!intel_gt_is_wedged(to_gt(dev_priv))) {
 			i915_probe_error(dev_priv,
 					 "Failed to initialize GPU, declaring it wedged!\n");
-			intel_gt_set_wedged(&dev_priv->gt);
+			intel_gt_set_wedged(to_gt(dev_priv));
 		}
 
 		/* Minimal basic recovery for KMS */
@@ -1127,7 +1127,7 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 	intel_wakeref_auto_fini(&dev_priv->ggtt.userfault_wakeref);
 
 	i915_gem_suspend_late(dev_priv);
-	intel_gt_driver_remove(&dev_priv->gt);
+	intel_gt_driver_remove(to_gt(dev_priv));
 	dev_priv->uabi_engines = RB_ROOT;
 
 	/* Flush any outstanding unpin_work. */
@@ -1138,9 +1138,9 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 {
-	intel_gt_driver_release(&dev_priv->gt);
+	intel_gt_driver_release(to_gt(dev_priv));
 
-	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
+	intel_uc_cleanup_firmwares(&to_gt(dev_priv)->uc);
 
 	i915_gem_drain_freed_objects(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index 77490cb5ff9c..7f80ad247bc8 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -13,7 +13,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
-	const struct sseu_dev_info *sseu = &i915->gt.info.sseu;
+	const struct sseu_dev_info *sseu = &to_gt(i915)->info.sseu;
 	drm_i915_getparam_t *param = data;
 	int value = 0;
 
@@ -82,8 +82,8 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		break;
 	case I915_PARAM_HAS_GPU_RESET:
 		value = i915->params.enable_hangcheck &&
-			intel_has_gpu_reset(&i915->gt);
-		if (value && intel_has_reset_engine(&i915->gt))
+			intel_has_gpu_reset(to_gt(i915));
+		if (value && intel_has_reset_engine(to_gt(i915)))
 			value = 2;
 		break;
 	case I915_PARAM_HAS_RESOURCE_STREAMER:
@@ -96,7 +96,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = sseu->min_eu_in_pool;
 		break;
 	case I915_PARAM_HUC_STATUS:
-		value = intel_huc_check_status(&i915->gt.uc.huc);
+		value = intel_huc_check_status(&to_gt(i915)->uc.huc);
 		if (value < 0)
 			return value;
 		break;
@@ -158,7 +158,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 			return -ENODEV;
 		break;
 	case I915_PARAM_CS_TIMESTAMP_FREQUENCY:
-		value = i915->gt.clock_frequency;
+		value = to_gt(i915)->clock_frequency;
 		break;
 	case I915_PARAM_MMAP_GTT_COHERENT:
 		value = INTEL_INFO(i915)->has_coherent_ggtt;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 96d2d99f5b98..90b5bbcd344c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -505,7 +505,7 @@ static void error_print_context(struct drm_i915_error_state_buf *m,
 				const char *header,
 				const struct i915_gem_context_coredump *ctx)
 {
-	const u32 period = m->i915->gt.clock_period_ns;
+	const u32 period = to_gt(m->i915)->clock_period_ns;
 
 	err_printf(m, "%s%s[%d] prio %d, guilty %d active %d, runtime total %lluns, avg %lluns\n",
 		   header, ctx->comm, ctx->pid, ctx->sched_attr.priority,
@@ -1849,7 +1849,7 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 
 	error->time = ktime_get_real();
 	error->boottime = ktime_get_boottime();
-	error->uptime = ktime_sub(ktime_get(), i915->gt.last_init_time);
+	error->uptime = ktime_sub(ktime_get(), to_gt(i915)->last_init_time);
 	error->capture = jiffies;
 
 	capture_gen(error);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 5b98fb0532b5..21f75b069fa8 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1040,7 +1040,7 @@ static void ivb_parity_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), l3_parity.error_work);
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	u32 error_status, row, bank, subbank;
 	char *parity_event[6];
 	u32 misccpctl;
@@ -1718,9 +1718,9 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
 
 		if (gt_iir)
-			gen6_gt_irq_handler(&dev_priv->gt, gt_iir);
+			gen6_gt_irq_handler(to_gt(dev_priv), gt_iir);
 		if (pm_iir)
-			gen6_rps_irq_handler(&dev_priv->gt.rps, pm_iir);
+			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
 
 		if (hotplug_status)
 			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
@@ -1777,7 +1777,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
 		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
 		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
 
-		gen8_gt_irq_handler(&dev_priv->gt, master_ctl);
+		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
 		if (iir & I915_DISPLAY_PORT_INTERRUPT)
 			hotplug_status = i9xx_hpd_irq_ack(dev_priv);
@@ -2108,7 +2108,7 @@ static void ilk_display_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) == 5 && de_iir & DE_PCU_EVENT)
-		gen5_rps_irq_handler(&dev_priv->gt.rps);
+		gen5_rps_irq_handler(&to_gt(dev_priv)->rps);
 }
 
 static void ivb_display_irq_handler(struct drm_i915_private *dev_priv,
@@ -2189,9 +2189,9 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 	if (gt_iir) {
 		raw_reg_write(regs, GTIIR, gt_iir);
 		if (GRAPHICS_VER(i915) >= 6)
-			gen6_gt_irq_handler(&i915->gt, gt_iir);
+			gen6_gt_irq_handler(to_gt(i915), gt_iir);
 		else
-			gen5_gt_irq_handler(&i915->gt, gt_iir);
+			gen5_gt_irq_handler(to_gt(i915), gt_iir);
 		ret = IRQ_HANDLED;
 	}
 
@@ -2209,7 +2209,7 @@ static irqreturn_t ilk_irq_handler(int irq, void *arg)
 		u32 pm_iir = raw_reg_read(regs, GEN6_PMIIR);
 		if (pm_iir) {
 			raw_reg_write(regs, GEN6_PMIIR, pm_iir);
-			gen6_rps_irq_handler(&i915->gt.rps, pm_iir);
+			gen6_rps_irq_handler(&to_gt(i915)->rps, pm_iir);
 			ret = IRQ_HANDLED;
 		}
 	}
@@ -2635,7 +2635,7 @@ static irqreturn_t gen8_irq_handler(int irq, void *arg)
 	}
 
 	/* Find, queue (onto bottom-halves), then clear each source */
-	gen8_gt_irq_handler(&dev_priv->gt, master_ctl);
+	gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
 
 	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
 	if (master_ctl & ~GEN8_GT_IRQS) {
@@ -2715,7 +2715,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *i915 = arg;
 	void __iomem * const regs = i915->uncore.regs;
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	u32 master_ctl;
 	u32 gu_misc_iir;
 
@@ -2771,7 +2771,7 @@ static inline void dg1_master_intr_enable(void __iomem * const regs)
 static irqreturn_t dg1_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private * const i915 = arg;
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	void __iomem * const regs = gt->uncore->regs;
 	u32 master_tile_ctl, master_ctl;
 	u32 gu_misc_iir;
@@ -3075,7 +3075,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
 		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
 	}
 
-	gen5_gt_irq_reset(&dev_priv->gt);
+	gen5_gt_irq_reset(to_gt(dev_priv));
 
 	ibx_irq_reset(dev_priv);
 }
@@ -3085,7 +3085,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
 
-	gen5_gt_irq_reset(&dev_priv->gt);
+	gen5_gt_irq_reset(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display_irqs_enabled)
@@ -3119,7 +3119,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 	gen8_master_intr_disable(dev_priv->uncore.regs);
 
-	gen8_gt_irq_reset(&dev_priv->gt);
+	gen8_gt_irq_reset(to_gt(dev_priv));
 	gen8_display_irq_reset(dev_priv);
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
 
@@ -3173,7 +3173,7 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 
 	gen11_master_intr_disable(dev_priv->uncore.regs);
@@ -3187,7 +3187,7 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 
 	dg1_master_intr_disable(dev_priv->uncore.regs);
@@ -3252,7 +3252,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 
-	gen8_gt_irq_reset(&dev_priv->gt);
+	gen8_gt_irq_reset(to_gt(dev_priv));
 
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
 
@@ -3709,7 +3709,7 @@ static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	ibx_irq_postinstall(dev_priv);
 
-	gen5_gt_irq_postinstall(&dev_priv->gt);
+	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
 	GEN3_IRQ_INIT(uncore, DE, dev_priv->irq_mask,
 		      display_mask | extra_mask);
@@ -3746,7 +3746,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
 
 static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	gen5_gt_irq_postinstall(&dev_priv->gt);
+	gen5_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display_irqs_enabled)
@@ -3852,7 +3852,7 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	else if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_postinstall(dev_priv);
 
-	gen8_gt_irq_postinstall(&dev_priv->gt);
+	gen8_gt_irq_postinstall(to_gt(dev_priv));
 	gen8_de_irq_postinstall(dev_priv);
 
 	gen8_master_intr_enable(dev_priv->uncore.regs);
@@ -3871,7 +3871,7 @@ static void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 
@@ -3889,7 +3889,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_uncore *uncore = gt->uncore;
 	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
 
@@ -3910,7 +3910,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	gen8_gt_irq_postinstall(&dev_priv->gt);
+	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display_irqs_enabled)
@@ -4073,7 +4073,7 @@ static irqreturn_t i8xx_irq_handler(int irq, void *arg)
 		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
+			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], iir);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -4181,7 +4181,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_cs_irq(dev_priv->gt.engine[RCS0], iir);
+			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], iir);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
 			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
@@ -4326,11 +4326,11 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 		intel_uncore_write(&dev_priv->uncore, GEN2_IIR, iir);
 
 		if (iir & I915_USER_INTERRUPT)
-			intel_engine_cs_irq(dev_priv->gt.engine[RCS0],
+			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0],
 					    iir);
 
 		if (iir & I915_BSD_USER_INTERRUPT)
-			intel_engine_cs_irq(dev_priv->gt.engine[VCS0],
+			intel_engine_cs_irq(to_gt(dev_priv)->engine[VCS0],
 					    iir >> 25);
 
 		if (iir & I915_MASTER_ERROR_INTERRUPT)
@@ -4381,7 +4381,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
 	if (HAS_GT_UC(dev_priv) && GRAPHICS_VER(dev_priv) < 11)
-		dev_priv->gt.pm_guc_events = GUC_INTR_GUC2HOST << 16;
+		to_gt(dev_priv)->pm_guc_events = GUC_INTR_GUC2HOST << 16;
 
 	if (!HAS_DISPLAY(dev_priv))
 		return;
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2f01b8c0284c..170bba913c30 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4443,7 +4443,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 		mutex_init(&perf->lock);
 
 		/* Choose a representative limit */
-		oa_sample_rate_hard_limit = i915->gt.clock_frequency / 2;
+		oa_sample_rate_hard_limit = to_gt(i915)->clock_frequency / 2;
 
 		mutex_init(&perf->metrics_lock);
 		idr_init_base(&perf->metrics_idr, 1);
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 0b488d49694c..ea655161793e 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -210,8 +210,8 @@ static void init_rc6(struct i915_pmu *pmu)
 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
 	intel_wakeref_t wakeref;
 
-	with_intel_runtime_pm(i915->gt.uncore->rpm, wakeref) {
-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
+	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
+		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
 		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
 					pmu->sample[__I915_SAMPLE_RC6].cur;
 		pmu->sleep_last = ktime_get_raw();
@@ -222,7 +222,7 @@ static void park_rc6(struct drm_i915_private *i915)
 {
 	struct i915_pmu *pmu = &i915->pmu;
 
-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
 	pmu->sleep_last = ktime_get_raw();
 }
 
@@ -419,7 +419,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 	struct drm_i915_private *i915 =
 		container_of(hrtimer, struct drm_i915_private, pmu.timer);
 	struct i915_pmu *pmu = &i915->pmu;
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	unsigned int period_ns;
 	ktime_t now;
 
@@ -476,7 +476,7 @@ engine_event_status(struct intel_engine_cs *engine,
 static int
 config_status(struct drm_i915_private *i915, u64 config)
 {
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 
 	switch (config) {
 	case I915_PMU_ACTUAL_FREQUENCY:
@@ -601,10 +601,10 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 			val = READ_ONCE(pmu->irq_count);
 			break;
 		case I915_PMU_RC6_RESIDENCY:
-			val = get_rc6(&i915->gt);
+			val = get_rc6(to_gt(i915));
 			break;
 		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
-			val = ktime_to_ns(intel_gt_get_awake_time(&i915->gt));
+			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
 			break;
 		}
 	}
diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
index 51b368be0fc4..2dfbc22857a3 100644
--- a/drivers/gpu/drm/i915/i915_query.c
+++ b/drivers/gpu/drm/i915/i915_query.c
@@ -31,7 +31,7 @@ static int copy_query_item(void *query_hdr, size_t query_sz,
 static int query_topology_info(struct drm_i915_private *dev_priv,
 			       struct drm_i915_query_item *query_item)
 {
-	const struct sseu_dev_info *sseu = &dev_priv->gt.info.sseu;
+	const struct sseu_dev_info *sseu = &to_gt(dev_priv)->info.sseu;
 	struct drm_i915_query_topology_info topo;
 	u32 slice_length, subslice_length, eu_length, total_length;
 	int ret;
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 59d441cedc75..fae4d1f4f275 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -52,7 +52,7 @@ static u32 calc_residency(struct drm_i915_private *dev_priv,
 	u64 res = 0;
 
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
-		res = intel_rc6_residency_us(&dev_priv->gt.rc6, reg);
+		res = intel_rc6_residency_us(&to_gt(dev_priv)->rc6, reg);
 
 	return DIV_ROUND_CLOSEST_ULL(res, 1000);
 }
@@ -260,7 +260,7 @@ static ssize_t gt_act_freq_mhz_show(struct device *kdev,
 				    struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &i915->gt.rps;
+	struct intel_rps *rps = &to_gt(i915)->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_rps_read_actual_frequency(rps));
 }
@@ -269,7 +269,7 @@ static ssize_t gt_cur_freq_mhz_show(struct device *kdev,
 				    struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &i915->gt.rps;
+	struct intel_rps *rps = &to_gt(i915)->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_rps_get_requested_frequency(rps));
 }
@@ -277,7 +277,7 @@ static ssize_t gt_cur_freq_mhz_show(struct device *kdev,
 static ssize_t gt_boost_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &i915->gt.rps;
+	struct intel_rps *rps = &to_gt(i915)->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_rps_get_boost_frequency(rps));
 }
@@ -287,7 +287,7 @@ static ssize_t gt_boost_freq_mhz_store(struct device *kdev,
 				       const char *buf, size_t count)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_rps *rps = &to_gt(dev_priv)->rps;
 	ssize_t ret;
 	u32 val;
 
@@ -304,7 +304,7 @@ static ssize_t vlv_rpe_freq_mhz_show(struct device *kdev,
 				     struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_rps *rps = &to_gt(dev_priv)->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_gpu_freq(rps, rps->efficient_freq));
 }
@@ -312,7 +312,7 @@ static ssize_t vlv_rpe_freq_mhz_show(struct device *kdev,
 static ssize_t gt_max_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_rps *rps = &gt->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_rps_get_max_frequency(rps));
@@ -323,7 +323,7 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
 				     const char *buf, size_t count)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_gt *gt = to_gt(dev_priv);
 	struct intel_rps *rps = &gt->rps;
 	ssize_t ret;
 	u32 val;
@@ -340,7 +340,7 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
 static ssize_t gt_min_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	struct intel_rps *rps = &gt->rps;
 
 	return sysfs_emit(buf, "%d\n", intel_rps_get_min_frequency(rps));
@@ -351,7 +351,7 @@ static ssize_t gt_min_freq_mhz_store(struct device *kdev,
 				     const char *buf, size_t count)
 {
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &i915->gt.rps;
+	struct intel_rps *rps = &to_gt(i915)->rps;
 	ssize_t ret;
 	u32 val;
 
@@ -381,7 +381,7 @@ static DEVICE_ATTR(gt_RPn_freq_mhz, S_IRUGO, gt_rp_mhz_show, NULL);
 static ssize_t gt_rp_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_rps *rps = &to_gt(dev_priv)->rps;
 	u32 val;
 
 	if (attr == &dev_attr_gt_RP0_freq_mhz)
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index 4e70c1a9ef2e..cf6e98962d82 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -109,7 +109,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
 		return 0;
 	}
 
-	if (intel_uc_wants_guc_submission(&dev_priv->gt.uc)) {
+	if (intel_uc_wants_guc_submission(&to_gt(dev_priv)->uc)) {
 		drm_err(&dev_priv->drm,
 			"i915 GVT-g loading failed due to Graphics virtualization is not yet supported with GuC submission\n");
 		return -EIO;
diff --git a/drivers/gpu/drm/i915/intel_wopcm.c b/drivers/gpu/drm/i915/intel_wopcm.c
index 5e511bb891f9..f06d21005106 100644
--- a/drivers/gpu/drm/i915/intel_wopcm.c
+++ b/drivers/gpu/drm/i915/intel_wopcm.c
@@ -220,7 +220,7 @@ static bool __wopcm_regs_locked(struct intel_uncore *uncore,
 void intel_wopcm_init(struct intel_wopcm *wopcm)
 {
 	struct drm_i915_private *i915 = wopcm_to_i915(wopcm);
-	struct intel_gt *gt = &i915->gt;
+	struct intel_gt *gt = to_gt(i915);
 	u32 guc_fw_size = intel_uc_fw_get_upload_size(&gt->uc.guc.fw);
 	u32 huc_fw_size = intel_uc_fw_get_upload_size(&gt->uc.huc.fw);
 	u32 ctx_rsvd = context_reserved_size(i915);
-- 
2.34.1

