Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A257622F37
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:42:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF5E10E5F0;
	Wed,  9 Nov 2022 15:42:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 154F310E5F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668008532; x=1699544532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xXD/B7CVNC+yBh55rsk39Wxr/OyWXlkDJBQwNnMVv+c=;
 b=GXlBxzxJpMCU6C4a8XZ1Hdq0Cj3vqe5ZVdiKcmBTaoNDPDGv0fCIoEPO
 fFsr7U/lyVQJrl0xtgznN6wbHSBiH2AFiBXnWo/rKcNxU4tOglHqgQmzb
 Jic5JIX9wORWypoQ7i72/MCd992EFxjMU/G+DfGBaWIdcATX+AadY9lkK
 6blKRIAVZbUxjoMaOgElNsjowkrB3ip0VKV8XPzSF7iqbH16Hia4rCyso
 PCjhmHutsmc8XJ1D78sn/a3ki/p83Bm9ww1bQ+Bx48m0K095hNKpTPTUr
 geQ6uWsPEkUgA2Mh/a/ZCDdpTmsZOG2T0PIxIiqjDkUJMLJqC2pRVsQGC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="373155628"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="373155628"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="779381503"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="779381503"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 17:35:22 +0200
Message-Id: <6e78a2e0ac1bffaf5af3b5ccc21dff05e6518cef.1668008071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
References: <cover.1668008071.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: stop including i915_irq.h from
 i915_trace.h
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
Cc: Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Turns out many of the files that need i915_reg.h get it implicitly via
{display/intel_de.h, gt/intel_context.h} -> i915_trace.h -> i915_irq.h
-> i915_reg.h. Since i915_trace.h doesn't actually need i915_irq.h,
makes sense to drop it, but that requires adding quite a few new
includes all over the place.

Prefer including i915_reg.h where needed instead of adding another
implicit include, because eventually we'll want to split up i915_reg.h
and only include the specific registers at each place.

Also some places actually needed i915_irq.h too.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                | 1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c              | 1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c            | 4 +++-
 drivers/gpu/drm/i915/display/icl_dsi.c               | 1 +
 drivers/gpu/drm/i915/display/intel_backlight.c       | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c           | 1 +
 drivers/gpu/drm/i915/display/intel_color.c           | 1 +
 drivers/gpu/drm/i915/display/intel_combo_phy.c       | 1 +
 drivers/gpu/drm/i915/display/intel_crt.c             | 2 ++
 drivers/gpu/drm/i915/display/intel_cursor.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c             | 1 +
 drivers/gpu/drm/i915/display/intel_display.c         | 1 +
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 drivers/gpu/drm/i915/display/intel_dp.c              | 1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c         | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c        | 1 +
 drivers/gpu/drm/i915/display/intel_dpll.c            | 1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c        | 1 +
 drivers/gpu/drm/i915/display/intel_drrs.c            | 1 +
 drivers/gpu/drm/i915/display/intel_dsb.c             | 1 +
 drivers/gpu/drm/i915/display/intel_dvo.c             | 1 +
 drivers/gpu/drm/i915/display/intel_fdi.c             | 1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c           | 2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c            | 1 +
 drivers/gpu/drm/i915/display/intel_lpe_audio.c       | 2 ++
 drivers/gpu/drm/i915/display/intel_lspcon.c          | 1 +
 drivers/gpu/drm/i915/display/intel_lvds.c            | 1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c   | 1 +
 drivers/gpu/drm/i915/display/intel_panel.c           | 1 +
 drivers/gpu/drm/i915/display/intel_pch_display.c     | 1 +
 drivers/gpu/drm/i915/display/intel_pch_refclk.c      | 1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c        | 2 ++
 drivers/gpu/drm/i915/display/intel_pps.c             | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c             | 1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c            | 1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c        | 1 +
 drivers/gpu/drm/i915/display/intel_sprite.c          | 1 +
 drivers/gpu/drm/i915/display/intel_tv.c              | 2 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c            | 1 +
 drivers/gpu/drm/i915/display/intel_vga.c             | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c             | 1 +
 drivers/gpu/drm/i915/display/skl_scaler.c            | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c   | 2 ++
 drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c       | 1 +
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 2 ++
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 1 +
 drivers/gpu/drm/i915/gt/intel_gt.c                   | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c                | 1 +
 drivers/gpu/drm/i915/gt/intel_gtt.c                  | 1 +
 drivers/gpu/drm/i915/gt/intel_ring_submission.c      | 2 ++
 drivers/gpu/drm/i915/gt/intel_workarounds.c          | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    | 1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c                | 1 +
 drivers/gpu/drm/i915/gvt/mmio_context.c              | 1 +
 drivers/gpu/drm/i915/i915_gpu_error.c                | 1 +
 drivers/gpu/drm/i915/i915_perf.c                     | 1 +
 drivers/gpu/drm/i915/i915_trace.h                    | 1 -
 drivers/gpu/drm/i915/intel_device_info.c             | 3 ++-
 drivers/gpu/drm/i915/intel_uncore.c                  | 1 +
 63 files changed, 76 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e3e3d27ffb53..3593938dcd87 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -8,6 +8,7 @@
 #include <linux/string_helpers.h>
 
 #include "g4x_dp.h"
