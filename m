Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ED566DDAA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 13:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE4210E535;
	Tue, 17 Jan 2023 12:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A773410E535
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 12:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673958801; x=1705494801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EHOEcRvOPlHCnS4faGaILYzGkvjpJCmJvdoIw2wyCww=;
 b=KRuRBCnknW0/glmMMojsIfbhgn/wmrwzDMEz0/ezBIMb85kqnYIrFam7
 0/qt+j8U4fEGvusWs4bWdP5vYQaHsbHBBSmxtLAb4oQABONsT8zKApNyo
 kTr49lVS5KYa+CBDfdmBz30mu9VrtbCsVDl8yYc0G2qyzPQ/EpXLYLWpm
 KThpEVBcY6m72XpxE9CKKP5xn0vWFgr6qIUv/vZ1+oDncPZPDUdERebeQ
 LUbqKGLCG7rfO7hZp5hW+XH+9oGp49d+mZkZQ2Z10D3yrk7TSn8FYI3P0
 XQM5/Jxw0Dful1AgbmEWeUDaA6MUc5wBTWFYRSyBaT8TTCxAH1BbmP3Po g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="312549473"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="312549473"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="833154184"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="833154184"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 14:33:07 +0200
Message-Id: <980a5e08b397bc0dbccf93cd84798772233ce75c.1673958757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/gmch: split out soc/intel_gmch
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The GMCH related code is a bit too low level and out of place for the
high level i915_driver.c file. Split out to a separate file under
soc/. Rename the functions accordingly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile         |   1 +
 drivers/gpu/drm/i915/i915_driver.c    | 145 +-------------------------
 drivers/gpu/drm/i915/soc/intel_gmch.c | 145 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_gmch.h |  15 +++
 4 files changed, 166 insertions(+), 140 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.c
 create mode 100644 drivers/gpu/drm/i915/soc/intel_gmch.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f47f00b162a4..153b25b2b135 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -63,6 +63,7 @@ i915-y += i915_driver.o \
 # core peripheral code
 i915-y += \
 	soc/intel_dram.o \
+	soc/intel_gmch.o \
 	soc/intel_pch.o
 
 # core library code
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 59cbc24cda6c..41384626577d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -34,7 +34,6 @@
 #include <linux/pci.h>
 #include <linux/pm.h>
 #include <linux/pm_runtime.h>
-#include <linux/pnp.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
 #include <linux/vga_switcheroo.h>
@@ -78,6 +77,7 @@
 #include "pxp/intel_pxp_pm.h"
 
 #include "soc/intel_dram.h"
+#include "soc/intel_gmch.h"
 
 #include "i915_file_private.h"
 #include "i915_debugfs.h"
@@ -107,141 +107,6 @@
 
 static const struct drm_driver i915_drm_driver;
 
