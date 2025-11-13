Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD729C57B4E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F6F10E810;
	Thu, 13 Nov 2025 13:37:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PY7D4usX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D480810E810;
 Thu, 13 Nov 2025 13:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041066; x=1794577066;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mC7m8KbszPDHXEANUzQdLRZ0KVvrTU3TzBH+NSYJYZc=;
 b=PY7D4usXIanoDUOVOTWp+lOiOLTAKE1e8ImD2wlI6PZXHrwtIjaP4PHw
 ybSBzhQUqGrRWmfG/djh/lHIVMpcQF/Oh/+R0gstaZ0zRPG6dgEmEVyC1
 gjO8ZYPksIh43l42OfYh2xyCaCvfwyzjoI3ShP6KBJa8MUCHT/otaBTOL
 VEix3DJh7Yxs3dthfRJ0l9SWz6QBvDkUvrwbDkr3etxPqKUX/itAEnN4y
 n8Y7VzJDF2tuSTPownV7q/DoI10lHehCHYMBIoHt0eT9Fp1tav4vsw6Cs
 9nxhiuD17hCelF9TIoWDxD/Tk/td93HD7ZOfzseuYAGESFoWxTPaJMXZu A==;
X-CSE-ConnectionGUID: 1hCa+Yq6RL6XG2nphBtvCA==
X-CSE-MsgGUID: bqpPb8R3QyaFC1K97XhU8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65004445"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="65004445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:37:45 -0800
X-CSE-ConnectionGUID: ycvd4ytdQ1ibkBE4wii9Kw==
X-CSE-MsgGUID: z7Fzhd4SQ42HKfHDcmPpuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="212901700"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:37:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH] drm/i915/gmch: split out i915_gmch.[ch] from soc
Date: Thu, 13 Nov 2025 15:37:38 +0200
Message-ID: <20251113133738.696502-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Most of the soc/intel_gmch.[ch] code is i915 core specific. Split it out
to i915_gmch.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile         |   1 +
 drivers/gpu/drm/i915/i915_driver.c    |  11 +-
 drivers/gpu/drm/i915/i915_gmch.c      | 141 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_gmch.h      |  13 +++
 drivers/gpu/drm/i915/soc/intel_gmch.c | 132 ------------------------
 drivers/gpu/drm/i915/soc/intel_gmch.h |   3 -
 6 files changed, 160 insertions(+), 141 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_gmch.c
 create mode 100644 drivers/gpu/drm/i915/i915_gmch.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c7ef64b8f99a..90588d5bb908 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -30,6 +30,7 @@ i915-y += \
 	i915_edram.o \
 	i915_freq.o \
 	i915_getparam.o \
+	i915_gmch.o \
 	i915_ioctl.o \
 	i915_irq.o \
 	i915_mitigations.o \
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 1dc6ba4cf5a9..1fc7c5e82923 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -87,8 +87,6 @@
 #include "pxp/intel_pxp_debugfs.h"
 #include "pxp/intel_pxp_pm.h"
 
-#include "soc/intel_gmch.h"
-
 #include "i915_debugfs.h"
 #include "i915_driver.h"
 #include "i915_drm_client.h"
@@ -96,6 +94,7 @@
 #include "i915_edram.h"
 #include "i915_file_private.h"
 #include "i915_getparam.h"
+#include "i915_gmch.h"
 #include "i915_hwmon.h"
 #include "i915_ioc32.h"
 #include "i915_ioctl.h"
@@ -322,7 +321,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	if (i915_inject_probe_failure(dev_priv))
 		return -ENODEV;
 
-	ret = intel_gmch_bridge_setup(dev_priv);
+	ret = i915_gmch_bridge_setup(dev_priv);
 	if (ret < 0)
 		return ret;
 
@@ -339,7 +338,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	}
 
 	/* Try to make sure MCHBAR is enabled before poking at it */
-	intel_gmch_bar_setup(dev_priv);
+	i915_gmch_bar_setup(dev_priv);
 	intel_device_info_runtime_init(dev_priv);
 	intel_display_device_info_runtime_init(display);
 
@@ -355,7 +354,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
 	return 0;
 
 err_uncore:
-	intel_gmch_bar_teardown(dev_priv);
+	i915_gmch_bar_teardown(dev_priv);
 
 	return ret;
 }
