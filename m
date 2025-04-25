Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB7BA9CA04
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Apr 2025 15:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1EE010E2A7;
	Fri, 25 Apr 2025 13:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilp9qnOD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E7510E2A7;
 Fri, 25 Apr 2025 13:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745587197; x=1777123197;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xWD2TsnTLrDMPn57RsrawOp/2CinUCwx4RCU1jr9rjY=;
 b=ilp9qnODgGBorXM9jPWOE8S4i0VJi01riQLry7Nwgpd1fX10rsHYN5EZ
 +Kd0kflFj+Zt8itqT3AoefhnkY3uHb8NUPh+BS56SPk7Fusa70ZXH9Jk/
 I/gOaVV927XFUPZ8nKFGQ4VFA8M28yr2dKN0+LNQvdMH5vAgy3CWPGKIy
 BSvfTShL91N0bS2aqTFxZ4bqHFVoh5QmFpNINTbDNp/h/ErkRgYdLTIdW
 wHsD6IHM5Cgv47EYh0YtXdZq9TvRF0WHZFzuGwHGeRr634+e0KQhysPuh
 /9ssYEJmFzWDAKTFGPTdpWP6eb1VLX4gNILDP6kqGRkLWvvvEyHQs3xPf g==;
X-CSE-ConnectionGUID: xZAgCHk3RoqhomtlHhWDPA==
X-CSE-MsgGUID: LjVj/SWRT6q0WACzOwkVPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11414"; a="46479521"
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="46479521"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:56 -0700
X-CSE-ConnectionGUID: gSVZUifiRTWn2Sgnvow0/Q==
X-CSE-MsgGUID: cXpmrD3ORrKHEyua+bD2qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,238,1739865600"; d="scan'208";a="132778011"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.83])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2025 06:19:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 5/6] drm/i915: move VLV IOSF SB unit specific helpers under
 display
Date: Fri, 25 Apr 2025 16:19:23 +0300
Message-Id: <694e38c8f338daefbdb2d7707cb20d88145e18c3.1745587049.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745587049.git.jani.nikula@intel.com>
References: <cover.1745587049.git.jani.nikula@intel.com>
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

Now that all the VLV IOSF SB unit specific helper users are under
display, relocate the helpers themselves under display as
well. Resurrect the vlv_sideband.[ch] name for this. Make everything
except DPIO helpers static inlines, as their implementations are
trivial.

All of this considerably simplifies the xe compat header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   2 +-
 drivers/gpu/drm/i915/display/vlv_sideband.c   |  45 +++++
 drivers/gpu/drm/i915/display/vlv_sideband.h   | 156 ++++++++++++++++++
 drivers/gpu/drm/i915/vlv_iosf_sb.c            |  94 -----------
 drivers/gpu/drm/i915/vlv_iosf_sb.h            |  93 -----------
 .../drm/xe/compat-i915-headers/vlv_iosf_sb.h  |  91 ----------
 16 files changed, 213 insertions(+), 289 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_sideband.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3e3e4f4bfa4e..1a90eb1f180a 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -296,7 +296,8 @@ i915-y += \
 	display/intel_wm.o \
 	display/skl_scaler.o \
 	display/skl_universal_plane.o \
