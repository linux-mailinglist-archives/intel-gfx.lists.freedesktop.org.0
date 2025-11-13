Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAD5C56B7B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 10:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48AA610E5F1;
	Thu, 13 Nov 2025 09:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HMkYG2mQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AAB910E15D;
 Thu, 13 Nov 2025 09:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763027905; x=1794563905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=94CCfdr9lakfuAclg6uvhZOhYR3HviVyziFaf1OQ5Ws=;
 b=HMkYG2mQw8wYAwTKJrQX60tBdxzItcA+dZshIBseV7z5AKxdd6sHAsK8
 +lt4SQhRLcfP3eTXeyvLWgy0/chYuGzMP1ezH/l76KX/RE0isjZ9oDRa/
 GMW659xr+VKFu1+BvWz/VJqsJe14m22AgcjxhJhTC9FwaOoiMQFSLA0E1
 Rmks7EhwRlC0bxCm0uMOaQEl467qakxsmplfT0HIP+rlVBk/nqi0pd006
 SLUFttEE28gQJkZFdMNEPO+DjtHnkzyKiwfYFinELQN9byXc/4HuKDMnx
 YQiADU5Ez6GI9gNhXCnSR2zzdAxCcz82bmzswnvw/Y5FtPbWt6tpl2/eU A==;
X-CSE-ConnectionGUID: ReOKXYaSTcuiadB0J0fOCQ==
X-CSE-MsgGUID: bg3xBt9qQAi5GOoA3raqsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75418419"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="75418419"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:25 -0800
X-CSE-ConnectionGUID: pp1IHJ4UT8i5819nBXkVDw==
X-CSE-MsgGUID: EqZt93EkRPi/yxYkumIngg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189732384"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: [PATCH 3/8] drm/i915: move intel_dram.[ch] from soc/ to display/
Date: Thu, 13 Nov 2025 11:58:00 +0200
Message-ID: <8f256f3f074ce022c6bec151facee048c56c89e0.1763027774.git.jani.nikula@intel.com>
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
index 6d72bbb724fa..dddc5ce76462 100644
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
index 2a4cc1dcc293..df717b66d30a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -8,8 +8,6 @@
 
 #include <drm/drm_print.h>
 
-#include "soc/intel_dram.h"
-
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -26,6 +24,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dmc.h"
+#include "intel_dram.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
similarity index 99%
rename from drivers/gpu/drm/i915/soc/intel_dram.c
rename to drivers/gpu/drm/i915/display/intel_dram.c
index 2a21d1cf0476..8729338c6dcc 100644
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
index f55e65e7dd4d..356f7fa5cdb8 100644
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
@@ -86,7 +87,6 @@
 #include "pxp/intel_pxp_debugfs.h"
 #include "pxp/intel_pxp_pm.h"
 
-#include "soc/intel_dram.h"
 #include "soc/intel_gmch.h"
 
 #include "i915_debugfs.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 7b4ca591a4ae..cddd07debc3c 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -224,7 +224,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	i915-soc/intel_dram.o \
 	i915-soc/intel_rom.o
 
 # Display code shared with i915
@@ -275,6 +274,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
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
index 8b0afa270216..c29f96da0617 100644
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

