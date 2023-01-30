Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E50681838
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D5C10E0FD;
	Mon, 30 Jan 2023 18:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF4810E0D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101954; x=1706637954;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b+q24Oex4eK+fhYGO86FX4VAt7PKI2rVdkRVOSiAhOw=;
 b=cRqqDhnqtmgoKxlhT+xtaDAFAZxm0TEzoeO5XzStYdJnTFlttejJ/oOf
 ywBGvyY6SSh6AzwsMNYhVZNkXgNKMMWpOkhPuDQUI+z01s6SP81WdS96R
 c8DgrunqWlE3EMX3tH1MzPKejPkz6RT8G3UaB7tPIyDdJ2d2nIpxgHGaZ
 OeB1duFp69CX1GVfecYKugCmuKvkbnICJ36zR2Z2nqH6zShk/aG2YduBJ
 /DbtVaibELU09rgChkO41A5u5d6r+DR+z6/Fx3SRlY8AQSIg29UFeIY56
 l7gQxkus25sVtFTiveHEbEokzYAGgLCZYPUHifLwSPn16r22wWS8ycpzM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742217"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742217"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918125"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918125"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:36 +0200
Message-Id: <20230130180540.8972-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/lvds: Extract intel_lvds_regs.h
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the integrated LVDS port register definitions
into their own header file.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
 .../gpu/drm/i915/display/intel_lvds_regs.h    | 65 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 54 ---------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 8 files changed, 71 insertions(+), 54 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_lvds_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fcd3f1c7af32..166662ade593 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -94,6 +94,7 @@
 #include "intel_hotplug.h"
 #include "intel_hti.h"
 #include "intel_lvds.h"
+#include "intel_lvds_regs.h"
 #include "intel_modeset_setup.h"
 #include "intel_modeset_verify.h"
 #include "intel_overlay.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index c338895d8545..2fa337ad8155 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -49,6 +49,7 @@
 #include "intel_fdi.h"
 #include "intel_gmbus.h"
 #include "intel_lvds.h"
+#include "intel_lvds_regs.h"
 #include "intel_panel.h"
 
 /* Private structure for the integrated LVDS support */
diff --git a/drivers/gpu/drm/i915/display/intel_lvds_regs.h b/drivers/gpu/drm/i915/display/intel_lvds_regs.h
new file mode 100644
index 000000000000..a0051565ebd7
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_lvds_regs.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_LVDS_REGS_H__
+#define __INTEL_LVDS_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* LVDS port control */
+#define LVDS		_MMIO(0x61180)
+/*
+ * Enables the LVDS port.  This bit must be set before DPLLs are enabled, as
+ * the DPLL semantics change when the LVDS is assigned to that pipe.
+ */
+#define   LVDS_PORT_EN			REG_BIT(31)
+/* Selects pipe B for LVDS data.  Must be set on pre-965. */
+#define   LVDS_PIPE_SEL_MASK		REG_BIT(30)
+#define   LVDS_PIPE_SEL(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK, (x))
+#define   LVDS_PIPE_SEL_MASK_CPT	REG_GENMASK(30, 29)
+#define   LVDS_PIPE_SEL_CPT(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK_CPT, (x))
+/* LVDS dithering flag on 965/g4x platform */
+#define   LVDS_ENABLE_DITHER		REG_BIT(25)
+/* LVDS sync polarity flags. Set to invert (i.e. negative) */
+#define   LVDS_VSYNC_POLARITY		REG_BIT(21)
+#define   LVDS_HSYNC_POLARITY		REG_BIT(20)
+
+/* Enable border for unscaled (or aspect-scaled) display */
+#define   LVDS_BORDER_ENABLE		REG_BIT(15)
+/*
+ * Enables the A0-A2 data pairs and CLKA, containing 18 bits of color data per
+ * pixel.
+ */
+#define   LVDS_A0A2_CLKA_POWER_MASK	REG_GENMASK(9, 8)
+#define   LVDS_A0A2_CLKA_POWER_DOWN	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 0)
+#define   LVDS_A0A2_CLKA_POWER_UP	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 3)
+/*
+ * Controls the A3 data pair, which contains the additional LSBs for 24 bit
+ * mode.  Only enabled if LVDS_A0A2_CLKA_POWER_UP also indicates it should be
+ * on.
+ */
+#define   LVDS_A3_POWER_MASK		REG_GENMASK(7, 6)
+#define   LVDS_A3_POWER_DOWN		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 0)
+#define   LVDS_A3_POWER_UP		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 3)
+/*
+ * Controls the CLKB pair.  This should only be set when LVDS_B0B3_POWER_UP
+ * is set.
+ */
+#define   LVDS_CLKB_POWER_MASK		REG_GENMASK(5, 4)
+#define   LVDS_CLKB_POWER_DOWN		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 0)
+#define   LVDS_CLKB_POWER_UP		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 3)
+/*
+ * Controls the B0-B3 data pairs.  This must be set to match the DPLL p2
+ * setting for whether we are in dual-channel mode.  The B3 pair will
+ * additionally only be powered up when LVDS_A3_POWER_UP is set.
+ */
+#define   LVDS_B0B3_POWER_MASK		REG_GENMASK(3, 2)
+#define   LVDS_B0B3_POWER_DOWN		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 0)
+#define   LVDS_B0B3_POWER_UP		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 3)
+
+#define PCH_LVDS	_MMIO(0xe1180)
+#define   LVDS_DETECTED			REG_BIT(1)
+
+#endif /* __INTEL_LVDS_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 42aa04bac261..ce2a34a25211 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -39,6 +39,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_drrs.h"
+#include "intel_lvds_regs.h"
 #include "intel_panel.h"
 #include "intel_quirks.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index cecc0d007cf3..419221f4b454 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -10,6 +10,7 @@
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_lvds.h"
+#include "intel_lvds_regs.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7b21438edd9b..d255b92774ea 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -13,6 +13,7 @@
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
 #include "intel_lvds.h"
