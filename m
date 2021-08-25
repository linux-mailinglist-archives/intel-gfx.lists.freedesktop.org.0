Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EF43F7830
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F6D6E334;
	Wed, 25 Aug 2021 15:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681526E332
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:22:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217263642"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217263642"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:22:40 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="527366017"
Received: from vcheppax-mobl1.gar.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.37.222])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:22:37 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Tilak Tangudu <tilak.tangudu@intel.com>
Date: Wed, 25 Aug 2021 11:22:30 -0400
Message-Id: <20210825152233.2151037-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/runtime_pm: Consolidate runtime_pm
 functions
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

No functional changes. Just revamping the functions with
s/dev_priv/i915
and consolidating along with other runtime_pm functions.

v2: avoid the extra redirection (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Tilak Tangudu <tilak.tangudu@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c         | 145 +-----------------------
 drivers/gpu/drm/i915/intel_runtime_pm.c | 145 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_runtime_pm.h |   2 +
 3 files changed, 149 insertions(+), 143 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 59fb4c710c8c..a40b5d806321 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -64,7 +64,6 @@
 #include "gem/i915_gem_mman.h"
 #include "gem/i915_gem_pm.h"
 #include "gt/intel_gt.h"
-#include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
 #include "i915_debugfs.h"
@@ -1517,146 +1516,6 @@ static int i915_pm_restore(struct device *kdev)
 	return i915_pm_resume(kdev);
 }
 