-static void i915_release_bridge_dev(struct drm_device *dev,
-				    void *bridge)
-{
-	pci_dev_put(bridge);
-}
-
-static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
-{
-	int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
-
-	dev_priv->gmch.pdev =
-		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
-	if (!dev_priv->gmch.pdev) {
-		drm_err(&dev_priv->drm, "bridge device not found\n");
-		return -EIO;
-	}
-
-	return drmm_add_action_or_reset(&dev_priv->drm, i915_release_bridge_dev,
-					dev_priv->gmch.pdev);
-}
-
-/* Allocate space for the MCH regs if needed, return nonzero on error */
-static int
-intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
-{
-	int reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
-	u32 temp_lo, temp_hi = 0;
-	u64 mchbar_addr;
-	int ret;
-
-	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_read_config_dword(dev_priv->gmch.pdev, reg + 4, &temp_hi);
-	pci_read_config_dword(dev_priv->gmch.pdev, reg, &temp_lo);
-	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
-
-	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
-#ifdef CONFIG_PNP
-	if (mchbar_addr &&
-	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
-		return 0;
-#endif
-
-	/* Get some space for it */
-	dev_priv->gmch.mch_res.name = "i915 MCHBAR";
-	dev_priv->gmch.mch_res.flags = IORESOURCE_MEM;
-	ret = pci_bus_alloc_resource(dev_priv->gmch.pdev->bus,
-				     &dev_priv->gmch.mch_res,
-				     MCHBAR_SIZE, MCHBAR_SIZE,
-				     PCIBIOS_MIN_MEM,
-				     0, pcibios_align_resource,
-				     dev_priv->gmch.pdev);
-	if (ret) {
-		drm_dbg(&dev_priv->drm, "failed bus alloc: %d\n", ret);
-		dev_priv->gmch.mch_res.start = 0;
-		return ret;
-	}
-
-	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_write_config_dword(dev_priv->gmch.pdev, reg + 4,
-				       upper_32_bits(dev_priv->gmch.mch_res.start));
-
-	pci_write_config_dword(dev_priv->gmch.pdev, reg,
-			       lower_32_bits(dev_priv->gmch.mch_res.start));
-	return 0;
-}
-
-/* Setup MCHBAR if possible, return true if we should disable it again */
-static void
-intel_setup_mchbar(struct drm_i915_private *dev_priv)
-{
-	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
-	u32 temp;
-	bool enabled;
-
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		return;
-
-	dev_priv->gmch.mchbar_need_disable = false;
-
-	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_read_config_dword(dev_priv->gmch.pdev, DEVEN, &temp);
-		enabled = !!(temp & DEVEN_MCHBAR_EN);
-	} else {
-		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
-		enabled = temp & 1;
-	}
-
-	/* If it's already enabled, don't have to do anything */
-	if (enabled)
-		return;
-
-	if (intel_alloc_mchbar_resource(dev_priv))
-		return;
-
-	dev_priv->gmch.mchbar_need_disable = true;
-
-	/* Space is allocated or reserved, so enable it. */
-	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
-				       temp | DEVEN_MCHBAR_EN);
-	} else {
-		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
-		pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg, temp | 1);
-	}
-}
-
-static void
-intel_teardown_mchbar(struct drm_i915_private *dev_priv)
-{
-	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
-
-	if (dev_priv->gmch.mchbar_need_disable) {
-		if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-			u32 deven_val;
-
-			pci_read_config_dword(dev_priv->gmch.pdev, DEVEN,
-					      &deven_val);
-			deven_val &= ~DEVEN_MCHBAR_EN;
-			pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
-					       deven_val);
-		} else {
-			u32 mchbar_val;
-
-			pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg,
-					      &mchbar_val);
-			mchbar_val &= ~1;
-			pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg,
-					       mchbar_val);
-		}
-	}
-
-	if (dev_priv->gmch.mch_res.start)
-		release_resource(&dev_priv->gmch.mch_res);
-}
-
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
 	/*
@@ -447,7 +312,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (i915_inject_probe_failure(dev_priv))
 		return -ENODEV;
 
-	ret = i915_get_bridge_dev(dev_priv);
+	ret = intel_gmch_bridge_setup(dev_priv);
 	if (ret < 0)
 		return ret;
 
@@ -464,7 +329,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	}
 
 	/* Try to make sure MCHBAR is enabled before poking at it */
