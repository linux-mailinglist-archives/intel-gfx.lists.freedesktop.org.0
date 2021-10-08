Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267CE42734A
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2DF589ACC;
	Fri,  8 Oct 2021 21:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 789516E881;
 Fri,  8 Oct 2021 21:57:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="206715330"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="206715330"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="489625462"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:57:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Fri,  8 Oct 2021 14:56:30 -0700
Message-Id: <20211008215635.2026385-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211008215635.2026385-1-matthew.d.roper@intel.com>
References: <20211008215635.2026385-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Initial support for per-tile
 uncore
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Initialization and suspend/resume is replicated per-tile.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c  |  1 +
 drivers/gpu/drm/i915/i915_debugfs.c |  5 ++-
 drivers/gpu/drm/i915/i915_drv.c     | 61 ++++++++++++++++++++++-------
 3 files changed, 51 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 736725411f51..6528d21e68eb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1008,6 +1008,7 @@ void intel_gts_release(struct drm_i915_private *i915)
 void intel_gt_info_print(const struct intel_gt_info *info,
 			 struct drm_printer *p)
 {
+	drm_printf(p, "GT %u info:\n", info->id);
 	drm_printf(p, "available engines: %x\n", info->engine_mask);
 
 	intel_sseu_dump(&info->sseu, p);
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index fdbd46ff59e0..34fefdfb6661 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -60,12 +60,15 @@ static int i915_capabilities(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct drm_printer p = drm_seq_file_printer(m);
+	struct intel_gt *gt;
+	unsigned int id;
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
 	intel_device_info_print_static(INTEL_INFO(i915), &p);
 	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
-	intel_gt_info_print(&i915->gt.info, &p);
+	for_each_gt(i915, id, gt)
+		intel_gt_info_print(&gt->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
 
 	kernel_param_lock(THIS_MODULE);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 44ccf0078ac4..36b6e6f2cebf 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -406,6 +406,8 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
  */
 static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 {
+	struct intel_gt *gt;
+	unsigned int i, j;
 	int ret;
 
 	if (i915_inject_probe_failure(dev_priv))
@@ -415,26 +417,35 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (ret < 0)
 		return ret;
 
-	ret = intel_uncore_init_mmio(&dev_priv->uncore);
-	if (ret)
-		return ret;
+	for_each_gt(dev_priv, i, gt) {
+		ret = intel_uncore_init_mmio(gt->uncore);
+		if (ret)
+			goto err_uncore;
+	}
 
 	/* Try to make sure MCHBAR is enabled before poking at it */
 	intel_setup_mchbar(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
 
-	ret = intel_gt_init_mmio(&dev_priv->gt);
-	if (ret)
-		goto err_uncore;
+	for_each_gt(dev_priv, j, gt) {
+		ret = intel_gt_init_mmio(gt);
+		if (ret)
+			goto err_mchbar;
+	}
 
 	/* As early as possible, scrub existing GPU state before clobbering */
 	sanitize_gpu(dev_priv);
 
 	return 0;
 
-err_uncore:
+err_mchbar:
 	intel_teardown_mchbar(dev_priv);
-	intel_uncore_fini_mmio(&dev_priv->uncore);
+err_uncore:
+	for_each_gt(dev_priv, j, gt) {
+		if (j >= i)
+			break;
+		intel_uncore_fini_mmio(gt->uncore);
+	}
 	pci_dev_put(dev_priv->bridge_dev);
 
 	return ret;
@@ -446,8 +457,12 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
 {
+	struct intel_gt *gt;
+	unsigned int i;
+
 	intel_teardown_mchbar(dev_priv);
-	intel_uncore_fini_mmio(&dev_priv->uncore);
+	for_each_gt(dev_priv, i, gt)
+		intel_uncore_fini_mmio(gt->uncore);
 	pci_dev_put(dev_priv->bridge_dev);
 }
 
@@ -734,6 +749,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 {
 	if (drm_debug_enabled(DRM_UT_DRIVER)) {
 		struct drm_printer p = drm_debug_printer("i915 device info:");
+		struct intel_gt *gt;
+		unsigned int id;
 
 		drm_printf(&p, "pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\n",
 			   INTEL_DEVID(dev_priv),
@@ -745,7 +762,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 
 		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
 		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
-		intel_gt_info_print(&dev_priv->gt.info, &p);
+		for_each_gt(dev_priv, id, gt)
+			intel_gt_info_print(&gt->info, &p);
 	}
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
@@ -1167,13 +1185,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	struct intel_gt *gt;
+	unsigned int i;
 	int ret;
 
 	disable_rpm_wakeref_asserts(rpm);
 
 	i915_gem_suspend_late(dev_priv);
 
-	intel_uncore_suspend(&dev_priv->uncore);
+	for_each_gt(dev_priv, i, gt)
+		intel_uncore_suspend(gt->uncore);
 
 	intel_power_domains_suspend(dev_priv,
 				    get_suspend_mode(dev_priv, hibernation));
@@ -1302,6 +1323,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct intel_gt *gt;
+	unsigned int i;
 	int ret;
 
 	/*
@@ -1356,7 +1379,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 		drm_err(&dev_priv->drm,
 			"Resume prepare failed: %d, continuing anyway\n", ret);
 
-	intel_uncore_resume_early(&dev_priv->uncore);
+	for_each_gt(dev_priv, i, gt)
+		intel_uncore_resume_early(gt->uncore);
 
 	intel_gt_check_and_clear_faults(&dev_priv->gt);
 
@@ -1525,6 +1549,8 @@ static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	struct intel_gt *gt;
+	unsigned int i;
 	int ret;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
@@ -1544,7 +1570,8 @@ static int intel_runtime_suspend(struct device *kdev)
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
-	intel_uncore_suspend(&dev_priv->uncore);
+	for_each_gt(dev_priv, i, gt)
+		intel_uncore_suspend(gt->uncore);
 
 	intel_display_power_suspend(dev_priv);
 
@@ -1552,7 +1579,8 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Runtime suspend failed, disabling it (%d)\n", ret);
-		intel_uncore_runtime_resume(&dev_priv->uncore);
+		for_each_gt(dev_priv, i, gt)
+			intel_uncore_runtime_resume(gt->uncore);
 
 		intel_runtime_pm_enable_interrupts(dev_priv);
 
@@ -1608,6 +1636,8 @@ static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
+	struct intel_gt *gt;
+	unsigned int i;
 	int ret;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
@@ -1628,7 +1658,8 @@ static int intel_runtime_resume(struct device *kdev)
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
-	intel_uncore_runtime_resume(&dev_priv->uncore);
+	for_each_gt(dev_priv, i, gt)
+		intel_uncore_runtime_resume(gt->uncore);
 
 	intel_runtime_pm_enable_interrupts(dev_priv);
 
-- 
2.33.0

