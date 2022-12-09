Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197696482DB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 14:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6D410E002;
	Fri,  9 Dec 2022 13:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9C110E002
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 13:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670593288; x=1702129288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Dp5XJRTLnxkGRJpd5KsfuaSbmrCmGuMxRAV04Igr+ks=;
 b=AsBKRHExQqcqOU9k1A6QZFznYzIddvDMx/cW2B98MDgWJlilT1bl7GTK
 6+zYhiEwVSza7nRHO6MFy8d2JMKEJ+yKD7wP2gsvBfini2XtOlu0SMubt
 GV8nDRq9tXrO6GtQbCvb0r/aqsWm5ChB8OpqgOmFcWbMGMxVPm5Ghqh1J
 v9qUyX/cbz8pkOB0I9G/SbytGOAdFURrVnBqppzpG12aYF0SBROLvhrd1
 henIRpU6GnKuJE5AshWIOi8qQX4+4g7ktsNyzv+ZvZMBLRTAseafOCNYs
 qtjM9rZbHYxO1nQsF0bk37Mj99VSBYgSWvzri1aeIQw4r8+JKOlV1RHQe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="381765022"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="381765022"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:41:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="710888535"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="710888535"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 05:41:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Dec 2022 15:41:21 +0200
Message-Id: <20221209134121.921070-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: drop redundant display/ from
 #includes
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

Drop the redundant sub-directory from #includes under display/. Group
and sort the results.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    |  9 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 51 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 +-
 3 files changed, 30 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 572a4e3769f3..f7be6b25a975 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -25,16 +25,15 @@
  *
  */
 
-#include <drm/drm_edid.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_dsc_helper.h>
-
-#include "display/intel_display.h"
-#include "display/intel_display_types.h"
-#include "display/intel_gmbus.h"
+#include <drm/drm_edid.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_display.h"
+#include "intel_display_types.h"
+#include "intel_gmbus.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6cdfdae2c712..a875fdef1476 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -24,15 +24,15 @@
  *	Eric Anholt <eric@anholt.net>
  */
 
-#include <acpi/video.h>
+#include <linux/dma-resv.h>
 #include <linux/i2c.h>
 #include <linux/input.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/dma-resv.h>
 #include <linux/slab.h>
 #include <linux/string_helpers.h>
 #include <linux/vga_switcheroo.h>
+#include <acpi/video.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_atomic.h>
@@ -45,28 +45,6 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 
-#include "display/intel_audio.h"
-#include "display/intel_crt.h"
-#include "display/intel_ddi.h"
-#include "display/intel_display_debugfs.h"
-#include "display/intel_display_power.h"
-#include "display/intel_dp.h"
-#include "display/intel_dp_mst.h"
-#include "display/intel_dpll.h"
-#include "display/intel_dpll_mgr.h"
-#include "display/intel_drrs.h"
-#include "display/intel_dsi.h"
-#include "display/intel_dvo.h"
-#include "display/intel_fb.h"
-#include "display/intel_gmbus.h"
-#include "display/intel_hdmi.h"
-#include "display/intel_lvds.h"
-#include "display/intel_sdvo.h"
-#include "display/intel_snps_phy.h"
-#include "display/intel_tv.h"
-#include "display/intel_vdsc.h"
-#include "display/intel_vrr.h"
-
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object.h"
 
@@ -76,32 +54,49 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
+#include "i9xx_plane.h"
 #include "icl_dsi.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
+#include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_color.h"
+#include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_debugfs.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dmc.h"
+#include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
+#include "intel_dpll.h"
+#include "intel_dpll_mgr.h"
 #include "intel_dpt.h"
+#include "intel_drrs.h"
 #include "intel_dsb.h"
+#include "intel_dsi.h"
+#include "intel_dvo.h"
+#include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_frontbuffer.h"
+#include "intel_gmbus.h"
 #include "intel_hdcp.h"
+#include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_hti.h"
-#include "intel_modeset_verify.h"
+#include "intel_lvds.h"
 #include "intel_modeset_setup.h"
+#include "intel_modeset_verify.h"
 #include "intel_overlay.h"
 #include "intel_panel.h"
 #include "intel_pch_display.h"
@@ -113,10 +108,14 @@
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
+#include "intel_sdvo.h"
+#include "intel_snps_phy.h"
 #include "intel_sprite.h"
 #include "intel_tc.h"
+#include "intel_tv.h"
+#include "intel_vdsc.h"
 #include "intel_vga.h"
-#include "i9xx_plane.h"
+#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5b678916e6db..b0fd090ad75a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -24,14 +24,13 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_damage_helper.h>
 
-#include "display/intel_dp.h"
-
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_hdmi.h"
 #include "intel_psr.h"
-- 
2.34.1