+#include "intel_lvds_regs.h"
 #include "intel_pps.h"
 #include "intel_quirks.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 58ff9671c74d..596efc940ee7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2597,57 +2597,6 @@
 #define   SDVO_PIPE_SEL_MASK_CHV		(3 << 24)
 #define   SDVO_PIPE_SEL_CHV(pipe)		((pipe) << 24)
 
-/* LVDS port control */
-#define LVDS			_MMIO(0x61180)
-/*
- * Enables the LVDS port.  This bit must be set before DPLLs are enabled, as
- * the DPLL semantics change when the LVDS is assigned to that pipe.
- */
-#define   LVDS_PORT_EN			REG_BIT(31)
-/* Selects pipe B for LVDS data.  Must be set on pre-965. */
-#define   LVDS_PIPE_SEL_MASK		REG_BIT(30)
-#define   LVDS_PIPE_SEL(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK, (x))
-#define   LVDS_PIPE_SEL_MASK_CPT	REG_GENMASK(30, 29)
-#define   LVDS_PIPE_SEL_CPT(x)		REG_FIELD_PREP(LVDS_PIPE_SEL_MASK_CPT, (x))
-/* LVDS dithering flag on 965/g4x platform */
-#define   LVDS_ENABLE_DITHER		REG_BIT(25)
-/* LVDS sync polarity flags. Set to invert (i.e. negative) */
-#define   LVDS_VSYNC_POLARITY		REG_BIT(21)
-#define   LVDS_HSYNC_POLARITY		REG_BIT(20)
-
-/* Enable border for unscaled (or aspect-scaled) display */
-#define   LVDS_BORDER_ENABLE		REG_BIT(15)
-/*
- * Enables the A0-A2 data pairs and CLKA, containing 18 bits of color data per
- * pixel.
- */
-#define   LVDS_A0A2_CLKA_POWER_MASK	REG_GENMASK(9, 8)
-#define   LVDS_A0A2_CLKA_POWER_DOWN	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 0)
-#define   LVDS_A0A2_CLKA_POWER_UP	REG_FIELD_PREP(LVDS_A0A2_CLKA_POWER_MASK, 3)
-/*
- * Controls the A3 data pair, which contains the additional LSBs for 24 bit
- * mode.  Only enabled if LVDS_A0A2_CLKA_POWER_UP also indicates it should be
- * on.
- */
-#define   LVDS_A3_POWER_MASK		REG_GENMASK(7, 6)
-#define   LVDS_A3_POWER_DOWN		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 0)
-#define   LVDS_A3_POWER_UP		REG_FIELD_PREP(LVDS_A3_POWER_MASK, 3)
-/*
- * Controls the CLKB pair.  This should only be set when LVDS_B0B3_POWER_UP
- * is set.
- */
-#define   LVDS_CLKB_POWER_MASK		REG_GENMASK(5, 4)
-#define   LVDS_CLKB_POWER_DOWN		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 0)
-#define   LVDS_CLKB_POWER_UP		REG_FIELD_PREP(LVDS_CLKB_POWER_MASK, 3)
-/*
- * Controls the B0-B3 data pairs.  This must be set to match the DPLL p2
- * setting for whether we are in dual-channel mode.  The B3 pair will
- * additionally only be powered up when LVDS_A3_POWER_UP is set.
- */
-#define   LVDS_B0B3_POWER_MASK		REG_GENMASK(3, 2)
-#define   LVDS_B0B3_POWER_DOWN		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 0)
-#define   LVDS_B0B3_POWER_UP		REG_FIELD_PREP(LVDS_B0B3_POWER_MASK, 3)
-
 /* Video Data Island Packet control */
 #define VIDEO_DIP_DATA		_MMIO(0x61178)
 /* Read the description of VIDEO_DIP_DATA (before Haswell) or VIDEO_DIP_ECC
@@ -6395,9 +6344,6 @@
 #define FDI_PLL_CTL_1           _MMIO(0xfe000)
 #define FDI_PLL_CTL_2           _MMIO(0xfe004)
 
-#define PCH_LVDS	_MMIO(0xe1180)
-#define   LVDS_DETECTED	REG_BIT(1)
-
 #define _PCH_DP_B		0xe4100
 #define PCH_DP_B		_MMIO(_PCH_DP_B)
 #define _PCH_DPB_AUX_CH_CTL	0xe4110
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 1f4805aa2b08..c5cdff38cc5a 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -8,6 +8,7 @@
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_lvds_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
 #include "gvt/gvt.h"
-- 
2.39.1