-	display/skl_watermark.o
+	display/skl_watermark.o \
+	display/vlv_sideband.o
 i915-$(CONFIG_ACPI) += \
 	display/intel_acpi.o \
 	display/intel_opregion.o
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 02f33cbe6765..77876ef735b7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -16,7 +16,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 struct intel_watermark_params {
 	u16 fifo_size;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 501b79498414..b1718b491ffd 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -47,7 +47,7 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_dsi.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 /**
  * DOC: CDCLK / RAWCLK
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 08cd1c2340b3..58845b74f17d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -131,7 +131,7 @@
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b3b05d7610e8..16356523816f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -27,7 +27,7 @@
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 #define for_each_power_domain_well(__display, __power_well, __domain)	\
 	for_each_power_well((__display), __power_well)			\
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 48ffd941b54b..50fe301ea8be 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -30,7 +30,7 @@
 #include "intel_vga.h"
 #include "skl_watermark.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 #include "vlv_iosf_sb_reg.h"
 
 struct i915_power_well_regs {
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 5b9c0852da2c..69f242139420 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -32,7 +32,7 @@
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 /**
  * DOC: DPIO
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 055dd2b4a904..a9e9b98d0bf9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -22,7 +22,7 @@
 #include "intel_pps.h"
 #include "intel_snps_phy.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 042308ed4ae2..4e92504f5c14 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -49,7 +49,7 @@
 #include "intel_pps_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 #define MIPI_TRANSFER_MODE_SHIFT	0
 #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 110914bbc134..346737f15fa9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -49,7 +49,7 @@
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 /* return pixels in terms of txbyteclkhs */
 static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 79438cdfc3f9..7ce924a5ef90 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -34,7 +34,7 @@
 #include "intel_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_pll_regs.h"
-#include "vlv_iosf_sb.h"
+#include "vlv_sideband.h"
 
 static const u16 lfsr_converts[] = {
 	426, 469, 234, 373, 442, 221, 110, 311, 411,		/* 62 - 70 */
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.c b/drivers/gpu/drm/i915/display/vlv_sideband.c
new file mode 100644
index 000000000000..f1caee32f623
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include "i915_drv.h"
+#include "intel_dpio_phy.h"
+#include "vlv_sideband.h"
+
+static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct drm_i915_private *i915,
+						  enum dpio_phy phy)
+{
+	/*
+	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
+	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
+	 */
+	if (IS_CHERRYVIEW(i915))
+		return phy == DPIO_PHY0 ? VLV_IOSF_SB_DPIO_2 : VLV_IOSF_SB_DPIO;
+	else
+		return VLV_IOSF_SB_DPIO;
+}
+
+u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
+{
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
+	u32 val;
+
+	val = vlv_iosf_sb_read(i915, unit, reg);
+
+	/*
+	 * FIXME: There might be some registers where all 1's is a valid value,
+	 * so ideally we should check the register offset instead...
+	 */
+	drm_WARN(&i915->drm, val == 0xffffffff,
+		 "DPIO PHY%d read reg 0x%x == 0x%x\n",
+		 phy, reg, val);
+
+	return val;
+}
+
+void vlv_dpio_write(struct drm_i915_private *i915,
+		    enum dpio_phy phy, int reg, u32 val)
+{
+	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
+
+	vlv_iosf_sb_write(i915, unit, reg, val);
+}
diff --git a/drivers/gpu/drm/i915/display/vlv_sideband.h b/drivers/gpu/drm/i915/display/vlv_sideband.h
new file mode 100644
index 000000000000..a6529801f261
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/vlv_sideband.h
@@ -0,0 +1,156 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef _VLV_SIDEBAND_H_
+#define _VLV_SIDEBAND_H_
+
+#include <linux/bitops.h>
+#include <linux/types.h>
+
+#include "vlv_iosf_sb.h"
+#include "vlv_iosf_sb_reg.h"
+
+enum dpio_phy;
+struct drm_i915_private;
+
+static inline void vlv_bunit_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
+}
+
+static inline u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_BUNIT, reg);
+}
+
+static inline void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_BUNIT, reg, val);
+}
+
+static inline void vlv_bunit_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_BUNIT));
+}
+
+static inline void vlv_cck_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
+}
+
+static inline u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, reg);
+}
+
+static inline void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCK, reg, val);
+}
+
+static inline void vlv_cck_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
+}
+
+static inline void vlv_ccu_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCU));
+}
+
+static inline u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCU, reg);
+}
+
+static inline void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCU, reg, val);
+}
+
+static inline void vlv_ccu_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCU));
+}
+
+static inline void vlv_dpio_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
+}
+
+#ifdef I915
+u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg);
+void vlv_dpio_write(struct drm_i915_private *i915,
+		    enum dpio_phy phy, int reg, u32 val);
+#else
+static inline u32 vlv_dpio_read(struct drm_i915_private *i915, int phy, int reg)
+{
+	return 0;
+}
+static inline void vlv_dpio_write(struct drm_i915_private *i915,
+				  int phy, int reg, u32 val)
+{
+}
+#endif
+
+static inline void vlv_dpio_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO));
+}
+
+static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
+}
+
+static inline u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_FLISDSI, reg);
+}
+
+static inline void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
+{
+	vlv_iosf_sb_write(i915, VLV_IOSF_SB_FLISDSI, reg, val);
+}
+
+static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_FLISDSI));
+}
+
+static inline void vlv_nc_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_NC));
+}
+
+static inline u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, addr);
+}
+
+static inline void vlv_nc_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_NC));
+}
+
+static inline void vlv_punit_get(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
+}
+
+static inline u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
+{
+	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, addr);
+}
+
+static inline int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
+{
+	return vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, addr, val);
+}
+
+static inline void vlv_punit_put(struct drm_i915_private *i915)
+{
+	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
+}
+
+#endif /* _VLV_SIDEBAND_H_ */
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
index 24567f7bf4ce..df936ca2dae1 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -196,100 +196,6 @@ int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit,
 	return vlv_sideband_rw(i915, devfn, port, opcode, addr, &val);
 }
 
