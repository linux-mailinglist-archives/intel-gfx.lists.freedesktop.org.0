Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D4FAAF757
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 12:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D780710E8D3;
	Thu,  8 May 2025 10:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q8zbOt5X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF77710E8CF;
 Thu,  8 May 2025 10:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746698632; x=1778234632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hi/rrqmyIrsC+V32P7RU4RGyWEjSo0R6+tzd1E+IzRI=;
 b=Q8zbOt5XTOnJojtfKLZe+tABGg5hDRwts2SlVwU54Ra78i4UcPVKYwWs
 Ibine0a6izKQd6ag9Wq1AmcbUHYo/s20QmBaDOabbyyHVu7qsdKoWv2nO
 K0PfwZtaa1tCfdkYGUrc64kPaCGKNINh6ZX9UZURfU9vkrSVF80VR+K2k
 WmTJeOjy9qo8hN5/OLjj0/qXO5GSkTDt5imm9t37DSeBVmcvx66dl2iVz
 4jPMqt8NxtbyVWdSHepxpVekVVfFstS6mKf4b0aVazkJzKkm3TckcjCpb
 SGmHU0Xyq++ugS00tPGBEkSmf41hGSCUtUL0tLuyzTzoCd/d9Z0ZB9hfd A==;
X-CSE-ConnectionGUID: LPeqYkF4TDaDQMcqUrRBSA==
X-CSE-MsgGUID: CX82/sKNRdq4Vd0wk6MJAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="66003188"
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="66003188"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:51 -0700
X-CSE-ConnectionGUID: 7D58Ut28Rb2FISWe9P6CMA==
X-CSE-MsgGUID: Nge9RLZ6Q7O3BlLz7vLNAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,271,1739865600"; d="scan'208";a="136634263"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.176])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 03:03:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 1/8] drm/i915: rename vlv_sideband*.[ch] to
 vlv_iosf_sb*.[ch]
Date: Thu,  8 May 2025 13:03:35 +0300
Message-Id: <ff572bd2c9012348a7b869dc9dd3d8ed7a58ff8a.1746698410.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746698410.git.jani.nikula@intel.com>
References: <cover.1746698410.git.jani.nikula@intel.com>
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

