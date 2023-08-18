Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C89E47804ED
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 05:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F7C10E435;
	Fri, 18 Aug 2023 03:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6AE10E435
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 03:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692330643; x=1723866643;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PK7MLAL24wW5qly6MmPzxPmt6XgyQs5+uRbTziKzVAY=;
 b=Et7tIEqV/XM11PNDhENIpmA8nhSGt7FCmFHCQWxPDmMQErvGWQ8Oz2jf
 nObTBD2NrMwIm3ufnm2LUt6pYd1F2wzeS4ao6437G3vf7mVqEi9xtl41E
 WotnMtmDDXFSaaWPwRPidv2fAjoE4NKmwmGy1BL7xGvhxhlxO0RsqcdVc
 rzfyuVaOud0gBIDlYasvbOfBoH+V5jreOOHa2PhZ+m+xIkxAFA1cxIvTp
 2gBlrWsdW8uZWShM0j/fzAxWHtc5/YKD6vfhCmbp2XpqqT/5Un6k/Mq6t
 SYJfDHuM4QFSocH/2QNz+fk0+Wi5u/YxkmiyJp4kjfiKUUuSDZtCVIwh7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="436916420"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="436916420"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 20:50:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="769971726"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="769971726"
Received: from sujaritha-z170x-ud5.fm.intel.com ([10.1.27.182])
 by orsmga001.jf.intel.com with ESMTP; 17 Aug 2023 20:50:42 -0700
From: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:45:58 -0700
Message-ID: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
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

Added intel_pcode_probe, promoted wait for lmem init and
intel_pcode_init prior to mmio_probe during load,
so that GT registers can be accessed only after this, else MCA
is observed.

Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  | 37 ++++++++++++++++++++++++-----
 drivers/gpu/drm/i915/intel_uncore.c | 12 ----------
 2 files changed, 31 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f8dbee7a5af7..92cafceaf447 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -93,6 +93,7 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
+#include "i915_reg.h"
 #include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
@@ -436,6 +437,32 @@ static int i915_pcode_init(struct drm_i915_private *i915)
 	return 0;
 }
 
+static int intel_pcode_probe(struct drm_i915_private *i915)
+{
+	struct intel_uncore *uncore;
+	int ret;
+
+	/*
+	 * The boot firmware initializes local memory and assesses its health.
+	 * If memory training fails, the punit will have been instructed to
+	 * keep the GT powered down; we won't be able to communicate with it
+	 * and we should not continue with driver initialization.
+	 */
+	if (IS_DGFX(i915) &&
+		!(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
+		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
+		return -ENODEV;
+	}
+
+	/*
+	 * Driver handshakes with pcode via mailbox command to know that SoC
+	 * initialization is complete before proceeding further
+	 */
+	ret = i915_pcode_init(i915);
+
+	return ret;
+}
+
 /**
  * i915_driver_hw_probe - setup state requiring device access
  * @dev_priv: device private
@@ -547,10 +574,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_opregion_setup(dev_priv);
 
-	ret = i915_pcode_init(dev_priv);
-	if (ret)
-		goto err_opregion;
-
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
@@ -561,8 +584,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	return 0;
 
-err_opregion:
-	intel_opregion_cleanup(dev_priv);
 err_msi:
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
@@ -778,6 +799,10 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_runtime_pm_put;
 
+	ret = intel_pcode_probe(i915);
+	if (ret)
+		goto out_tiles_cleanup;
+
 	ret = i915_driver_mmio_probe(i915);
 	if (ret < 0)
 		goto out_tiles_cleanup;
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index dfefad5a5fec..4a353d4adf86 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2658,18 +2658,6 @@ int intel_uncore_init_mmio(struct intel_uncore *uncore)
 	if (ret)
 		return ret;
 
-	/*
-	 * The boot firmware initializes local memory and assesses its health.
-	 * If memory training fails, the punit will have been instructed to
-	 * keep the GT powered down; we won't be able to communicate with it
-	 * and we should not continue with driver initialization.
-	 */
-	if (IS_DGFX(i915) &&
-	    !(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
-		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
-		return -ENODEV;
-	}
-
 	if (GRAPHICS_VER(i915) > 5 && !intel_vgpu_active(i915))
 		uncore->flags |= UNCORE_HAS_FORCEWAKE;
 
-- 
2.41.0