+#include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8aadf96fa5e9..75ba24c9785f 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -6,6 +6,7 @@
  */
 
 #include "g4x_hdmi.h"
+#include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 5afbe3e98ee8..ecaeb7dc196b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -8,6 +8,9 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
+#include "i915_irq.h"
+#include "i915_reg.h"
+#include "i9xx_plane.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
@@ -15,7 +18,6 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_sprite.h"
-#include "i9xx_plane.h"
 
 /* Primary plane formats for gen <= 3 */
 static const u32 i8xx_primary_formats[] = {
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index e05e7cd6c412..d16b30a2dded 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -29,6 +29,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_mipi_dsi.h>
 
+#include "i915_reg.h"
 #include "icl_dsi.h"
 #include "icl_dsi_regs.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index beba39a38c87..71af88a70461 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -10,6 +10,7 @@
 
 #include <acpi/video.h>
 
+#include "i915_reg.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8a9031012d74..b74e36d76013 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -24,6 +24,7 @@
 #include <linux/time.h>
 
 #include "hsw_ips.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 458e69578da6..97b5e76d48e1 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include "i915_reg.h"
 #include "intel_color.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 71d7aece1dc6..8b870b2dd4f9 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -3,6 +3,7 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include "i915_reg.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 94d0a5e1dd03..797ad9489f7e 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -34,6 +34,8 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 96422c98656a..d190fa0d393b 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -10,12 +10,13 @@
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
 
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_cursor.h"
 #include "intel_de.h"
-#include "intel_display_types.h"
 #include "intel_display.h"
+#include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e95bde5cf060..477dd9b72ea3 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -31,6 +31,7 @@
 #include <drm/drm_privacy_screen_consumer.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
 #include "intel_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d3353c403af..7cceaa6b1166 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -76,6 +76,7 @@
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_utils.h"
 #include "icl_dsi.h"
 #include "intel_acpi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index cfc056a05bbf..7bcd90384a46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -9,6 +9,8 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_debugfs.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..914161d7d122 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -46,6 +46,7 @@
 #include "g4x_dp.h"
 #include "i915_debugfs.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 48c375c65a41..664bebdecea7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 35360dd543ac..e0c177161407 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -11,6 +11,7 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 
+#include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index cd4e61026d98..4077a979a924 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -29,6 +29,7 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 6fc5b9e58152..7eb7440b3180 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -21,6 +21,7 @@
  * DEALINGS IN THE SOFTWARE.
  */
 
+#include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index fdc6fa4f2ed9..c236aafe9be0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -6,6 +6,7 @@
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
+#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7c6c094a0a01..79579dca3c7e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -23,6 +23,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index e27408efaae2..5b9e44443814 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fc9c3e41c333..1e1c6107d51b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -7,6 +7,7 @@
 #include "gem/i915_gem_internal.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 595087288922..c86f9890754d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -32,6 +32,7 @@
 #include <drm/drm_crtc.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 7f47e5c85c81..063f1da4f229 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -5,6 +5,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 860e0f8b6b19..a5840a28a69d 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -34,6 +34,8 @@
 #include <drm/display/drm_hdcp_helper.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 02f8374ea51f..1119eb423a5f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -42,6 +42,7 @@
 
 #include "i915_debugfs.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_connector.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 22ca8754ea96..8aaaef4d7856 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -71,6 +71,8 @@
 #include <drm/intel_lpe_audio.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_lpe_audio.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 15d59de8810e..9ff1c0b223ad 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -28,6 +28,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 246787bbf5ef..7bf1bdfd03ec 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -39,6 +39,7 @@
 #include <drm/drm_edid.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9d8ca230be39..96395bfbd41d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -10,6 +10,7 @@
 #include <drm/drm_atomic_state_helper.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
 #include "intel_color.h"
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 69ce77711b7c..1640726bfbf6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -31,6 +31,7 @@
 #include <linux/kernel.h>
 #include <linux/pwm.h>
 
+#include "i915_reg.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 837152dca063..cecc0d007cf3 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -4,6 +4,7 @@
  */
 
 #include "g4x_dp.h"
+#include "i915_reg.h"
 #include "intel_crt.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index a66097cdc1e0..08a94365b7d1 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 1c74388c60d7..673454fbf784 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -29,6 +29,8 @@
 #include <linux/debugfs.h>
 #include <linux/seq_file.h>
 
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 22f5e08d396b..81ee7f3aadf6 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -5,6 +5,7 @@
 
 #include "g4x_dp.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_power_well.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a75b37851504..5b678916e6db 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -27,6 +27,7 @@
 #include "display/intel_dp.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 48b7b1aa37b2..329b9d9af667 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -37,6 +37,7 @@
 #include <drm/drm_edid.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 937cefd6f78f..c799e891f8b5 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -5,6 +5,7 @@
 
 #include <linux/util_macros.h>
 
+#include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7649c50b5445..e6b4d24b9cd0 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -42,6 +42,7 @@
 #include <drm/drm_rect.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index cf7d5c1ab406..4d2101ca1692 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -35,6 +35,8 @@
 #include <drm/drm_edid.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
+#include "i915_irq.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 269f9792390d..9d3b77b41b5c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -10,6 +10,7 @@
 #include <drm/display/drm_dsc_helper.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index b5d058404c14..a69bfcac9a94 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -10,6 +10,7 @@
 #include <video/vga.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_vga.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5eac99021875..7b1357e82b69 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -5,6 +5,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_vrr.h"
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4092679be21e..d7390067b7d4 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -2,6 +2,8 @@
 /*
  * Copyright © 2020 Intel Corporation
  */
+
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 46e10b369a3d..76490cc59d8f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -9,6 +9,8 @@
 #include <drm/drm_fourcc.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 5a741ea4505f..84481030883a 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -31,6 +31,7 @@
 #include <drm/drm_mipi_dsi.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 1160723c9d2d..ffa30d2dd47f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -30,6 +30,7 @@
 #include "i915_gem_context.h"
 #include "i915_gem_evict.h"
 #include "i915_gem_ioctls.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_user_extensions.h"
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 1cae24349a96..3c486efe0bac 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -17,6 +17,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_migrate.h"
+#include "i915_reg.h"
 #include "i915_ttm_buddy_manager.h"
 
 #include "huge_gem_object.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index f63829abf66c..c33e0d72d670 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -13,6 +13,8 @@
 
 #include "i915_cmd_parser.h"
 #include "i915_drv.h"
+#include "i915_irq.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 0187bc72310d..b23ef1faa501 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -110,6 +110,7 @@
 #include <linux/string_helpers.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
 #include "gen8_engine_cs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 8e914c4066ed..53b8dcf7b34d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -12,6 +12,7 @@
 
 #include "i915_drv.h"
 #include "i915_perf_oa_regs.h"
+#include "i915_reg.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index f553e2173bda..3fbf70a58747 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -7,6 +7,7 @@
 #include <linux/suspend.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "i915_params.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e82a9d763e57..2ba3983984b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -12,6 +12,7 @@
 
 #include "gem/i915_gem_internal.h"
 #include "gem/i915_gem_lmem.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_utils.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index d5d6f1fadcae..356c787e11d3 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -12,7 +12,9 @@
 #include "gen6_ppgtt.h"
 #include "gen7_renderclear.h"
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "i915_mitigations.h"
+#include "i915_reg.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 3cdf5c24dbc5..ffc80d2e9952 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -4,6 +4,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
 #include "intel_engine_regs.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 412c2624e119..0a42f1807f52 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -30,6 +30,7 @@
 #include "intel_guc_submission.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index de13f102d4fd..0ebf5fbf0e39 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -37,6 +37,7 @@
 #include <linux/slab.h>
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 200c1162daa3..490e8ae51228 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -34,6 +34,7 @@
  */
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f2d53edcd2ee..9d5d5a397b64 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -55,6 +55,7 @@
 #include "i915_drv.h"
 #include "i915_gpu_error.h"
 #include "i915_memcpy.h"
+#include "i915_reg.h"
 #include "i915_scatterlist.h"
 #include "i915_utils.h"
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0dd597a7a11f..b07b5a40630a 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -215,6 +215,7 @@
 #include "i915_file_private.h"
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
+#include "i915_reg.h"
 
 /* HW requires this to be a power of two, between 128k and 16M, though driver
  * is currently generally designed assuming the largest 16M size is used such
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index c70a02517e02..f6f9228a1351 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -15,7 +15,6 @@
 #include "gt/intel_engine.h"
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 
 /* object tracking */
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index e0cc0227b4d7..849baf6c3b3c 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -30,9 +30,10 @@
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
 #include "gt/intel_gt_regs.h"
-#include "intel_device_info.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_utils.h"
+#include "intel_device_info.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 2a3e2869fe71..92e6f03f18af 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -29,6 +29,7 @@
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
+#include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
 #include "intel_pm.h"
-- 
2.34.1