Be more specific in the naming, and follow the existing function naming
pattern of vlv_iosf_sb_*() in the file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                             | 2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c                    | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c                | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power_map.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power_well.c   | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c              | 2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c                    | 2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c                | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c             | 2 +-
 drivers/gpu/drm/i915/gt/intel_rps.c                       | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                        | 2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c                 | 2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c                     | 2 +-
 drivers/gpu/drm/i915/{vlv_sideband.c => vlv_iosf_sb.c}    | 2 +-
 drivers/gpu/drm/i915/{vlv_sideband.h => vlv_iosf_sb.h}    | 8 ++++----
 .../drm/i915/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h}    | 6 +++---
 .../compat-i915-headers/{vlv_sideband.h => vlv_iosf_sb.h} | 8 ++++----
 .../{vlv_sideband_reg.h => vlv_iosf_sb_reg.h}             | 2 +-
 22 files changed, 31 insertions(+), 31 deletions(-)
 rename drivers/gpu/drm/i915/{vlv_sideband.c => vlv_iosf_sb.c} (99%)
 rename drivers/gpu/drm/i915/{vlv_sideband.h => vlv_iosf_sb.h} (96%)
 rename drivers/gpu/drm/i915/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (98%)
 rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband.h => vlv_iosf_sb.h} (96%)
 rename drivers/gpu/drm/xe/compat-i915-headers/{vlv_sideband_reg.h => vlv_iosf_sb_reg.h} (66%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 13d4a16f7d33..3e3e4f4bfa4e 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -45,7 +45,7 @@ i915-y += \
 	intel_uncore.o \
 	intel_uncore_trace.o \
 	intel_wakeref.o \
-	vlv_sideband.o \
+	vlv_iosf_sb.o \
 	vlv_suspend.o
 
 # core peripheral code
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 77876ef735b7..02f33cbe6765 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -16,7 +16,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 struct intel_watermark_params {
 	u16 fifo_size;
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b1718b491ffd..501b79498414 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -47,7 +47,7 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_dsi.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 /**
  * DOC: CDCLK / RAWCLK
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 287110e4e435..e902771954e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -131,7 +131,7 @@
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 16356523816f..b3b05d7610e8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -27,7 +27,7 @@
 #include "intel_snps_phy.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 #define for_each_power_domain_well(__display, __power_well, __domain)	\
 	for_each_power_well((__display), __power_well)			\
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index ab1163744bc5..b4c302544909 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -10,7 +10,7 @@
 #include "intel_display_power_map.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
-#include "vlv_sideband_reg.h"
+#include "vlv_iosf_sb_reg.h"
 
 #define __LIST_INLINE_ELEMS(__elem_type, ...) \
 	((__elem_type[]) { __VA_ARGS__ })
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index b104bce0e14d..6772ac0c3f84 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -30,8 +30,8 @@
 #include "intel_vga.h"
 #include "skl_watermark.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_sideband.h"
-#include "vlv_sideband_reg.h"
+#include "vlv_iosf_sb.h"
+#include "vlv_iosf_sb_reg.h"
 
 struct i915_power_well_regs {
 	i915_reg_t bios;
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 69f242139420..5b9c0852da2c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -32,7 +32,7 @@
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 /**
  * DOC: DPIO
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a9e9b98d0bf9..055dd2b4a904 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -22,7 +22,7 @@
 #include "intel_pps.h"
 #include "intel_snps_phy.h"
 #include "vlv_dpio_phy_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 struct intel_dpll_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 29c920983413..dce4fdf091f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -49,7 +49,7 @@
 #include "intel_pps_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 #define MIPI_TRANSFER_MODE_SHIFT	0
 #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 346737f15fa9..110914bbc134 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -49,7 +49,7 @@
 #include "vlv_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 /* return pixels in terms of txbyteclkhs */
 static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
index 7ce924a5ef90..79438cdfc3f9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
@@ -34,7 +34,7 @@
 #include "intel_dsi.h"
 #include "vlv_dsi_pll.h"
 #include "vlv_dsi_pll_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 static const u16 lfsr_converts[] = {
 	426, 469, 234, 373, 442, 221, 110, 311, 411,		/* 62 - 70 */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index b635aa2820d9..0704fe763afe 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -22,7 +22,7 @@
 #include "intel_rps.h"
 #include "intel_runtime_pm.h"
 #include "intel_uncore.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 void intel_gt_pm_debugfs_forcewake_user_open(struct intel_gt *gt)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 5abc5fcc2514..7e0916e44d29 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -23,7 +23,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rps.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 #include "../../../platform/x86/intel_ips.h"
 
 #define BUSY_MAX_EI	20u /* ms */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 273bc43468a0..2b0bcb9aa3c7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -108,7 +108,7 @@
 #include "intel_pcode.h"
 #include "intel_region_ttm.h"
 #include "intel_sbi.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 387b26400169..8aec8c638fd8 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -37,7 +37,7 @@
 #include "i915_reg.h"
 #include "intel_clock_gating.h"
 #include "intel_mchbar_regs.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index eee5c4f45a43..0b92ab4e9fb9 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -10,7 +10,7 @@
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 struct dram_dimm_info {
 	u16 size;
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_iosf_sb.c
similarity index 99%
rename from drivers/gpu/drm/i915/vlv_sideband.c
rename to drivers/gpu/drm/i915/vlv_iosf_sb.c
index 114ae8eb9cd5..91703c6c478c 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.c
@@ -6,7 +6,7 @@
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
 #include "i915_reg.h"
-#include "vlv_sideband.h"
+#include "vlv_iosf_sb.h"
 
 #include "display/intel_dpio_phy.h"
 
diff --git a/drivers/gpu/drm/i915/vlv_sideband.h b/drivers/gpu/drm/i915/vlv_iosf_sb.h
similarity index 96%
rename from drivers/gpu/drm/i915/vlv_sideband.h
rename to drivers/gpu/drm/i915/vlv_iosf_sb.h
index 31813e07c56f..380b96089cda 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb.h
@@ -3,13 +3,13 @@
  * Copyright © 2013-2021 Intel Corporation
  */
 
-#ifndef _VLV_SIDEBAND_H_
-#define _VLV_SIDEBAND_H_
+#ifndef _VLV_IOSF_SB_H_
+#define _VLV_IOSF_SB_H_
 
 #include <linux/bitops.h>
 #include <linux/types.h>
 
-#include "vlv_sideband_reg.h"
+#include "vlv_iosf_sb_reg.h"
 
 enum dpio_phy;
 struct drm_i915_private;
@@ -122,4 +122,4 @@ static inline void vlv_punit_put(struct drm_i915_private *i915)
 	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
 }
 
-#endif /* _VLV_SIDEBAND_H_ */
+#endif /* _VLV_IOSF_SB_H_ */
diff --git a/drivers/gpu/drm/i915/vlv_sideband_reg.h b/drivers/gpu/drm/i915/vlv_iosf_sb_reg.h
similarity index 98%
rename from drivers/gpu/drm/i915/vlv_sideband_reg.h
rename to drivers/gpu/drm/i915/vlv_iosf_sb_reg.h
index b7fbff3d0409..f977fb3b6e17 100644
--- a/drivers/gpu/drm/i915/vlv_sideband_reg.h
+++ b/drivers/gpu/drm/i915/vlv_iosf_sb_reg.h
@@ -3,8 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
-#ifndef _VLV_SIDEBAND_REG_H_
-#define _VLV_SIDEBAND_REG_H_
+#ifndef _VLV_IOSF_SB_REG_H_
+#define _VLV_IOSF_SB_REG_H_
 
 /* See configdb bunit SB addr map */
 #define BUNIT_REG_BISOC				0x11
@@ -177,4 +177,4 @@
 #define  CCK_FREQUENCY_STATUS_SHIFT		8
 #define  CCK_FREQUENCY_VALUES			(0x1f << 0)
 
-#endif /* _VLV_SIDEBAND_REG_H_ */
+#endif /* _VLV_IOSF_SB_REG_H_ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
similarity index 96%
rename from drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h
rename to drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
index ec6f12de5727..b42a518a79e0 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
@@ -3,12 +3,12 @@
  * Copyright © 2013-2021 Intel Corporation
  */
 
-#ifndef _VLV_SIDEBAND_H_
-#define _VLV_SIDEBAND_H_
+#ifndef _VLV_IOSF_SB_H_
+#define _VLV_IOSF_SB_H_
 
 #include <linux/types.h>
 
-#include "vlv_sideband_reg.h"
+#include "vlv_iosf_sb_reg.h"
 
 enum pipe;
 struct drm_i915_private;
@@ -129,4 +129,4 @@ static inline void vlv_punit_put(struct drm_i915_private *i915)
 {
 }
 
-#endif /* _VLV_SIDEBAND_H_ */
+#endif /* _VLV_IOSF_SB_H_ */
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband_reg.h b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
similarity index 66%
rename from drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband_reg.h
rename to drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
index 949f134ce3cf..cb7fa8e794a6 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/vlv_sideband_reg.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
@@ -3,4 +3,4 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "../../i915/vlv_sideband_reg.h"
+#include "../../i915/vlv_iosf_sb_reg.h"
-- 
2.39.5

