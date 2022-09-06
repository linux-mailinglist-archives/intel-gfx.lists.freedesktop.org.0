Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F5F5AF8A6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 01:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB6210E101;
	Tue,  6 Sep 2022 23:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EEFE10E086;
 Tue,  6 Sep 2022 23:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662508187; x=1694044187;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2LrU+nWS+tyOmhQ7JLgbePfwgG3N/NnYoZfzL5b9MPY=;
 b=WC3a040ztNZxccoBHh3YYtv6WkysVs4xeNaoCoVvq6COAcdMUPlQS8uQ
 Kmo5W1Gy4zLT9AeD5SX+t70tRLBA1ROXc4wVq2M8MSewl6XQVLxy2bU22
 0B+XHSDwUarxTmqFrRreDEJQrwvQVLNcGyjqwvuYlP1rlX57aJw4t8zwO
 4dRuBr/6JLE6cViXlmfmkSl9gU8CwIEzZg58ULkgyyNFJnMPfz+vz4z0C
 BRY8MoGOhegSYICp9E8y2Zwc0qDsLX6TzmGBft9V20svZvrg1CGHXN2bW
 qF6+wGWejTn4wss9TNn+/YJ4AaENqGfhdP+0HJeCFuVcV7SqmH97C4Ash A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276477213"
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="276477213"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,295,1654585200"; d="scan'208";a="675920331"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 16:49:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 16:49:29 -0700
Message-Id: <20220906234934.3655440-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220906234934.3655440-1-matthew.d.roper@intel.com>
References: <20220906234934.3655440-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 09/14] drm/i915: Handle each GT on
 init/release and suspend/resume
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In preparation for enabling a second GT, there are a number of GT/uncore
operations that happen during initialization or suspend flows that need
to be performed on each GT, not just the primary,

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 59 +++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index bb9ba1aed1bb..e5c3cf5045d4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -310,8 +310,13 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 
 static void sanitize_gpu(struct drm_i915_private *i915)
 {
-	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display)
-		__intel_gt_reset(to_gt(i915), ALL_ENGINES);
+	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display) {
+		struct intel_gt *gt;
+		unsigned int i;
+
+		for_each_gt(gt, i915, i)
+			__intel_gt_reset(gt, ALL_ENGINES);
+	}
 }
 
 /**
@@ -730,6 +735,8 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 static void i915_driver_register(struct drm_i915_private *dev_priv)
 {
 	struct drm_device *dev = &dev_priv->drm;
+	struct intel_gt *gt;
+	unsigned int i;
 
 	i915_gem_driver_register(dev_priv);
 	i915_pmu_register(dev_priv);
@@ -749,7 +756,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	/* Depends on sysfs having been initialized */
 	i915_perf_register(dev_priv);
 
-	intel_gt_driver_register(to_gt(dev_priv));
+	for_each_gt(gt, dev_priv, i)
+		intel_gt_driver_register(gt);
 
 	intel_display_driver_register(dev_priv);
 
@@ -768,6 +776,9 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 {
+	struct intel_gt *gt;
+	unsigned int i;
+
 	i915_switcheroo_unregister(dev_priv);
 
 	intel_unregister_dsm_handler();
@@ -777,7 +788,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
-	intel_gt_driver_unregister(to_gt(dev_priv));
+	for_each_gt(gt, dev_priv, i)
+		intel_gt_driver_unregister(gt);
 
 	i915_perf_unregister(dev_priv);
 	i915_pmu_unregister(dev_priv);
@@ -799,6 +811,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 {
 	if (drm_debug_enabled(DRM_UT_DRIVER)) {
 		struct drm_printer p = drm_debug_printer("i915 device info:");
+		struct intel_gt *gt;
+		unsigned int i;
 
 		drm_printf(&p, "pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\n",
 			   INTEL_DEVID(dev_priv),
@@ -811,7 +825,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 		intel_device_info_print(INTEL_INFO(dev_priv),
 					RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
-		intel_gt_info_print(&to_gt(dev_priv)->info, &p);
+		for_each_gt(gt, dev_priv, i)
+			intel_gt_info_print(&gt->info, &p);
 	}
 
 	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG))
@@ -1230,13 +1245,15 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	int ret;
+	struct intel_gt *gt;
+	int ret, i;
 
 	disable_rpm_wakeref_asserts(rpm);
 
 	i915_gem_suspend_late(dev_priv);
 
-	intel_uncore_suspend(&dev_priv->uncore);
+	for_each_gt(gt, dev_priv, i)
+		intel_uncore_suspend(gt->uncore);
 
 	intel_power_domains_suspend(dev_priv,
 				    get_suspend_mode(dev_priv, hibernation));
@@ -1368,7 +1385,8 @@ static int i915_drm_resume_early(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	int ret;
+	struct intel_gt *gt;
+	int ret, i;
 
 	/*
 	 * We have a resume ordering issue with the snd-hda driver also
@@ -1422,9 +1440,10 @@ static int i915_drm_resume_early(struct drm_device *dev)
 		drm_err(&dev_priv->drm,
 			"Resume prepare failed: %d, continuing anyway\n", ret);
 
-	intel_uncore_resume_early(&dev_priv->uncore);
-
-	intel_gt_check_and_clear_faults(to_gt(dev_priv));
+	for_each_gt(gt, dev_priv, i) {
+		intel_uncore_resume_early(gt->uncore);
+		intel_gt_check_and_clear_faults(gt);
+	}
 
 	intel_display_power_resume_early(dev_priv);
 
@@ -1604,7 +1623,8 @@ static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	int ret;
+	struct intel_gt *gt;
+	int ret, i;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
@@ -1619,11 +1639,13 @@ static int intel_runtime_suspend(struct device *kdev)
 	 */
 	i915_gem_runtime_suspend(dev_priv);
 
-	intel_gt_runtime_suspend(to_gt(dev_priv));
+	for_each_gt(gt, dev_priv, i)
+		intel_gt_runtime_suspend(gt);
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
-	intel_uncore_suspend(&dev_priv->uncore);
+	for_each_gt(gt, dev_priv, i)
+		intel_uncore_suspend(gt->uncore);
 
 	intel_display_power_suspend(dev_priv);
 
@@ -1687,7 +1709,8 @@ static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	int ret;
+	struct intel_gt *gt;
+	int ret, i;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
 		return -ENODEV;
@@ -1707,7 +1730,8 @@ static int intel_runtime_resume(struct device *kdev)
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
-	intel_uncore_runtime_resume(&dev_priv->uncore);
+	for_each_gt(gt, dev_priv, i)
+		intel_uncore_runtime_resume(gt->uncore);
 
 	intel_runtime_pm_enable_interrupts(dev_priv);
 
@@ -1715,7 +1739,8 @@ static int intel_runtime_resume(struct device *kdev)
 	 * No point of rolling back things in case of an error, as the best
 	 * we can do is to hope that things will still work (and disable RPM).
 	 */
-	intel_gt_runtime_resume(to_gt(dev_priv));
+	for_each_gt(gt, dev_priv, i)
+		intel_gt_runtime_resume(gt);
 
 	/*
 	 * On VLV/CHV display interrupts are part of the display
-- 
2.37.2

