Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF865D749
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 16:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC3510E4FB;
	Wed,  4 Jan 2023 15:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BD210E4FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672846385; x=1704382385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DBhdTIu2O6JRts6ftX34VxL+Lb+vmBMvH2VP+HmA4F0=;
 b=lhdCDjTGKLP3WiPfuD1sbJsFSQsKCmwa+rA5FQmmsQ0OBunP2aHYZw/f
 Glf+xCzOZHs8yA3UjD7lA77cSZ2MOsS7Ylo5fjud4ZdfOqzuhIc3G6zaC
 Gs1mG41sLf5uyGsY/J4llbHPStJekAndChObfaZaypXJise0N3S9bl53g
 52aCxT7shRLpJZbNSC4YcXOkrra4oy/7KUiGB6zV/ZWEBoryKbhwGjzG5
 6MC0pp5H2fkxklP8qLL2AA6/ZYtf9Jcp/x/cKWD9xw1nWDqKrjzXdFxYE
 gAd+2rTsU+xEhLF4IwrdMbTzKqkGPMh0DI+Ub6YZAbI8yE+DeymuKLDQm w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="319666530"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="319666530"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 07:33:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829182699"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="829182699"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 07:33:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Jan 2023 17:32:58 +0200
Message-Id: <20230104153258.453431-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: drop redundant display/
 from #includes
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

v2: Rebase

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    |  9 ++--
 drivers/gpu/drm/i915/display/intel_display.c | 51 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 +-
 3 files changed, 30 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 55544d484318..78abe34c7a42 100644
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
index e75b9b2a0e01..734e8e613f8e 100644
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
 
@@ -76,31 +54,48 @@
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
@@ -112,10 +107,14 @@
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
index d0d774219cc5..c9c00f8fa1b2 100644
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

