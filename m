Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 144274895D1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 10:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1662012B6DA;
	Mon, 10 Jan 2022 09:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5DE12B6D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 09:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641808667; x=1673344667;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=66DVlcBAqL6Uct8cGThj4vomgFY840/eUPAfyNDyS1Y=;
 b=ZYPHXP9ut2sdthf+gSGzKJTMXQk1VU7pWMYA3bV1JEmEb8zJxNpg9Jb0
 rbKeY1XyFn05RfWI7NDaxrUgoxYIlva51grNALj/kzM9fdgNicmkIvuhY
 iS98SAFRC5z5ZHUEtBU9eYk7J7naaYR3Lx2byACesGf4rxQ4zEyBMhzVx
 gHrYSYVuw5xe9gJzp5xoTLxO5UGUA5QuS9n9tl5isZ1ntumaRzhJEtCL4
 gvrhykA+xYZ7sYOf6VNaPcUFII4Z/BOVjdqGqaVnctTSmdDNBgPKBQMV5
 Tkl9TH/RxyxvbIg3ovmFQ/Z1wUU0Cnk5xK6nzKugEsliDt/GQw+PmUJVo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="303935003"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="303935003"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:57:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="622621431"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:57:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 11:57:37 +0200
Message-Id: <20220110095740.166078-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: split out PCI config space
 registers from i915_reg.h
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

The PCI config space registers don't really belong next to the MMIO
register definitions.

v2: Fix	copyright year (Matt)

Cc: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
 drivers/gpu/drm/i915/display/intel_opregion.c |  1 +
 drivers/gpu/drm/i915/display/intel_overlay.c  |  1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 78 -----------------
 drivers/gpu/drm/i915/i915_suspend.c           |  1 +
 drivers/gpu/drm/i915/intel_pci_config.h       | 85 +++++++++++++++++++
 9 files changed, 92 insertions(+), 78 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_pci_config.h

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 2db3b792aca6..98f7ea44042f 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -13,6 +13,7 @@
 #include "intel_dp_aux_backlight.h"
 #include "intel_dsi_dcs_backlight.h"
 #include "intel_panel.h"