@@ -366,7 +365,7 @@ static int i915_driver_mmio_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_mmio_release(struct drm_i915_private *dev_priv)
 {
-	intel_gmch_bar_teardown(dev_priv);
+	i915_gmch_bar_teardown(dev_priv);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_gmch.c b/drivers/gpu/drm/i915/i915_gmch.c
new file mode 100644
index 000000000000..2d55831b3c58
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_gmch.c
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <linux/pnp.h>
+
+#include <drm/drm_managed.h>
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
+#include "i915_gmch.h"
+#include "intel_pci_config.h"
+
+static void i915_gmch_bridge_release(struct drm_device *dev, void *bridge)
+{
+	pci_dev_put(bridge);
+}
+
+int i915_gmch_bridge_setup(struct drm_i915_private *i915)
+{
+	int domain = pci_domain_nr(to_pci_dev(i915->drm.dev)->bus);
+
+	i915->gmch.pdev = pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
+	if (!i915->gmch.pdev) {
+		drm_err(&i915->drm, "bridge device not found\n");
+		return -EIO;
+	}
+
+	return drmm_add_action_or_reset(&i915->drm, i915_gmch_bridge_release,
+					i915->gmch.pdev);
+}
+
+static int mchbar_reg(struct drm_i915_private *i915)
+{
+	return GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+}
+
+/* Allocate space for the MCH regs if needed, return nonzero on error */
+static int
+intel_alloc_mchbar_resource(struct drm_i915_private *i915)
+{
+	u32 temp_lo, temp_hi = 0;
+	u64 mchbar_addr;
+	int ret;
+
+	if (GRAPHICS_VER(i915) >= 4)
+		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4, &temp_hi);
+	pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp_lo);
+	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
+
+	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
+	if (IS_ENABLED(CONFIG_PNP) && mchbar_addr &&
+	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
+		return 0;
+
+	/* Get some space for it */
+	i915->gmch.mch_res.name = "i915 MCHBAR";
+	i915->gmch.mch_res.flags = IORESOURCE_MEM;
+	ret = pci_bus_alloc_resource(i915->gmch.pdev->bus,
+				     &i915->gmch.mch_res,
+				     MCHBAR_SIZE, MCHBAR_SIZE,
+				     PCIBIOS_MIN_MEM,
+				     0, pcibios_align_resource,
+				     i915->gmch.pdev);
+	if (ret) {
+		drm_dbg(&i915->drm, "failed bus alloc: %d\n", ret);
+		i915->gmch.mch_res.start = 0;
+		return ret;
+	}
+
+	if (GRAPHICS_VER(i915) >= 4)
+		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4,
+				       upper_32_bits(i915->gmch.mch_res.start));
+
+	pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
+			       lower_32_bits(i915->gmch.mch_res.start));
+	return 0;
+}
+
+/* Setup MCHBAR if possible, return true if we should disable it again */
+void i915_gmch_bar_setup(struct drm_i915_private *i915)
+{
+	u32 temp;
+	bool enabled;
+
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		return;
+
+	i915->gmch.mchbar_need_disable = false;
+
+	if (IS_I915G(i915) || IS_I915GM(i915)) {
+		pci_read_config_dword(i915->gmch.pdev, DEVEN, &temp);
+		enabled = !!(temp & DEVEN_MCHBAR_EN);
+	} else {
+		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
+		enabled = temp & 1;
+	}
+
+	/* If it's already enabled, don't have to do anything */
+	if (enabled)
+		return;
+
+	if (intel_alloc_mchbar_resource(i915))
+		return;
+
+	i915->gmch.mchbar_need_disable = true;
+
+	/* Space is allocated or reserved, so enable it. */
+	if (IS_I915G(i915) || IS_I915GM(i915)) {
+		pci_write_config_dword(i915->gmch.pdev, DEVEN,
+				       temp | DEVEN_MCHBAR_EN);
+	} else {
+		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
+		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915), temp | 1);
+	}
+}
+
+void i915_gmch_bar_teardown(struct drm_i915_private *i915)
+{
+	if (i915->gmch.mchbar_need_disable) {
+		if (IS_I915G(i915) || IS_I915GM(i915)) {
+			u32 deven_val;
+
+			pci_read_config_dword(i915->gmch.pdev, DEVEN,
+					      &deven_val);
+			deven_val &= ~DEVEN_MCHBAR_EN;
+			pci_write_config_dword(i915->gmch.pdev, DEVEN,
+					       deven_val);
+		} else {
+			u32 mchbar_val;
+
+			pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915),
+					      &mchbar_val);
+			mchbar_val &= ~1;
+			pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
+					       mchbar_val);
+		}
+	}
+
+	if (i915->gmch.mch_res.start)
+		release_resource(&i915->gmch.mch_res);
+}
diff --git a/drivers/gpu/drm/i915/i915_gmch.h b/drivers/gpu/drm/i915/i915_gmch.h
new file mode 100644
index 000000000000..3ae50bef04ea
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_gmch.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_GMCH_H__
+#define __I915_GMCH_H__
+
+struct drm_i915_private;
+
+int i915_gmch_bridge_setup(struct drm_i915_private *i915);
+void i915_gmch_bar_setup(struct drm_i915_private *i915);
+void i915_gmch_bar_teardown(struct drm_i915_private *i915);
+
+#endif /* __I915_GMCH_H__ */
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 271da30c8290..30f489417064 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -4,10 +4,8 @@
  */
 
 #include <linux/pci.h>
-#include <linux/pnp.h>
 #include <linux/vgaarb.h>
 
-#include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 #include <drm/intel/i915_drm.h>
 
@@ -17,136 +15,6 @@
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
 
