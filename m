Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC2B54E0B6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 14:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F767113B5B;
	Thu, 16 Jun 2022 12:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04785113B5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 12:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655382184; x=1686918184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WxWBW9ACUuHTXtxIYKQiKpxmTSt7t2eCH4V3qX3Wscw=;
 b=WPBS/oxU/t+heiI7dQkZVjHXbjX4YljT0RtECEnWFLLTAFts5uvKsgSe
 I445EXeY4KDnE8RfV47NQ4UpG31KSpy9xBupSrkqad0q2QD+4lSocAJAL
 O4aLPhdSG1/PDZqnlWDtjydlIU9gXx2A02F3jNnIcGE4rZcPeNgjEI+cX
 MIPvmyb1TvAjOcYYGhgZ2hhBQB6SlqD1LHuB7pEztxQjD+rZhPrjGfMn0
 aBdBAXTOjy+XDwTtCascg7nW4HHX40X/WP18tLpj9TvQL2G1Up7ownJHp
 8F15lNqSUj7xwXTAui0RONzEE25VUu7qnDi3SwkYPcCPqX9Er0XK625HP A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="262255528"
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="262255528"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 05:23:03 -0700
X-IronPort-AV: E=Sophos;i="5.91,305,1647327600"; d="scan'208";a="687798410"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 05:23:00 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 17:52:49 +0530
Message-Id: <20220616122249.5007-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220606122656.31479-1-anshuman.gupta@intel.com>
References: <20220606122656.31479-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dgfx: Disable d3cold at gfx root
 port
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

Currently i915 disables d3cold for i915 pci dev.
This blocks D3 for i915 gfx pci upstream bridge (VSP).
Let's disable d3cold at gfx root port to make sure that
i915 gfx VSP can transition to D3 to save some power.

We don't need to disable/enable d3cold in rpm, s2idle
suspend/resume handlers. Disabling/Enabling d3cold at
gfx root port in probe/remove phase is sufficient.

Fixes: 1a085e23411d ("drm/i915: Disable D3Cold in s2idle and runtime pm")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 34 +++++++++++++-----------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d26dcca7e654..86f9f0be76a6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -546,6 +546,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
 static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *root_pdev;
 	int ret;
 
 	if (i915_inject_probe_failure(dev_priv))
@@ -657,6 +658,15 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_bw_init_hw(dev_priv);
 
+	/*
+	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
+	 * This should be totally removed when we handle the pci states properly
+	 * on runtime PM and on s2idle cases.
+	 */
+	root_pdev = pcie_find_root_port(pdev);
+	if (root_pdev)
+		pci_d3cold_disable(root_pdev);
+
 	return 0;
 
 err_msi:
@@ -680,11 +690,16 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *root_pdev;
 
 	i915_perf_fini(dev_priv);
 
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
+
+	root_pdev = pcie_find_root_port(pdev);
+	if (root_pdev)
+		pci_d3cold_enable(root_pdev);
 }
 
 /**
@@ -1209,14 +1224,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 		goto out;
 	}
 
-	/*
-	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
-	 * This should be totally removed when we handle the pci states properly
-	 * on runtime PM and on s2idle cases.
-	 */
-	if (suspend_to_idle(dev_priv))
-		pci_d3cold_disable(pdev);
-
 	pci_disable_device(pdev);
 	/*
 	 * During hibernation on some platforms the BIOS may try to access
@@ -1381,8 +1388,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
 
 	pci_set_master(pdev);
 
-	pci_d3cold_enable(pdev);
-
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	ret = vlv_resume_prepare(dev_priv, false);
@@ -1559,7 +1564,6 @@ static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
@@ -1605,12 +1609,6 @@ static int intel_runtime_suspend(struct device *kdev)
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
@@ -1649,7 +1647,6 @@ static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
@@ -1662,7 +1659,6 @@ static int intel_runtime_resume(struct device *kdev)
 
 	intel_opregion_notify_adapter(dev_priv, PCI_D0);
 	rpm->suspended = false;
-	pci_d3cold_enable(pdev);
 	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
-- 
2.26.2

