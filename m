Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DDDCC62BB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB1F10EBC9;
	Wed, 17 Dec 2025 06:10:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/HzI0hd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C627F10EBC8;
 Wed, 17 Dec 2025 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951854; x=1797487854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nmZHiyUMxpFZWlqIwlvWqFxkgmo4bAtTlI5+n6Id0y8=;
 b=H/HzI0hdyzaByt18pC/NlbZCSdBp/wpfTScgxqz+uiNiRa0oepCZ3BN4
 yvdPEnyQ5VivpoMSyrjjBajtjtKHmipzj4J3R4Yd6pBiczJC4FAaGhEVs
 7dzneWT6b+IXWb9rRv3KSDCCFKKdpVKI8SOAbtbYl8QUSOnSs0fXUvj9f
 5m8divT0rC6u1lgW9BaYhqcID/+kA6ENRaTlMWWW0KvPolz/n9xJ/u6JC
 ujlXndtUS6qb8C7k+V6tUwydQHrJ/G2Deo8NTHr+Wgn6LF8Mq8M1mMcdB
 z43f/UZ3Y5a9mVypKsin/hw0IBnndM5eubYjCkF8gq36/FxE+BRkycf6N A==;
X-CSE-ConnectionGUID: 1Cq94yBoQjmbX8L3kADBAg==
X-CSE-MsgGUID: 1noDXdDaQEC1YmFvAx9WNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471233"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471233"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:53 -0800
X-CSE-ConnectionGUID: 1gS+Bhc6TJyQRw0dVdQ1Sg==
X-CSE-MsgGUID: z3g9ITVsQxOi01qnHnKJlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105263"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:51 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 19/19] drm/{i915, xe}: Removed i915_reg.h from display
Date: Wed, 17 Dec 2025 11:52:09 +0530
Message-ID: <20251217062209.852324-20-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
MIME-Version: 1.0
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

Make display files free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c               | 2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c            | 2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c               | 2 +-
 drivers/gpu/drm/i915/display/intel_backlight.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_bw.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_casf.c            | 1 -
 drivers/gpu/drm/i915/display/intel_ddi.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_tc.c              | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c         | 2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c               | 2 +-
 19 files changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 008d339d5c21..290d54fe87e4 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -6,9 +6,9 @@
 #include <linux/debugfs.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "hsw_ips.h"
-#include "i915_reg.h"
 #include "intel_color_regs.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index b1fecf178906..7042e15489ed 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -9,8 +9,8 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index dac781f54661..0052a4bb7ec9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -33,8 +33,8 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "icl_dsi.h"
 #include "icl_dsi_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index a68fdbd2acb9..812bfad3905c 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -11,8 +11,8 @@
 
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d27835ed49c2..71984795dfcb 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -5,9 +5,9 @@
 
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_bw.h"
 #include "intel_crtc.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 95339b496f24..d18a1ecbb101 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -3,7 +3,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_casf.h"
 #include "intel_casf_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..745eb83dfa03 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -33,8 +33,8 @@
 #include <drm/display/drm_scdc_helper.h>
 #include <drm/drm_print.h>
 #include <drm/drm_privacy_screen_consumer.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "icl_dsi.h"
 #include "intel_alpm.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index aba13e8a9051..07cb56f80e88 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -13,9 +13,9 @@
 #include <drm/drm_file.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "hsw_ips.h"
-#include "i915_reg.h"
 #include "i9xx_wm_regs.h"
 #include "intel_alpm.h"
 #include "intel_bo.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9f323c39d798..7bb187448e19 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -7,9 +7,9 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "i915_drv.h"
-#include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index a00af39f7538..76983ca5bed7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -4,8 +4,8 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2fb6fec6dc99..171baad41d55 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -25,11 +25,11 @@
 #include <linux/debugfs.h>
 #include <linux/firmware.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include <drm/drm_file.h>
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 5bb0090dd5ed..5eb880747955 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -7,8 +7,8 @@
 
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7114fc405c29..db15bf1980c0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -17,8 +17,8 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 #include <drm/intel/i915_component.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_jiffies.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 82c39e4ffa37..334f27c3dccb 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -4,8 +4,8 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 939c8975fd4c..af1e02184619 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -4,8 +4,8 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index b217ec7aa758..6ae5600fc4d1 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -7,9 +7,9 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "g4x_dp.h"
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_power_well.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 064f572bbc85..5784d5d5132d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -6,8 +6,8 @@
 #include <linux/iopoll.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a6aab79812e5..410289b3fadd 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -7,8 +7,8 @@
 
 #include <drm/drm_blend.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d705af3bf8ba..c2501d0268dc 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -32,8 +32,8 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
-- 
2.50.1

