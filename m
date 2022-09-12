Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0665B5EA7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 18:56:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAE910E114;
	Mon, 12 Sep 2022 16:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC6D89C2C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 16:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663001742; x=1694537742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3BdlpXuMJCILpVU15/9PYc4CVJQJHphU5sgBXkbD1GQ=;
 b=KhyyHz96gVY7MIq7uaEg0/3BtE1PefaCQJqK0vJYXvjMNZFBaTt2a6vZ
 R26jocqjI01wouazGMvy7SSgy8ncnqdL5qehsaYdMyHG9TOMgAlXrH+J+
 Pi3s4vknxBd/xJLA5FsTFxJ24/xWjHT8GNQf3ZZIsMxgN4NyY6n3pS81E
 NnKQRdzgWsDnDEk9wxwd31xJ7Kc0uGB5u2Q68nrP8iAdjDnv+N2paLCJi
 Rf1xteW0PDvbNB1ZdifXKsoiv/VcI58wf8jlcgzcUfbp/FBAbeWq5WRDA
 t3EkSWtUzYB8som92dib3OaN4s9016D550dLuV5nd1o/b0nWJfaSBF293 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="278309279"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="278309279"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="791617860"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 09:55:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 19:54:37 +0300
Message-Id: <725310cc5b17d4d194430a558e56386778b9ce33.1662999695.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662999695.git.jani.nikula@intel.com>
References: <cover.1662999695.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: stop including i915_irq.h from
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Turns out most of the files that need i915_reg.h get it implicitly via
{display/intel_de.h, gt/intel_context.h} -> i915_trace.h -> i915_irq.h
-> i915_reg.h. Since i915_trace.h doesn't actually need i915_irq.h,
makes sense to drop it, but that requires adding quite a few new
includes all over the place.

Prefer actually including i915_reg.h where needed instead of adding
another implicit include, because eventually we'll want to split up
i915_reg.h and only include the specific registers at each place.

Also some places actually needed i915_irq.h too.

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
index 5fbd2ae95869..ab5cc4a90591 100644
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
index ed4d93942dbd..1ff10a4609c2 100644
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
index 11a1342d6d37..0438071f58cf 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -8,6 +8,7 @@
 #include <linux/pwm.h>
 #include <linux/string_helpers.h>
 
+#include "i915_reg.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ed05070b7307..396a4a3be771 100644
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
index 6bda4274eae9..0c593a3b695b 100644
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
index 64890f39c3cc..f33c5fa962fb 100644
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
index 4a8ff2f97608..5a9162565160 100644
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
index 87899e89b3a7..25f181a8eefb 100644
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
index 643832d55c28..b7f89085711b 100644
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
index 407706448e9c..0839df2c2214 100644
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
index fe40e2a226d6..e9a83b30122a 100644
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
index a5eca5396fed..a6ea781fcbad 100644
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
index f2ad1d09ab43..65b855b286ef 100644
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
index 88689124c013..91761942dc56 100644
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
index 5adfd226d6c4..283e2aa73b2a 100644
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
index 8efc723657b3..29fde24b83c4 100644
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
index e5fb66a5dd02..a63f75af2ee4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -23,6 +23,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 7da4a9cbe4ba..c485ea85b6b0 100644
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
index 5572e43026e4..0cbc5197fcfc 100644
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
index 86817b56095e..a5b295dc23d1 100644
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
index 7816b2a33fee..88e399f223b5 100644
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
index dca6003ccac8..f1c429bed8a7 100644
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
index 9aa38e8141b5..5bcc11ccb0ef 100644
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
index cbfabd58b75a..911f6d14cf7a 100644
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
index a3a3f9fe4342..a70a7b6e8542 100644
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
index 8ac263f471be..6c8c8191b203 100644
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
index 079b7d3d0c53..15ce7c393a26 100644
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
index f5b744bef18f..3f3c065fa9a5 100644
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
index 9379f3463344..dc914134547f 100644
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
index b3f5ca280ef2..c310b94c6f0e 100644
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
index cd75b0ca2555..c3e41295b6b5 100644
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
index b73c91aa5450..bb80c348ef49 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -16,6 +16,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_migrate.h"
+#include "i915_reg.h"
 #include "i915_ttm_buddy_manager.h"
 
 #include "huge_gem_object.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 6e0122b3dca2..8a7f556e94c5 100644
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
index 4b909cb88cdf..95d6237dfcb0 100644
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
index b59fb03ed274..092d51bf5c66 100644
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
index b67831833c9a..8381e6fa2bcd 100644
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
index 6d2003d598e6..65510d3a6cfb 100644
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
index 22ba66e48a9b..7413cc3ffc88 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -29,6 +29,7 @@
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
index 1c6e941c9666..3c9145a8566c 100644
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
index 9ea2fe34e7d3..2b0b64f08b13 100644
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
index 0defbb43ceea..331bcc41f566 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -213,6 +213,7 @@
 #include "i915_file_private.h"
 #include "i915_perf.h"
 #include "i915_perf_oa_regs.h"
+#include "i915_reg.h"
 
 /* HW requires this to be a power of two, between 128k and 16M, though driver
  * is currently generally designed assuming the largest 16M size is used such
diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 37b5c9e9d260..6f6557aa1566 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -15,7 +15,6 @@
 #include "gt/intel_engine.h"
 
 #include "i915_drv.h"
-#include "i915_irq.h"
 
 /* object tracking */
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 0a1f97b35f2b..5af82ac5f6c6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -29,9 +29,10 @@
 
 #include "display/intel_cdclk.h"
 #include "display/intel_de.h"
-#include "intel_device_info.h"
 #include "i915_drv.h"
+#include "i915_reg.h"
 #include "i915_utils.h"
+#include "intel_device_info.h"
 
 #define PLATFORM_NAME(x) [INTEL_##x] = #x
 static const char * const platform_names[] = {
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5cd423c7b646..c3a86428478a 100644
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