-static void intel_gmch_bridge_release(struct drm_device *dev, void *bridge)
-{
-	pci_dev_put(bridge);
-}
-
-int intel_gmch_bridge_setup(struct drm_i915_private *i915)
-{
-	int domain = pci_domain_nr(to_pci_dev(i915->drm.dev)->bus);
-
-	i915->gmch.pdev = pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
-	if (!i915->gmch.pdev) {
-		drm_err(&i915->drm, "bridge device not found\n");
-		return -EIO;
-	}
-
-	return drmm_add_action_or_reset(&i915->drm, intel_gmch_bridge_release,
-					i915->gmch.pdev);
-}
-
-static int mchbar_reg(struct drm_i915_private *i915)
-{
-	return GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
-}
-
-/* Allocate space for the MCH regs if needed, return nonzero on error */
-static int
-intel_alloc_mchbar_resource(struct drm_i915_private *i915)
-{
-	u32 temp_lo, temp_hi = 0;
-	u64 mchbar_addr;
-	int ret;
-
-	if (GRAPHICS_VER(i915) >= 4)
-		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4, &temp_hi);
-	pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp_lo);
-	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
-
-	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
-	if (IS_ENABLED(CONFIG_PNP) && mchbar_addr &&
-	    pnp_range_reserved(mchbar_addr, mchbar_addr + MCHBAR_SIZE))
-		return 0;
-
-	/* Get some space for it */
-	i915->gmch.mch_res.name = "i915 MCHBAR";
-	i915->gmch.mch_res.flags = IORESOURCE_MEM;
-	ret = pci_bus_alloc_resource(i915->gmch.pdev->bus,
-				     &i915->gmch.mch_res,
-				     MCHBAR_SIZE, MCHBAR_SIZE,
-				     PCIBIOS_MIN_MEM,
-				     0, pcibios_align_resource,
-				     i915->gmch.pdev);
-	if (ret) {
-		drm_dbg(&i915->drm, "failed bus alloc: %d\n", ret);
-		i915->gmch.mch_res.start = 0;
-		return ret;
-	}
-
-	if (GRAPHICS_VER(i915) >= 4)
-		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915) + 4,
-				       upper_32_bits(i915->gmch.mch_res.start));
-
-	pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
-			       lower_32_bits(i915->gmch.mch_res.start));
-	return 0;
-}
-
-/* Setup MCHBAR if possible, return true if we should disable it again */
-void intel_gmch_bar_setup(struct drm_i915_private *i915)
-{
-	u32 temp;
-	bool enabled;
-
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		return;
-
-	i915->gmch.mchbar_need_disable = false;
-
-	if (IS_I915G(i915) || IS_I915GM(i915)) {
-		pci_read_config_dword(i915->gmch.pdev, DEVEN, &temp);
-		enabled = !!(temp & DEVEN_MCHBAR_EN);
-	} else {
-		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
-		enabled = temp & 1;
-	}
-
-	/* If it's already enabled, don't have to do anything */
-	if (enabled)
-		return;
-
-	if (intel_alloc_mchbar_resource(i915))
-		return;
-
-	i915->gmch.mchbar_need_disable = true;
-
-	/* Space is allocated or reserved, so enable it. */
-	if (IS_I915G(i915) || IS_I915GM(i915)) {
-		pci_write_config_dword(i915->gmch.pdev, DEVEN,
-				       temp | DEVEN_MCHBAR_EN);
-	} else {
-		pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915), &temp);
-		pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915), temp | 1);
-	}
-}
-
-void intel_gmch_bar_teardown(struct drm_i915_private *i915)
-{
-	if (i915->gmch.mchbar_need_disable) {
-		if (IS_I915G(i915) || IS_I915GM(i915)) {
-			u32 deven_val;
-
-			pci_read_config_dword(i915->gmch.pdev, DEVEN,
-					      &deven_val);
-			deven_val &= ~DEVEN_MCHBAR_EN;
-			pci_write_config_dword(i915->gmch.pdev, DEVEN,
-					       deven_val);
-		} else {
-			u32 mchbar_val;
-
-			pci_read_config_dword(i915->gmch.pdev, mchbar_reg(i915),
-					      &mchbar_val);
-			mchbar_val &= ~1;
-			pci_write_config_dword(i915->gmch.pdev, mchbar_reg(i915),
-					       mchbar_val);
-		}
-	}
-
-	if (i915->gmch.mch_res.start)
-		release_resource(&i915->gmch.mch_res);
-}
-
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 {
 	struct intel_display *display = i915->display;
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i915/soc/intel_gmch.h
index 23be2d113afd..907e1ae921e0 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.h
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
@@ -11,9 +11,6 @@
 struct pci_dev;
 struct drm_i915_private;
 
-int intel_gmch_bridge_setup(struct drm_i915_private *i915);
-void intel_gmch_bar_setup(struct drm_i915_private *i915);
-void intel_gmch_bar_teardown(struct drm_i915_private *i915);
 int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable_decode);
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode);
 
-- 
2.47.3