+#include "intel_pci_config.h"
 
 /**
  * scale - scale values from one range to another
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 249f81a80eb7..1f13398e8ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -31,6 +31,7 @@
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_psr.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 985790a66a4d..af9d30f56cc1 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -35,6 +35,7 @@
 #include "intel_backlight.h"
 #include "intel_display_types.h"
 #include "intel_opregion.h"
+#include "intel_pci_config.h"
 
 #define OPREGION_HEADER_OFFSET 0
 #define OPREGION_ACPI_OFFSET   0x100
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 1a376e9a1ff3..991624a1351a 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -38,6 +38,7 @@
 #include "intel_display_types.h"
 #include "intel_frontbuffer.h"
 #include "intel_overlay.h"
+#include "intel_pci_config.h"
 
 /* Limits for overlay size. According to intel doc, the real limits are:
  * Y width: 4095, UV width (planar): 2047, Y height: 2047,
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 7be0002d9d70..a75ef7bf36c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -19,6 +19,7 @@
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
+#include "intel_pci_config.h"
 #include "intel_reset.h"
 
 #include "uc/intel_guc.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5f2343389b5e..762bf7e65784 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -86,6 +86,7 @@
 #include "intel_dram.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
+#include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e20e832162b4..baa0b9e6acb2 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -275,84 +275,6 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
 #define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
 
-/* PCI config space */
-
-#define MCHBAR_I915 0x44
-#define MCHBAR_I965 0x48
-#define MCHBAR_SIZE (4 * 4096)
-
-#define DEVEN 0x54
-#define   DEVEN_MCHBAR_EN (1 << 28)
-
-/* BSM in include/drm/i915_drm.h */
-
-#define HPLLCC	0xc0 /* 85x only */
-#define   GC_CLOCK_CONTROL_MASK		(0x7 << 0)
-#define   GC_CLOCK_133_200		(0 << 0)
-#define   GC_CLOCK_100_200		(1 << 0)
-#define   GC_CLOCK_100_133		(2 << 0)
-#define   GC_CLOCK_133_266		(3 << 0)
-#define   GC_CLOCK_133_200_2		(4 << 0)
-#define   GC_CLOCK_133_266_2		(5 << 0)
-#define   GC_CLOCK_166_266		(6 << 0)
-#define   GC_CLOCK_166_250		(7 << 0)
-
-#define I915_GDRST 0xc0 /* PCI config register */
-#define   GRDOM_FULL		(0 << 2)
-#define   GRDOM_RENDER		(1 << 2)
-#define   GRDOM_MEDIA		(3 << 2)
-#define   GRDOM_MASK		(3 << 2)
-#define   GRDOM_RESET_STATUS	(1 << 1)
-#define   GRDOM_RESET_ENABLE	(1 << 0)
-
-/* BSpec only has register offset, PCI device and bit found empirically */
-#define I830_CLOCK_GATE	0xc8 /* device 0 */
-#define   I830_L2_CACHE_CLOCK_GATE_DISABLE	(1 << 2)
-
-#define GCDGMBUS 0xcc
-
-#define GCFGC2	0xda
-#define GCFGC	0xf0 /* 915+ only */
-#define   GC_LOW_FREQUENCY_ENABLE	(1 << 7)
-#define   GC_DISPLAY_CLOCK_190_200_MHZ	(0 << 4)
-#define   GC_DISPLAY_CLOCK_333_320_MHZ	(4 << 4)
-#define   GC_DISPLAY_CLOCK_267_MHZ_PNV	(0 << 4)
-#define   GC_DISPLAY_CLOCK_333_MHZ_PNV	(1 << 4)
-#define   GC_DISPLAY_CLOCK_444_MHZ_PNV	(2 << 4)
-#define   GC_DISPLAY_CLOCK_200_MHZ_PNV	(5 << 4)
-#define   GC_DISPLAY_CLOCK_133_MHZ_PNV	(6 << 4)
-#define   GC_DISPLAY_CLOCK_167_MHZ_PNV	(7 << 4)
-#define   GC_DISPLAY_CLOCK_MASK		(7 << 4)
-#define   GM45_GC_RENDER_CLOCK_MASK	(0xf << 0)
-#define   GM45_GC_RENDER_CLOCK_266_MHZ	(8 << 0)
-#define   GM45_GC_RENDER_CLOCK_320_MHZ	(9 << 0)
-#define   GM45_GC_RENDER_CLOCK_400_MHZ	(0xb << 0)
-#define   GM45_GC_RENDER_CLOCK_533_MHZ	(0xc << 0)
-#define   I965_GC_RENDER_CLOCK_MASK	(0xf << 0)
-#define   I965_GC_RENDER_CLOCK_267_MHZ	(2 << 0)
-#define   I965_GC_RENDER_CLOCK_333_MHZ	(3 << 0)
-#define   I965_GC_RENDER_CLOCK_444_MHZ	(4 << 0)
-#define   I965_GC_RENDER_CLOCK_533_MHZ	(5 << 0)
-#define   I945_GC_RENDER_CLOCK_MASK	(7 << 0)
-#define   I945_GC_RENDER_CLOCK_166_MHZ	(0 << 0)
-#define   I945_GC_RENDER_CLOCK_200_MHZ	(1 << 0)
-#define   I945_GC_RENDER_CLOCK_250_MHZ	(3 << 0)
-#define   I945_GC_RENDER_CLOCK_400_MHZ	(5 << 0)
-#define   I915_GC_RENDER_CLOCK_MASK	(7 << 0)
-#define   I915_GC_RENDER_CLOCK_166_MHZ	(0 << 0)
-#define   I915_GC_RENDER_CLOCK_200_MHZ	(1 << 0)
-#define   I915_GC_RENDER_CLOCK_333_MHZ	(4 << 0)
-
-#define ASLE	0xe4
-#define ASLS	0xfc
-
-#define SWSCI	0xe8
-#define   SWSCI_SCISEL	(1 << 15)
-#define   SWSCI_GSSCIE	(1 << 0)
-
-#define LBPC 0xf4 /* legacy/combination backlight modes, also called LBB */
-
-
 #define ILK_GDSR _MMIO(MCHBAR_MIRROR_BASE + 0x2ca4)
 #define  ILK_GRDOM_FULL		(0 << 1)
 #define  ILK_GRDOM_RENDER	(1 << 1)
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index f7b55f34dba8..889f5b7dc78e 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -32,6 +32,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_suspend.h"
+#include "intel_pci_config.h"
 
 static void intel_save_swf(struct drm_i915_private *dev_priv)
 {
diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
new file mode 100644
index 000000000000..12cd9d4f23de
--- /dev/null
+++ b/drivers/gpu/drm/i915/intel_pci_config.h
@@ -0,0 +1,85 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_PCI_CONFIG_H__
+#define __INTEL_PCI_CONFIG_H__
+
+/* BSM in include/drm/i915_drm.h */
+
+#define MCHBAR_I915				0x44
+#define MCHBAR_I965				0x48
+#define   MCHBAR_SIZE				(4 * 4096)
+
+#define DEVEN					0x54
+#define   DEVEN_MCHBAR_EN			(1 << 28)
+
+#define HPLLCC					0xc0 /* 85x only */
+#define   GC_CLOCK_CONTROL_MASK			(0x7 << 0)
+#define   GC_CLOCK_133_200			(0 << 0)
+#define   GC_CLOCK_100_200			(1 << 0)
+#define   GC_CLOCK_100_133			(2 << 0)
+#define   GC_CLOCK_133_266			(3 << 0)
+#define   GC_CLOCK_133_200_2			(4 << 0)
+#define   GC_CLOCK_133_266_2			(5 << 0)
+#define   GC_CLOCK_166_266			(6 << 0)
+#define   GC_CLOCK_166_250			(7 << 0)
+
+#define I915_GDRST				0xc0
+#define   GRDOM_FULL				(0 << 2)
+#define   GRDOM_RENDER				(1 << 2)
+#define   GRDOM_MEDIA				(3 << 2)
+#define   GRDOM_MASK				(3 << 2)
+#define   GRDOM_RESET_STATUS			(1 << 1)
+#define   GRDOM_RESET_ENABLE			(1 << 0)
+
+/* BSpec only has register offset, PCI device and bit found empirically */
+#define I830_CLOCK_GATE				0xc8 /* device 0 */
+#define   I830_L2_CACHE_CLOCK_GATE_DISABLE	(1 << 2)
+
+#define GCDGMBUS				0xcc
+
+#define GCFGC2					0xda
+#define GCFGC					0xf0 /* 915+ only */
+#define   GC_LOW_FREQUENCY_ENABLE		(1 << 7)
+#define   GC_DISPLAY_CLOCK_190_200_MHZ		(0 << 4)
+#define   GC_DISPLAY_CLOCK_333_320_MHZ		(4 << 4)
+#define   GC_DISPLAY_CLOCK_267_MHZ_PNV		(0 << 4)
+#define   GC_DISPLAY_CLOCK_333_MHZ_PNV		(1 << 4)
+#define   GC_DISPLAY_CLOCK_444_MHZ_PNV		(2 << 4)
+#define   GC_DISPLAY_CLOCK_200_MHZ_PNV		(5 << 4)
+#define   GC_DISPLAY_CLOCK_133_MHZ_PNV		(6 << 4)
+#define   GC_DISPLAY_CLOCK_167_MHZ_PNV		(7 << 4)
+#define   GC_DISPLAY_CLOCK_MASK			(7 << 4)
+#define   GM45_GC_RENDER_CLOCK_MASK		(0xf << 0)
+#define   GM45_GC_RENDER_CLOCK_266_MHZ		(8 << 0)
+#define   GM45_GC_RENDER_CLOCK_320_MHZ		(9 << 0)
+#define   GM45_GC_RENDER_CLOCK_400_MHZ		(0xb << 0)
+#define   GM45_GC_RENDER_CLOCK_533_MHZ		(0xc << 0)
+#define   I965_GC_RENDER_CLOCK_MASK		(0xf << 0)
+#define   I965_GC_RENDER_CLOCK_267_MHZ		(2 << 0)
+#define   I965_GC_RENDER_CLOCK_333_MHZ		(3 << 0)
+#define   I965_GC_RENDER_CLOCK_444_MHZ		(4 << 0)
+#define   I965_GC_RENDER_CLOCK_533_MHZ		(5 << 0)
+#define   I945_GC_RENDER_CLOCK_MASK		(7 << 0)
+#define   I945_GC_RENDER_CLOCK_166_MHZ		(0 << 0)
+#define   I945_GC_RENDER_CLOCK_200_MHZ		(1 << 0)
+#define   I945_GC_RENDER_CLOCK_250_MHZ		(3 << 0)
+#define   I945_GC_RENDER_CLOCK_400_MHZ		(5 << 0)
+#define   I915_GC_RENDER_CLOCK_MASK		(7 << 0)
+#define   I915_GC_RENDER_CLOCK_166_MHZ		(0 << 0)
+#define   I915_GC_RENDER_CLOCK_200_MHZ		(1 << 0)
+#define   I915_GC_RENDER_CLOCK_333_MHZ		(4 << 0)
+
+#define ASLE					0xe4
+#define ASLS					0xfc
+
+#define SWSCI					0xe8
+#define   SWSCI_SCISEL				(1 << 15)
+#define   SWSCI_GSSCIE				(1 << 0)
+
+/* legacy/combination backlight modes, also called LBB */
+#define LBPC					0xf4
+
+#endif /* __INTEL_PCI_CONFIG_H__ */
-- 
2.30.2