-u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_PUNIT, addr);
-}
-
-int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
-{
-	return vlv_iosf_sb_write(i915, VLV_IOSF_SB_PUNIT, addr, val);
-}
-
-u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_BUNIT, reg);
-}
-
-void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_BUNIT, reg, val);
-}
-
-u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_NC, addr);
-}
-
-u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCK, reg);
-}
-
-void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCK, reg, val);
-}
-
-u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_CCU, reg);
-}
-
-void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_CCU, reg, val);
-}
-
-static enum vlv_iosf_sb_unit vlv_dpio_phy_to_unit(struct drm_i915_private *i915,
-						  enum dpio_phy phy)
-{
-	/*
-	 * IOSF_PORT_DPIO: VLV x2 PHY (DP/HDMI B and C), CHV x1 PHY (DP/HDMI D)
-	 * IOSF_PORT_DPIO_2: CHV x2 PHY (DP/HDMI B and C)
-	 */
-	if (IS_CHERRYVIEW(i915))
-		return phy == DPIO_PHY0 ? VLV_IOSF_SB_DPIO_2 : VLV_IOSF_SB_DPIO;
-	else
-		return VLV_IOSF_SB_DPIO;
-}
-
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg)
-{
-	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
-	u32 val;
-
-	val = vlv_iosf_sb_read(i915, unit, reg);
-
-	/*
-	 * FIXME: There might be some registers where all 1's is a valid value,
-	 * so ideally we should check the register offset instead...
-	 */
-	drm_WARN(&i915->drm, val == 0xffffffff,
-		 "DPIO PHY%d read reg 0x%x == 0x%x\n",
-		 phy, reg, val);
-
-	return val;
-}
-
-void vlv_dpio_write(struct drm_i915_private *i915,
-		    enum dpio_phy phy, int reg, u32 val)
-{
-	enum vlv_iosf_sb_unit unit = vlv_dpio_phy_to_unit(i915, phy);
-
-	vlv_iosf_sb_write(i915, unit, reg, val);
-}
-
-u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
-{
-	return vlv_iosf_sb_read(i915, VLV_IOSF_SB_FLISDSI, reg);
-}
-
-void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-	vlv_iosf_sb_write(i915, VLV_IOSF_SB_FLISDSI, reg, val);
-}
-
 void vlv_iosf_sb_init(struct drm_i915_private *i915)
 {
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
diff --git a/drivers/gpu/drm/i915/vlv_iosf_sb.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
index 26af3aa973f8..f4fb7213fe37 100644
--- a/drivers/gpu/drm/i915/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -6,12 +6,10 @@
 #ifndef _VLV_IOSF_SB_H_
 #define _VLV_IOSF_SB_H_
 
-#include <linux/bitops.h>
 #include <linux/types.h>
 
 #include "vlv_iosf_sb_reg.h"
 
-enum dpio_phy;
 struct drm_i915_private;
 
 enum vlv_iosf_sb_unit {
@@ -35,95 +33,4 @@ void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
 u32 vlv_iosf_sb_read(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr);
 int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf_sb_unit unit, u32 addr, u32 val);
 
-static inline void vlv_bunit_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_BUNIT));
-}
-
-u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg);
-void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val);
-
-static inline void vlv_bunit_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_BUNIT));
-}
-
-static inline void vlv_cck_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
-}
-
-u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg);
-void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val);
-
-static inline void vlv_cck_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
-}
-
-static inline void vlv_ccu_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCU));
-}
-
-u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg);
-void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val);
-
-static inline void vlv_ccu_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCU));
-}
-
-static inline void vlv_dpio_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_DPIO));
-}
-
-u32 vlv_dpio_read(struct drm_i915_private *i915, enum dpio_phy phy, int reg);
-void vlv_dpio_write(struct drm_i915_private *i915,
-		    enum dpio_phy phy, int reg, u32 val);
-
-static inline void vlv_dpio_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_DPIO));
-}
-
-static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_FLISDSI));
-}
-
-u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg);
-void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val);
-
-static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_FLISDSI));
-}
-
-static inline void vlv_nc_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_NC));
-}
-
-u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr);
-
-static inline void vlv_nc_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_NC));
-}
-
-static inline void vlv_punit_get(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
-}
-
-u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr);
-int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val);
-
-static inline void vlv_punit_put(struct drm_i915_private *i915)
-{
-	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
-}
-
 #endif /* _VLV_IOSF_SB_H_ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
