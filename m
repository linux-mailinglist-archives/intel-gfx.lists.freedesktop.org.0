Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 441BA57C808
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 11:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7340E8D03A;
	Thu, 21 Jul 2022 09:48:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210BD8D007
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 09:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658396910; x=1689932910;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0O5xzZEoDfp6GSCeognj8KV70AwdEFLWB8sR43OX4Lc=;
 b=EzxUs8g/qd4TVtyTjV5/8U50kKf1MTu4H3LI1iaDo/1VeJa2WANHTHVy
 LgovLGzq1NUOTbKcNrD+zxESWYBwmqD4fmQLNvEypWy0anAJH/CzjCVKN
 qKflQkh0S4WkRaPq6U90evf6G3Ib8yxhYcRUWKpPlwsJ4uH4vjkpGPOPp
 y5yZ+nTHmEa/mQUYR8hSirjUlL1QMQCd3dQ3UjpZHBl5NCI7ZcicKNPBJ
 SVw23+AYZartzcG5ERPsZCB6MvYyafKpU3Ey1aaKFfJgCS77P9QR8lc9o
 Eh5+wX6A4co9FPkODu3Ujk3Bs2Ft/dJqMC1U/DmtVoBDEDuBZxzzwhl8c w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="350991730"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="350991730"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 02:48:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="724980829"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga004.jf.intel.com with ESMTP; 21 Jul 2022 02:48:27 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 26L9ltwZ026833; Thu, 21 Jul 2022 10:48:23 +0100
From: tilak.tangudu@intel.com
To: jon.ewins@intel.com, vinay.belgaumkar@intel.com, matthew.d.roper@intel.com,
 chris.p.wilson@intel.com, jani.nikula@intel.com,
 saurabhg.gupta@intel.com, rodrigo.vivi@intel.com,
 Anshuman.Gupta@intel.com, badal.nilawar@intel.com,
 tilak.tangudu@intel.com, imre.deak@intel.com,
 aravind.iddamsetty@intel.com, intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 15:29:55 +0530
Message-Id: <20220721095955.3986943-9-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220721095955.3986943-1-tilak.tangudu@intel.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915 : Add D3COLD OFF support
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Added lmem deep suspend/resume, which covers lmem
eviction and added GT/GUC deep suspend/resume
using i915_gem_backup_suspend, i915_gem_suspend_late
and i915_gem_resume.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 74 ++++++++++++++++++++++++------
 1 file changed, 61 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3697ecb2c138..608287bb27ea 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1630,6 +1630,7 @@ static int intel_runtime_idle(struct device *kdev)
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	int ret;
 
@@ -1644,9 +1645,14 @@ static int intel_runtime_suspend(struct device *kdev)
 	 * We are safe here against re-faults, since the fault handler takes
 	 * an RPM reference.
 	 */
-	i915_gem_runtime_suspend(dev_priv);
-
-	intel_gt_runtime_suspend(to_gt(dev_priv));
+	if (rpm->d3_state == INTEL_D3COLD_OFF) {
+		i915_gem_backup_suspend(dev_priv);
+		i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
+		i915_gem_suspend_late(dev_priv);
+	} else {
+		i915_gem_runtime_suspend(dev_priv);
+		intel_gt_runtime_suspend(to_gt(dev_priv));
+	}
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
@@ -1691,14 +1697,18 @@ static int intel_runtime_suspend(struct device *kdev)
 		 */
 		intel_opregion_notify_adapter(dev_priv, PCI_D3hot);
 	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(dev_priv, PCI_D1);
+		if (rpm->d3_state == INTEL_D3COLD_OFF) {
+			intel_opregion_suspend(dev_priv, PCI_D3cold);
+		} else {
+			/*
+			 * current versions of firmware which depend on this opregion
+			 * notification have repurposed the D1 definition to mean
+			 * "runtime suspended" vs. what you would normally expect (D3)
+			 * to distinguish it from notifications that might be sent via
+			 * the suspend path.
+			 */
+			intel_opregion_notify_adapter(dev_priv, PCI_D1);
+		}
 	}
 
 	assert_forcewakes_inactive(&dev_priv->uncore);
@@ -1706,6 +1716,12 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
 		intel_hpd_poll_enable(dev_priv);
 
+	if (rpm->d3_state == INTEL_D3COLD_OFF) {
+		i915_save_pci_state(pdev);
+		pci_disable_device(pdev);
+		pci_set_power_state(pdev, PCI_D3cold);
+	}
+
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
@@ -1713,6 +1729,7 @@ static int intel_runtime_suspend(struct device *kdev)
 static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	int ret;
 
@@ -1724,7 +1741,25 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(dev_priv, PCI_D0);
+	if (rpm->d3_state == INTEL_D3COLD_OFF) {
+		ret = pci_set_power_state(pdev, PCI_D0);
+		if (ret) {
+			drm_err(&dev_priv->drm,
+				"failed to set PCI D0 power state (%d)\n", ret);
+			goto out;
+		}
+
+		i915_load_pci_state(pdev);
+
+		ret = pci_enable_device(pdev);
+		if (ret)
+			goto out;
+		pci_set_master(pdev);
+		intel_opregion_resume(dev_priv);
+	} else {
+		intel_opregion_notify_adapter(dev_priv, PCI_D0);
+	}
+
 	rpm->suspended = false;
 	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
 		drm_dbg(&dev_priv->drm,
@@ -1742,8 +1777,20 @@ static int intel_runtime_resume(struct device *kdev)
 	 * No point of rolling back things in case of an error, as the best
 	 * we can do is to hope that things will still work (and disable RPM).
 	 */
-	intel_gt_runtime_resume(to_gt(dev_priv));
+	if (rpm->d3_state == INTEL_D3COLD_OFF) {
+		ret = i915_pcode_init(dev_priv);
+		if (ret)
+			goto out;
 
+		sanitize_gpu(dev_priv);
+		ret = i915_ggtt_enable_hw(dev_priv);
+		if (ret)
+			drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
+		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
+		i915_gem_resume(dev_priv);
+	} else {
+		intel_gt_runtime_resume(to_gt(dev_priv));
+	}
 	/*
 	 * On VLV/CHV display interrupts are part of the display
 	 * power well, so hpd is reinitialized from there. For
@@ -1756,6 +1803,7 @@ static int intel_runtime_resume(struct device *kdev)
 
 	intel_enable_ipc(dev_priv);
 
+out:
 	enable_rpm_wakeref_asserts(rpm);
 
 	if (ret)
-- 
2.25.1