-static int intel_runtime_suspend(struct device *kdev)
-{
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	int ret;
-
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
-		return -ENODEV;
-
-	drm_dbg_kms(&dev_priv->drm, "Suspending device\n");
-
-	disable_rpm_wakeref_asserts(rpm);
-
-	/*
-	 * We are safe here against re-faults, since the fault handler takes
-	 * an RPM reference.
-	 */
-	i915_gem_runtime_suspend(dev_priv);
-
-	intel_gt_runtime_suspend(&dev_priv->gt);
-
-	intel_runtime_pm_disable_interrupts(dev_priv);
-
-	intel_uncore_suspend(&dev_priv->uncore);
-
-	intel_display_power_suspend(dev_priv);
-
-	ret = vlv_suspend_complete(dev_priv);
-	if (ret) {
-		drm_err(&dev_priv->drm,
-			"Runtime suspend failed, disabling it (%d)\n", ret);
-		intel_uncore_runtime_resume(&dev_priv->uncore);
-
-		intel_runtime_pm_enable_interrupts(dev_priv);
-
-		intel_gt_runtime_resume(&dev_priv->gt);
-
-		enable_rpm_wakeref_asserts(rpm);
-
-		return ret;
-	}
-
-	enable_rpm_wakeref_asserts(rpm);
-	intel_runtime_pm_driver_release(rpm);
-
-	if (intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore))
-		drm_err(&dev_priv->drm,
-			"Unclaimed access detected prior to suspending\n");
-
-	rpm->suspended = true;
-
-	/*
-	 * FIXME: We really should find a document that references the arguments
-	 * used below!
-	 */
-	if (IS_BROADWELL(dev_priv)) {
-		/*
-		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at intel_runtime_resume()
-		 * won't be able to restore them. Since PCI_D3hot matches the
-		 * actual specification and appears to be working, use it.
-		 */
-		intel_opregion_notify_adapter(dev_priv, PCI_D3hot);
-	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(dev_priv, PCI_D1);
-	}
-
-	assert_forcewakes_inactive(&dev_priv->uncore);
-
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
-		intel_hpd_poll_enable(dev_priv);
-
-	drm_dbg_kms(&dev_priv->drm, "Device suspended\n");
-	return 0;
-}
-
-static int intel_runtime_resume(struct device *kdev)
-{
-	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	int ret;
-
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
-		return -ENODEV;
-
-	drm_dbg_kms(&dev_priv->drm, "Resuming device\n");
-
-	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
-	disable_rpm_wakeref_asserts(rpm);
-
-	intel_opregion_notify_adapter(dev_priv, PCI_D0);
-	rpm->suspended = false;
-	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
-		drm_dbg(&dev_priv->drm,
-			"Unclaimed access during suspend, bios?\n");
-
-	intel_display_power_resume(dev_priv);
-
-	ret = vlv_resume_prepare(dev_priv, true);
-
-	intel_uncore_runtime_resume(&dev_priv->uncore);
-
-	intel_runtime_pm_enable_interrupts(dev_priv);
-
-	/*
-	 * No point of rolling back things in case of an error, as the best
-	 * we can do is to hope that things will still work (and disable RPM).
-	 */
-	intel_gt_runtime_resume(&dev_priv->gt);
-
-	/*
-	 * On VLV/CHV display interrupts are part of the display
-	 * power well, so hpd is reinitialized from there. For
-	 * everyone else do it here.
-	 */
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		intel_hpd_init(dev_priv);
-		intel_hpd_poll_disable(dev_priv);
-	}
-
-	intel_enable_ipc(dev_priv);
-
-	enable_rpm_wakeref_asserts(rpm);
-
-	if (ret)
-		drm_err(&dev_priv->drm,
-			"Runtime resume failed, disabling it (%d)\n", ret);
-	else
-		drm_dbg_kms(&dev_priv->drm, "Device resumed\n");
-
-	return ret;
-}
-
 const struct dev_pm_ops i915_pm_ops = {
 	/*
 	 * S0ix (via system suspend) and S3 event handlers [PMSG_SUSPEND,
@@ -1693,8 +1552,8 @@ const struct dev_pm_ops i915_pm_ops = {
 	.restore = i915_pm_restore,
 
 	/* S0ix (via runtime suspend) event handlers */
-	.runtime_suspend = intel_runtime_suspend,
-	.runtime_resume = intel_runtime_resume,
+	.runtime_suspend = intel_runtime_pm_suspend,
+	.runtime_resume = intel_runtime_pm_resume,
 };
 
 static const struct file_operations i915_driver_fops = {
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index eaf7688f517d..f28b5bab61b4 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -32,6 +32,11 @@
 
 #include "i915_drv.h"
 #include "i915_trace.h"
+#include "gt/intel_gt.h"
+#include "gt/intel_gt_pm.h"
+#include "intel_pm.h"
+#include "vlv_suspend.h"
+#include "display/intel_hotplug.h"
 
 /**
  * DOC: runtime pm
@@ -652,3 +657,143 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
 
 	init_intel_runtime_pm_wakeref(rpm);
 }
+
+int intel_runtime_pm_suspend(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	int ret;
+
+	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_RUNTIME_PM(i915)))
+		return -ENODEV;
+
+	drm_dbg_kms(&i915->drm, "Suspending device\n");
+
+	disable_rpm_wakeref_asserts(rpm);
+
+	/*
+	 * We are safe here against re-faults, since the fault handler takes
+	 * an RPM reference.
+	 */
+	i915_gem_runtime_suspend(i915);
+
+	intel_gt_runtime_suspend(&i915->gt);
+
+	intel_runtime_pm_disable_interrupts(i915);
+
+	intel_uncore_suspend(&i915->uncore);
+
+	intel_display_power_suspend(i915);
+
+	ret = vlv_suspend_complete(i915);
+	if (ret) {
+		drm_err(&i915->drm,
+			"Runtime suspend failed, disabling it (%d)\n", ret);
+		intel_uncore_runtime_resume(&i915->uncore);
+
+		intel_runtime_pm_enable_interrupts(i915);
+
+		intel_gt_runtime_resume(&i915->gt);
+
+		enable_rpm_wakeref_asserts(rpm);
+
+		return ret;
+	}
+
+	enable_rpm_wakeref_asserts(rpm);
+	intel_runtime_pm_driver_release(rpm);
+
+	if (intel_uncore_arm_unclaimed_mmio_detection(&i915->uncore))
+		drm_err(&i915->drm,
+			"Unclaimed access detected prior to suspending\n");
+
+	rpm->suspended = true;
+
+	/*
+	 * FIXME: We really should find a document that references the arguments
+	 * used below!
+	 */
+	if (IS_BROADWELL(i915)) {
+		/*
+		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
+		 * being detected, and the call we do at intel_runtime_resume()
+		 * won't be able to restore them. Since PCI_D3hot matches the
+		 * actual specification and appears to be working, use it.
+		 */
+		intel_opregion_notify_adapter(i915, PCI_D3hot);
+	} else {
+		/*
+		 * current versions of firmware which depend on this opregion
+		 * notification have repurposed the D1 definition to mean
+		 * "runtime suspended" vs. what you would normally expect (D3)
+		 * to distinguish it from notifications that might be sent via
+		 * the suspend path.
+		 */
+		intel_opregion_notify_adapter(i915, PCI_D1);
+	}
+
+	assert_forcewakes_inactive(&i915->uncore);
+
+	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915))
+		intel_hpd_poll_enable(i915);
+
+	drm_dbg_kms(&i915->drm, "Device suspended\n");
+	return 0;
+}
+
+int intel_runtime_pm_resume(struct device *kdev)
+{
+	struct drm_i915_private *i915 = kdev_to_i915(kdev);
+	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	int ret;
+
+	if (drm_WARN_ON_ONCE(&i915->drm, !HAS_RUNTIME_PM(i915)))
+		return -ENODEV;
+
+	drm_dbg_kms(&i915->drm, "Resuming device\n");
+
+	drm_WARN_ON_ONCE(&i915->drm, atomic_read(&rpm->wakeref_count));
+	disable_rpm_wakeref_asserts(rpm);
+
+	intel_opregion_notify_adapter(i915, PCI_D0);
+	rpm->suspended = false;
+	if (intel_uncore_unclaimed_mmio(&i915->uncore))
+		drm_dbg(&i915->drm,
+			"Unclaimed access during suspend, bios?\n");
+
+	intel_display_power_resume(i915);
+
+	ret = vlv_resume_prepare(i915, true);
+
+	intel_uncore_runtime_resume(&i915->uncore);
+
+	intel_runtime_pm_enable_interrupts(i915);
+
+	/*
+	 * No point of rolling back things in case of an error, as the best
+	 * we can do is to hope that things will still work (and disable RPM).
+	 */
+	intel_gt_runtime_resume(&i915->gt);
+
+	/*
+	 * On VLV/CHV display interrupts are part of the display
+	 * power well, so hpd is reinitialized from there. For
+	 * everyone else do it here.
+	 */
+	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915)) {
+		intel_hpd_init(i915);
+		intel_hpd_poll_disable(i915);
+	}
+
+	intel_enable_ipc(i915);
+
+	enable_rpm_wakeref_asserts(rpm);
+
+	if (ret)
+		drm_err(&i915->drm,
+			"Runtime resume failed, disabling it (%d)\n", ret);
+	else
+		drm_dbg_kms(&i915->drm, "Device resumed\n");
+
+	return ret;
+}
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 47a85fab4130..88ca531165f7 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -172,6 +172,8 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_enable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_disable(struct intel_runtime_pm *rpm);
 void intel_runtime_pm_driver_release(struct intel_runtime_pm *rpm);
+int intel_runtime_pm_suspend(struct device *kdev);
+int intel_runtime_pm_resume(struct device *kdev);
 
 intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
 intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm *rpm);
-- 
2.31.1

