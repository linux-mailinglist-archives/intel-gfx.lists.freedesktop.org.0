Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4C2C70B40
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DB1710E259;
	Wed, 19 Nov 2025 18:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuLBAEo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53A7510E259;
 Wed, 19 Nov 2025 18:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578395; x=1795114395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eGqz1lMxoke8CC1XXqg1RgqW6UQ3yx+p61tXAgx+CGw=;
 b=MuLBAEo8TL6Gp6tARDNPgT8vGrDezfNUsk++gPx07SvTBvBFnkdDLSn+
 zbCgKFuw0W2SKbXnm+UJlg6TP9rqQJZqdBWxgBSwRjlb1PvbwF+0RlBLz
 Ou4MVKVVWWDeBlNHGuZov/YY5E9wg9nWYJdDF47v4Rg4iAyPfO/nUGpzm
 jcZLhqiO/Q5KT55NNEtyB5VM7l/WPJLSreh1ixxSNGKoF0SifyvFn3sOT
 +Dt6BQUu1uyMd+d1ITVmwtREhbEdlW+ZOOypOXRB6hQX+K47lfDexgu2H
 hx6OyVL/MfbrhBCr8ZMiqEvemQsI1NFRI41WZXHXUc70w0W10sdzaE2Hs g==;
X-CSE-ConnectionGUID: tRztvPdoTyqpBctb5MgEug==
X-CSE-MsgGUID: UephxzPBRXOFpkTeGmHCEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65334644"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65334644"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:11 -0800
X-CSE-ConnectionGUID: 9vMmN8jPQUCWTmoBCfmsHw==
X-CSE-MsgGUID: 8L0JQaRfRee+EcGu1zqPYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190948459"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 03/13] drm/i915: move intel_dram.[ch] from soc/ to display/
Date: Wed, 19 Nov 2025 20:52:42 +0200
Message-ID: <4c0fbdab989a70d287536a7eafb002dc836ced12.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

The remaining users of intel_dram.[ch] are all in display. Move them
under display.

This allows us to remove the compat soc/intel_dram.h from xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                           | 2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c                  | 3 +--
 drivers/gpu/drm/i915/display/intel_bw.c                 | 3 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c              | 3 +--
 drivers/gpu/drm/i915/display/intel_display_power.c      | 3 +--
 drivers/gpu/drm/i915/{soc => display}/intel_dram.c      | 5 ++---
 drivers/gpu/drm/i915/{soc => display}/intel_dram.h      | 0
 drivers/gpu/drm/i915/display/skl_watermark.c            | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                      | 2 +-
 drivers/gpu/drm/xe/Makefile                             | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h | 6 ------
 drivers/gpu/drm/xe/display/xe_display.c                 | 2 +-
 12 files changed, 11 insertions(+), 22 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_dram.c (99%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_dram.h (100%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a696d8b77b4d..838c8e58e4a2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -58,7 +58,6 @@ i915-y += \
 
 # core peripheral code
 i915-y += \
-	soc/intel_dram.o \
 	soc/intel_gmch.o \
 	soc/intel_rom.o
 
@@ -268,6 +267,7 @@ i915-y += \
 	display/intel_dpll_mgr.o \
 	display/intel_dpt.o \
 	display/intel_dpt_common.o \
+	display/intel_dram.o \
 	display/intel_drrs.o \
 	display/intel_dsb.o \
 	display/intel_dsb_buffer.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 01f3803fa09f..27e2d73bc505 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -7,8 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
-
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
@@ -19,6 +17,7 @@
 #include "intel_display.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
+#include "intel_dram.h"
 #include "intel_fb.h"
 #include "intel_mchbar_regs.h"
 #include "intel_wm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 1f6461be50ef..957c90e62569 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,8 +6,6 @@
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
-
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_bw.h"
@@ -16,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_uncore.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 37801c744b05..531819391c8c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -28,8 +28,6 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
-
 #include "hsw_ips.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -42,6 +40,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a383ef23391d..9c5f0277d8c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -8,8 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
-
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_backlight_regs.h"
@@ -25,6 +23,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dmc.h"
+#include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
 #include "intel_pch_refclk.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
similarity index 99%
rename from drivers/gpu/drm/i915/soc/intel_dram.c
rename to drivers/gpu/drm/i915/display/intel_dram.c
index cfe96c3c1b1a..7142772f2a6e 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -8,11 +8,10 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
-#include "../display/intel_display_core.h" /* FIXME */
-
 #include "i915_drv.h"
 #include "i915_reg.h"
-#include "i915_utils.h"
+#include "intel_display_core.h"
+#include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/display/intel_dram.h
similarity index 100%
rename from drivers/gpu/drm/i915/soc/intel_dram.h
rename to drivers/gpu/drm/i915/display/intel_dram.h
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 54e9e0be019d..a33e0cec8cba 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -8,7 +8,6 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
@@ -23,6 +22,7 @@
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_dram.h"
 #include "intel_fb.h"
 #include "intel_fixed.h"
 #include "intel_flipq.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 44a17ffc3058..d1f573f1b6cc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -59,6 +59,7 @@
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
+#include "display/intel_dram.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_gmbus.h"
@@ -87,7 +88,6 @@
 #include "pxp/intel_pxp_debugfs.h"
 #include "pxp/intel_pxp_pm.h"
 
-#include "soc/intel_dram.h"
 #include "soc/intel_gmch.h"
 
 #include "i915_debugfs.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 1a3aa041820d..85642340a8fa 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -224,7 +224,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	i915-soc/intel_dram.o \
 	i915-soc/intel_rom.o
 
 # Display code shared with i915
@@ -276,6 +275,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dpll.o \
 	i915-display/intel_dpll_mgr.o \
 	i915-display/intel_dpt_common.o \
+	i915-display/intel_dram.o \
 	i915-display/intel_drrs.o \
 	i915-display/intel_dsb.o \
 	i915-display/intel_dsi.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h
deleted file mode 100644
index 65707e20c557..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_dram.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_dram.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e3320d9e6314..9b1d21e03df0 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -17,7 +17,6 @@
 #include <drm/intel/display_parent_interface.h>
 #include <uapi/drm/xe_drm.h>
 
-#include "soc/intel_dram.h"
 #include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
@@ -29,6 +28,7 @@
 #include "intel_dmc.h"
 #include "intel_dmc_wl.h"
 #include "intel_dp.h"
+#include "intel_dram.h"
 #include "intel_encoder.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
-- 
2.47.3