-	intel_setup_mchbar(dev_priv);
+	intel_gmch_bar_setup(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
 
 	for_each_gt(gt, dev_priv, i) {
@@ -479,7 +344,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	return 0;
 
 err_uncore:
-	intel_teardown_mchbar(dev_priv);
+	intel_gmch_bar_teardown(dev_priv);
 
 	return ret;
 }
@@ -490,7 +355,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
 {
-	intel_teardown_mchbar(dev_priv);
+	intel_gmch_bar_teardown(dev_priv);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
new file mode 100644
index 000000000000..75916aa072e7
--- /dev/null
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -0,0 +1,145 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include <linux/pci.h>
+#include <linux/pnp.h>
+
+#include <drm/drm_managed.h>
+
+#include "i915_drv.h"
+#include "intel_gmch.h"
+#include "intel_pci_config.h"
+
+static void intel_gmch_bridge_release(struct drm_device *dev, void *bridge)
+{
+	pci_dev_put(bridge);
+}
+
+int intel_gmch_bridge_setup(struct drm_i915_private *dev_priv)
+{
+	int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
+
+	dev_priv->gmch.pdev =
+		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
+	if (!dev_priv->gmch.pdev) {
+		drm_err(&dev_priv->drm, "bridge device not found\n");
+		return -EIO;
+	}
+
+	return drmm_add_action_or_reset(&dev_priv->drm, intel_gmch_bridge_release,
+					dev_priv->gmch.pdev);
+}
+
+/* Allocate space for the MCH regs if needed, return nonzero on error */
+static int
+intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
+{
+	int reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	u32 temp_lo, temp_hi = 0;
+	u64 mchbar_addr;
+	int ret;
+
+	if (GRAPHICS_VER(dev_priv) >= 4)
+		pci_read_config_dword(dev_priv->gmch.pdev, reg + 4, &temp_hi);
+	pci_read_config_dword(dev_priv->gmch.pdev, reg, &temp_lo);
+	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
+
+	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
+#ifdef CONFIG_PNP
+	if (mchbar_addr &&
+	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
+		return 0;
+#endif
+
+	/* Get some space for it */
+	dev_priv->gmch.mch_res.name = "i915 MCHBAR";
+	dev_priv->gmch.mch_res.flags = IORESOURCE_MEM;
+	ret = pci_bus_alloc_resource(dev_priv->gmch.pdev->bus,
+				     &dev_priv->gmch.mch_res,
+				     MCHBAR_SIZE, MCHBAR_SIZE,
+				     PCIBIOS_MIN_MEM,
+				     0, pcibios_align_resource,
+				     dev_priv->gmch.pdev);
+	if (ret) {
+		drm_dbg(&dev_priv->drm, "failed bus alloc: %d\n", ret);
+		dev_priv->gmch.mch_res.start = 0;
+		return ret;
+	}
+
+	if (GRAPHICS_VER(dev_priv) >= 4)
+		pci_write_config_dword(dev_priv->gmch.pdev, reg + 4,
+				       upper_32_bits(dev_priv->gmch.mch_res.start));
+
+	pci_write_config_dword(dev_priv->gmch.pdev, reg,
+			       lower_32_bits(dev_priv->gmch.mch_res.start));
+	return 0;
+}
+
+/* Setup MCHBAR if possible, return true if we should disable it again */
+void intel_gmch_bar_setup(struct drm_i915_private *dev_priv)
+{
+	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	u32 temp;
+	bool enabled;
+
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		return;
+
+	dev_priv->gmch.mchbar_need_disable = false;
+
+	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
+		pci_read_config_dword(dev_priv->gmch.pdev, DEVEN, &temp);
+		enabled = !!(temp & DEVEN_MCHBAR_EN);
+	} else {
+		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
+		enabled = temp & 1;
+	}
+
+	/* If it's already enabled, don't have to do anything */
+	if (enabled)
+		return;
+
+	if (intel_alloc_mchbar_resource(dev_priv))
+		return;
+
+	dev_priv->gmch.mchbar_need_disable = true;
+
+	/* Space is allocated or reserved, so enable it. */
+	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
+		pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
+				       temp | DEVEN_MCHBAR_EN);
+	} else {
+		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
+		pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg, temp | 1);
+	}
+}
+
+void intel_gmch_bar_teardown(struct drm_i915_private *dev_priv)
+{
+	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+
+	if (dev_priv->gmch.mchbar_need_disable) {
+		if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
+			u32 deven_val;
+
+			pci_read_config_dword(dev_priv->gmch.pdev, DEVEN,
+					      &deven_val);
+			deven_val &= ~DEVEN_MCHBAR_EN;
+			pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
+					       deven_val);
+		} else {
+			u32 mchbar_val;
+
+			pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg,
+					      &mchbar_val);
+			mchbar_val &= ~1;
+			pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg,
+					       mchbar_val);
+		}
+	}
+
+	if (dev_priv->gmch.mch_res.start)
+		release_resource(&dev_priv->gmch.mch_res);
+}
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
new file mode 100644
index 000000000000..bbc52dbab708
--- /dev/null
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_GMCH_H__
+#define __INTEL_GMCH_H__
+
+struct drm_i915_private;
+
+int intel_gmch_bridge_setup(struct drm_i915_private *i915);
+void intel_gmch_bar_setup(struct drm_i915_private *i915);
+void intel_gmch_bar_teardown(struct drm_i915_private *i915);
+
+#endif /* __INTEL_GMCH_H__ */
-- 
2.34.1

