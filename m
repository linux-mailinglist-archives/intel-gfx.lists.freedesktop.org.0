Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A703FA91B27
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 278B810EADC;
	Thu, 17 Apr 2025 11:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGZgyJ55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE7910EADD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890307; x=1776426307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GZipMWWPrir4CIF4cIAAM9Oz9PI0PQ5k1AVB8Tyk5mI=;
 b=AGZgyJ55FMXw748Jx+bR1sdq7qF9K0G58Q63T+dMTn4hvIX/3Q9VBeYE
 FLuAlCmCoIHGbQqH2Bk+ddR0euZnUg6C+sx1h3WJEP+F1Vx8aD63/MFLE
 DgKNC6giey4X0M5+lyYzVZR4RX2pV2x7X75GU8m7fFUmK4XsUF9Dfo2DK
 xUza7kcj41XeVXM47Hb3Ab9J9P7KzgPTIs7Iwg/wC9k3ot7x2uuxdA17M
 MXhSocYnTCcffpK/VoGbADJxJapsprh7f6wLORxmmxjSu8b+y3f0Lfodr
 4Xeo3cHkGG2SO8u7t2RB+ReIyTKPd4oPCG1Ss1y6jogb5hPRlwgwrVqvU w==;
X-CSE-ConnectionGUID: zIBk/DvwRPO9xw6kVA2qkg==
X-CSE-MsgGUID: p59dJpKORCSG3YMFtFqFMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638252"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638252"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:06 -0700
X-CSE-ConnectionGUID: G2WvSOSMSVG8wsenWzVL4Q==
X-CSE-MsgGUID: C9//MiNxQkGQvRjjoxDsJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:45:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:45:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/vga: Extract intel_vga_regs.h
Date: Thu, 17 Apr 2025 14:44:51 +0300
Message-ID: <20250417114454.12836-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the VGACNTR register definitions into their own
header file, to declutter i915_reg.h a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
 drivers/gpu/drm/i915/display/intel_vga_regs.h | 38 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 30 ---------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 5 files changed, 41 insertions(+), 30 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vga_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 684b5d1bc87c..56047f701798 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -13,6 +13,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_vga.h"
+#include "intel_vga_regs.h"
 
 static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vga_regs.h b/drivers/gpu/drm/i915/display/intel_vga_regs.h
new file mode 100644
index 000000000000..031da94cab79
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_vga_regs.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2025 Intel Corporation
+ */
+
+#ifndef __INTEL_VGA_REGS_H__
+#define __INTEL_VGA_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+#define VGACNTRL		_MMIO(0x71400)
+#define   VGA_DISP_DISABLE			REG_BIT(31)
+#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
+#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
+#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
+#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
+#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, (pipe))
+#define   VGA_BORDER_ENABLE			REG_BIT(26)
+#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
+#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
+#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
+#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
+#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
+#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
+#define   VGA_PALETTE_BYPASS			REG_BIT(19)
+#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
+#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
+#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
+#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
+#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
+#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
+#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
+
+#define VLV_VGACNTRL	_MMIO(VLV_DISPLAY_BASE + 0x71400)
+
+#define CPU_VGACNTRL	_MMIO(0x41000)
+
+#endif /* __INTEL_VGA_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index e6e9010462e3..1344e6d20a34 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -56,6 +56,7 @@
 #include "display/intel_pps_regs.h"
 #include "display/intel_psr_regs.h"
 #include "display/intel_sprite_regs.h"
+#include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a533889c2793..38fd44cff5e8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1812,36 +1812,6 @@
 #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
-/* VBIOS regs */
-#define VGACNTRL		_MMIO(0x71400)
-#define   VGA_DISP_DISABLE			REG_BIT(31)
-#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
-#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
-#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
-#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
-#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, (pipe))
-#define   VGA_BORDER_ENABLE			REG_BIT(26)
-#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
-#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
-#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
-#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
-#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
-#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
-#define   VGA_PALETTE_BYPASS			REG_BIT(19)
-#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
-#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
-#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
-#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
-#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
-#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
-#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
-
-#define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)
-
-/* Ironlake */
-
-#define CPU_VGACNTRL	_MMIO(0x41000)
-
 #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
 #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
 #define  DIGITAL_PORTA_PULSE_DURATION_2ms	(0 << 2) /* pre-HSW */
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 76d84cbb8361..d581a9d2c063 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -21,6 +21,7 @@
 #include "display/intel_pfit_regs.h"
 #include "display/intel_psr_regs.h"
 #include "display/intel_sprite_regs.h"
+#include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
 #include "display/skl_watermark_regs.h"
 #include "display/vlv_dsi_pll_regs.h"
-- 
2.49.0

