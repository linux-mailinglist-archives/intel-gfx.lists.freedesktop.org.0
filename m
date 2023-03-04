Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE60F6AAB08
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Mar 2023 17:15:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8EA10E055;
	Sat,  4 Mar 2023 16:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E1710E055
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Mar 2023 16:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677946536; x=1709482536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=n87s+7pZple+c6WmHmG+9Oh91vd18TRdScEWeI01OLI=;
 b=BkwhQxGcp6vG3Dr7dsIiL0XNccHq/r9My7rm+/J1e99X2c10rFWJh7IJ
 g2Rl3lBzzh+Ta269aHYd1my+RvM63LEmD3aQePt3T50F9MQaCs+mytLcd
 4geOmqR8qfmvHbvP7cEqgR4wy1UOqX+qv49mSmcWWOyRXEBG9N8PcAQsO
 gdA6GdSWGskQoh8fQAGZj4yWD2AZK+6L3sv0b1bgEhUKkhnk5I7oEpwzX
 VgkAXt3AkCTPhV6BnBJk8hvuu7M3W5+tHjHng0Y1i6Yjcr1NRO5+vH6Hc
 fJ8yaHls0VEY1pAA52Tnb7+nxri5Zz64SHZYbX4U7Rj40rXmSUmoHxt72 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="362875167"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="362875167"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 08:15:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="708170568"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="708170568"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 08:15:33 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 Mar 2023 21:47:49 +0530
Message-Id: <20230304161749.1420224-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Extend Wa_14017073508 in
 suspend/resume flow
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

During suspend resume flow it was seen that lots forcewakes
are taken and released for media. So to avoid HANG due to MC6
entry/exit while accessing media applied Wa_14017073508 in
suspend/resume flow.

Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pm.c   |  6 ++++-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 32 ++++++++++++++++--------
 drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  3 +++
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  1 +
 drivers/gpu/drm/i915/i915_driver.c       | 32 ++++++++++++++++++++++++
 5 files changed, 62 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pm.c b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
index 0d812f4d787d..60deac41104d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pm.c
@@ -160,8 +160,12 @@ void i915_gem_suspend_late(struct drm_i915_private *i915)
 	 * machine in an unusable condition.
 	 */
 
-	for_each_gt(gt, i915, i)
+	for_each_gt(gt, i915, i) {
+		/* Wa_14017073508: mtl */
+		mtl_media_busy(gt);
 		intel_gt_suspend_late(gt);
+		mtl_media_idle(gt);
+	}
 
 	spin_lock_irqsave(&i915->mm.obj_lock, flags);
 	for (phase = phases; *phase; phase++) {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index cef3d6f5c34e..1f3bf1cf0421 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -26,24 +26,34 @@
 
 #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
 
-static void mtl_media_busy(struct intel_gt *gt)
+void mtl_media_busy(struct intel_gt *gt)
 {
 	/* Wa_14017073508: mtl */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
+	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
 	    gt->type == GT_MEDIA)
-		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
-				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
-				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
+		if (!atomic_inc_not_zero(&gt->media_wakeref)) {
+			drm_err(&gt->i915->drm, "Media busy\n");
+			snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
+					  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
+					  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
+			atomic_inc(&gt->media_wakeref);
+		}
 }
 
-static void mtl_media_idle(struct intel_gt *gt)
+void mtl_media_idle(struct intel_gt *gt)
 {
 	/* Wa_14017073508: mtl */
-	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
-	    gt->type == GT_MEDIA)
-		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
-				  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
-				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
+	if (gt && IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
+	    gt->type == GT_MEDIA) {
+		WARN_ON(atomic_read(&gt->media_wakeref) <= 0);
+		if (!atomic_add_unless(&gt->media_wakeref, -1, 1)) {
+			drm_err(&gt->i915->drm, "Media idle\n");
+			snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
+					  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
+					  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
+			atomic_dec(&gt->media_wakeref);
+		}
+	}
 }
 
 static void user_forcewake(struct intel_gt *gt, bool suspend)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.h b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
index 6c9a46452364..43ffabf9babe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.h
@@ -89,4 +89,7 @@ static inline bool is_mock_gt(const struct intel_gt *gt)
 	return I915_SELFTEST_ONLY(gt->awake == -ENODEV);
 }
 
+void mtl_media_busy(struct intel_gt *gt);
+void mtl_media_idle(struct intel_gt *gt);
+
 #endif /* INTEL_GT_PM_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f08c2556aa25..321ccfef4028 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -145,6 +145,7 @@ struct intel_gt {
 
 	struct intel_wakeref wakeref;
 	atomic_t user_wakeref;
+	atomic_t media_wakeref;
 
 	struct list_head closed_vma;
 	spinlock_t closed_lock; /* guards the list of closed_vma */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 8bc76dede332..c7625ea28022 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -327,6 +327,8 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	intel_gmch_bar_setup(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_busy(dev_priv->media_gt);
 	for_each_gt(gt, dev_priv, i) {
 		ret = intel_gt_init_mmio(gt);
 		if (ret)
@@ -335,10 +337,14 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 
 	/* As early as possible, scrub existing GPU state before clobbering */
 	sanitize_gpu(dev_priv);
+	/* Wa_14017073508: mtl */
+	mtl_media_idle(dev_priv->media_gt);
 
 	return 0;
 
 err_uncore:
+	/* Wa_14017073508: mtl */
+	mtl_media_idle(dev_priv->media_gt);
 	intel_gmch_bar_teardown(dev_priv);
 
 	return ret;
@@ -781,6 +787,12 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_tiles_cleanup;
 
+	/* Wa_14017073508: mtl */
+	if (i915->media_gt) {
+		atomic_set(&i915->media_gt->media_wakeref, 0);
+		mtl_media_busy(i915->media_gt);
+	}
+
 	ret = i915_driver_hw_probe(i915);
 	if (ret < 0)
 		goto out_cleanup_mmio;
@@ -838,6 +850,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_drain_freed_objects(i915);
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
+	/* Wa_14017073508: mtl */
+	mtl_media_idle(i915->media_gt);
 	i915_driver_mmio_release(i915);
 out_tiles_cleanup:
 	intel_gt_release_all(i915);
@@ -1063,6 +1077,9 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_busy(dev_priv->media_gt);
+
 	/* We do a lot of poking in a lot of registers, make sure they work
 	 * properly. */
 	intel_power_domains_disable(dev_priv);
@@ -1097,6 +1114,9 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_dmc_suspend(dev_priv);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_busy(dev_priv->media_gt);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	i915_gem_drain_freed_objects(dev_priv);
@@ -1197,6 +1217,9 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_busy(dev_priv->media_gt);
+
 	ret = i915_pcode_init(dev_priv);
 	if (ret)
 		return ret;
@@ -1260,6 +1283,9 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_gvt_resume(dev_priv);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_idle(dev_priv->media_gt);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return 0;
@@ -1319,6 +1345,9 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_busy(dev_priv->media_gt);
+
 	ret = vlv_resume_prepare(dev_priv, false);
 	if (ret)
 		drm_err(&dev_priv->drm,
@@ -1333,6 +1362,9 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	intel_power_domains_resume(dev_priv);
 
+	/* Wa_14017073508: mtl */
+	mtl_media_idle(dev_priv->media_gt);
+
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	return ret;
-- 
2.25.1