index 57f7dde90ced..e34d9c72a587 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
@@ -10,7 +10,6 @@
 
 #include "vlv_iosf_sb_reg.h"
 
-enum pipe;
 struct drm_i915_private;
 
 enum vlv_iosf_sb_unit {
@@ -39,95 +38,5 @@ static inline int vlv_iosf_sb_write(struct drm_i915_private *i915, enum vlv_iosf
 static inline void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
 {
 }
-static inline void vlv_bunit_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_bunit_read(struct drm_i915_private *i915, u32 reg)
-{
-	return 0;
-}
-static inline void vlv_bunit_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-}
-static inline void vlv_bunit_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_cck_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_cck_read(struct drm_i915_private *i915, u32 reg)
-{
-	return 0;
-}
-static inline void vlv_cck_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-}
-static inline void vlv_cck_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_ccu_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_ccu_read(struct drm_i915_private *i915, u32 reg)
-{
-	return 0;
-}
-static inline void vlv_ccu_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-}
-static inline void vlv_ccu_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_dpio_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_dpio_read(struct drm_i915_private *i915, int pipe, int reg)
-{
-	return 0;
-}
-static inline void vlv_dpio_write(struct drm_i915_private *i915,
-				  int pipe, int reg, u32 val)
-{
-}
-static inline void vlv_dpio_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_flisdsi_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_flisdsi_read(struct drm_i915_private *i915, u32 reg)
-{
-	return 0;
-}
-static inline void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
-{
-}
-static inline void vlv_flisdsi_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_nc_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_nc_read(struct drm_i915_private *i915, u8 addr)
-{
-	return 0;
-}
-static inline void vlv_nc_put(struct drm_i915_private *i915)
-{
-}
-static inline void vlv_punit_get(struct drm_i915_private *i915)
-{
-}
-static inline u32 vlv_punit_read(struct drm_i915_private *i915, u32 addr)
-{
-	return 0;
-}
-static inline int vlv_punit_write(struct drm_i915_private *i915, u32 addr, u32 val)
-{
-	return 0;
-}
-static inline void vlv_punit_put(struct drm_i915_private *i915)
-{
-}
 
 #endif /* _VLV_IOSF_SB_H_ */
-- 
2.39.5

