Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C5D5531F0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5E710F60E;
	Tue, 21 Jun 2022 12:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25F810F5C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655814186; x=1687350186;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tbXsZVxAdtXoHwxvHp+EtjP1sIogHXf4l5D2F85LtqU=;
 b=mXnbIoXK844lQN/zy2mDJ2gzRsYv+Nku3WkfAq9gXXn+4Z1vyP81qH/S
 NXf+G29hvbea1RTjf/FU15ZlHuxFPOuWEe9N7CtltSwmUS4CiFdcceY5f
 sb8X5zFpDIDuyGrhF+FQyI7pQ7AeZjVzZct8lmLawcWatiw4AxYj2COrT
 aTJ5hEEFgy8SKmjeYkUTMIx2CD1lp7zdmMEjo9bfzaj1MOSWNtpbpSewu
 mtyFFc09TwnmJmuzaYd4fFrZ6jQjjDnxFYCXP61PrAP88TfiPuDXjoePe
 V7oAsWDQekruOeOuYTZMoLeM6l13Aic2mK+CmBYvYgT/FB6ddQ+e/7ZDF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280835686"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="280835686"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:23:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591629744"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2022 05:23:03 -0700
Received: from intel.com (tttangud-desk.iind.intel.com [10.145.144.118])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 25LCMKjw013778; Tue, 21 Jun 2022 13:22:59 +0100
From: Tilak Tangudu <tilak.tangudu@intel.com>
To: intel-gfx@lists.freedesktop.org, jon.ewins@intel.com,
 rodrigo.vivi@intel.com, vinay.belgaumkar@intel.com,
 chris.p.wilson@intel.com, ashutosh.dixit@intel.com,
 badal.nilawar@intel.com, anshuman.gupta@intel.com,
 tilak.tangudu@intel.com, matthew.d.roper@intel.com,
 saurabhg.gupta@intel.com, Aravind.Iddamsetty@intel.com,
 Sujaritha.Sundaresan@intel.com
Date: Tue, 21 Jun 2022 18:05:16 +0530
Message-Id: <20220621123516.370479-12-tilak.tangudu@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621123516.370479-1-tilak.tangudu@intel.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915 : Add D3COLD OFF support
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

Added lmem deep suspend/resume, which covers lmem
eviction and added GT/GUC deep suspend/resume
using i915_gem_backup_suspend, i915_gem_suspend_late
and i915_gem_resume.

Added HAS_D3COLD_OFF feature macro to use for
D3COLD OFF feature

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c       | 96 ++++++++++++++++++------
 drivers/gpu/drm/i915/i915_drv.h          |  1 +
 drivers/gpu/drm/i915/i915_pci.c          |  1 +
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 4 files changed, 76 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 669365c2958c..1ca45d933a4a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1609,9 +1609,21 @@ static int intel_runtime_suspend(struct device *kdev)
 	 * We are safe here against re-faults, since the fault handler takes
 	 * an RPM reference.
 	 */
-	i915_gem_runtime_suspend(dev_priv);
+	if (HAS_D3COLD_OFF(dev_priv)) {
+		i915_gem_backup_suspend(dev_priv);
+		i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
+		i915_gem_suspend_late(dev_priv);
+	} else {
+		i915_gem_runtime_suspend(dev_priv);
+		intel_gt_runtime_suspend(to_gt(dev_priv));
 
-	intel_gt_runtime_suspend(to_gt(dev_priv));
+		/*
+		 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
+		 * This should be totally removed when we handle the pci states properly
+		 * on runtime PM and on s2idle cases.
+		 */
+		pci_d3cold_disable(pdev);
+	}
 
 	intel_runtime_pm_disable_interrupts(dev_priv);
 
@@ -1641,12 +1653,6 @@ static int intel_runtime_suspend(struct device *kdev)
 		drm_err(&dev_priv->drm,
 			"Unclaimed access detected prior to suspending\n");
 
-	/*
-	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
-	 * This should be totally removed when we handle the pci states properly
-	 * on runtime PM and on s2idle cases.
-	 */
-	pci_d3cold_disable(pdev);
 	rpm->suspended = true;
 
 	/*
@@ -1662,14 +1668,18 @@ static int intel_runtime_suspend(struct device *kdev)
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
+		if (HAS_D3COLD_OFF(dev_priv)) {
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
@@ -1677,6 +1687,12 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
 		intel_hpd_poll_enable(dev_priv);
 
+	if (HAS_D3COLD_OFF(dev_priv)) {
+		i915_save_pci_state(pdev);
+		pci_disable_device(pdev);
+		pci_set_power_state(pdev, PCI_D3cold);
+	}
+
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
@@ -1696,9 +1712,28 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(dev_priv, PCI_D0);
+	if (HAS_D3COLD_OFF(dev_priv)) {
+		ret = pci_set_power_state(pdev, PCI_D0);
+		if (ret) {
+			drm_err(&dev_priv->drm,
+				"failed to set PCI D0 power state (%d)\n", ret);
+			return ret;
+		}
+
+		i915_load_pci_state(pdev);
+
+		ret = pci_enable_device(pdev);
+		if (ret)
+			return ret;
+		pci_set_master(pdev);
+		intel_opregion_resume(dev_priv);
+	} else {
+		pci_d3cold_enable(pdev);
+		intel_opregion_notify_adapter(dev_priv, PCI_D0);
+	}
+
 	rpm->suspended = false;
-	pci_d3cold_enable(pdev);
+
 	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
@@ -1711,12 +1746,27 @@ static int intel_runtime_resume(struct device *kdev)
 
 	intel_runtime_pm_enable_interrupts(dev_priv);
 
-	/*
-	 * No point of rolling back things in case of an error, as the best
-	 * we can do is to hope that things will still work (and disable RPM).
-	 */
-	intel_gt_runtime_resume(to_gt(dev_priv));
+	if (HAS_D3COLD_OFF(dev_priv)) {
+		ret = i915_pcode_init(dev_priv);
+		if (ret)
+			return ret;
 
+		sanitize_gpu(dev_priv);
+		ret = i915_ggtt_enable_hw(dev_priv);
+		if (ret)
+			drm_err(&dev_priv->drm, "failed to re-enable GGTT\n");
+
+		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
+
+		i915_gem_resume(dev_priv);
+
+	} else {
+		/*
+		 * No point of rolling back things in case of an error, as the best
+		 * we can do is to hope that things will still work (and disable RPM).
+		 */
+		intel_gt_runtime_resume(to_gt(dev_priv));
+	}
 	/*
 	 * On VLV/CHV display interrupts are part of the display
 	 * power well, so hpd is reinitialized from there. For
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ec8c7a2af673..633d20c2372a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1300,6 +1300,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
+#define HAS_D3COLD_OFF(i915) (INTEL_INFO(dev_priv)->has_d3cold_off)
 
 /*
  * Platform has the dedicated compression control state for each lmem surfaces
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 5e51fc29bb8b..749ccb14fd6f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info = {
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
 	.needs_compact_pt = 1, \
+	.has_d3cold_off = 1, \
 	.has_media_ratio_mode = 1, \
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 08341174ee0a..495c12d65c3e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -140,6 +140,7 @@ enum intel_ppgtt_type {
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(has_64k_pages); \
+	func(has_d3cold_off); \
 	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
-- 
2.25.1

