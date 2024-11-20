Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 959AB9D3A29
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:04:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A56C10E72C;
	Wed, 20 Nov 2024 12:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNWe/spS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62C510E730;
 Wed, 20 Nov 2024 12:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104242; x=1763640242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QsPDoyGBlnIiA4vliRt3zzVPnzWfwtf9m9Jgf+XEtXw=;
 b=FNWe/spSw/uL9DTDm0lfSZnqyQTt9d28UXFXkBSJ6vXeeblmIkQdFP8P
 DtgqPvkS1CBFJ7xdrveRQTyDlxULcgFb8ir6sv32KBmNwSrD/2naNxYzj
 4PLzfgyvG5eRy9R4oCETgKskQdJBFnNZEDCbOr0/J9YKV8gOw/sR0/HKn
 tsd383/lbydhR6uZR/e99j+NIV25SeY5I77ZGkADvFcQH6sNi4cWafUnD
 MPa/cHAc0PgwuJLcaU6YCi3w+vdcG8sfHQKVe3pVrd5delos/it16iFUr
 Gw7kxT5Op1uvE5/ua5wnGaIE9PlaGLxXkey4a6hRMOz3QLbB2AyqBMOFc Q==;
X-CSE-ConnectionGUID: Tu7mJJxaTpSaf0aQbDqQaQ==
X-CSE-MsgGUID: 8im+Vt9sTKCDx95dAs+WTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540122"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540122"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:01 -0800
X-CSE-ConnectionGUID: Z1cvzXThTQeZ0seUWKWDDQ==
X-CSE-MsgGUID: qZy1jmLKRQCEKpkQMVhtKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277924"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 4/6] drm/i915/uncore: add to_intel_uncore() and use it
Date: Wed, 20 Nov 2024 14:03:35 +0200
Message-Id: <377e2b400d126776224fc49874ed9cb03ac3123c.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
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

Add to_intel_uncore() function to avoid the inclusion of i915_drv.h from
intel_de.h. This reveals a number of implicit dependencies on i915_drv.h
that need to be added.

For now, to_intel_uncore() can be an inline function, with all the
includes in compat intel_uncore.h, as long as i915_drv.h isn't
included. The implicit dependencies on i915_drv.h is a problem in
display code, but the same is not true for xe_device.h etc.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                 | 1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c               | 1 +
 drivers/gpu/drm/i915/display/i9xx_plane.c             | 1 +
 drivers/gpu/drm/i915/display/icl_dsi.c                | 1 +
 drivers/gpu/drm/i915/display/intel_alpm.c             | 1 +
 drivers/gpu/drm/i915/display/intel_backlight.c        | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c            | 1 +
 drivers/gpu/drm/i915/display/intel_color.c            | 1 +
 drivers/gpu/drm/i915/display/intel_combo_phy.c        | 1 +
 drivers/gpu/drm/i915/display/intel_cursor.c           | 1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c          | 2 ++
 drivers/gpu/drm/i915/display/intel_de.h               | 6 ++++--
 drivers/gpu/drm/i915/display/intel_display_debugfs.c  | 1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c           | 1 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c         | 1 +
 drivers/gpu/drm/i915/display/intel_dpll.c             | 1 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c         | 1 +
 drivers/gpu/drm/i915/display/intel_dpt_common.c       | 1 +
 drivers/gpu/drm/i915/display/intel_fdi.c              | 1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c           | 1 +
 drivers/gpu/drm/i915/display/intel_pch_display.c      | 1 +
 drivers/gpu/drm/i915/display/intel_pch_refclk.c       | 1 +
 drivers/gpu/drm/i915/display/intel_pipe_crc.c         | 1 +
 drivers/gpu/drm/i915/display/intel_snps_phy.c         | 1 +
 drivers/gpu/drm/i915/display/skl_scaler.c             | 1 +
 drivers/gpu/drm/i915/intel_uncore.c                   | 5 +++++
 drivers/gpu/drm/i915/intel_uncore.h                   | 2 ++
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 5 +++++
 29 files changed, 42 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 4fbec065d53e..fb2656a6c36a 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -8,6 +8,7 @@
 #include <linux/string_helpers.h>
 
 #include "g4x_dp.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index d1a7d0d57c6b..503f4b903098 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -6,6 +6,7 @@
  */
 
 #include "g4x_hdmi.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 17a1e3801a85..48e657a80a16 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -8,6 +8,7 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_fourcc.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 74ab3d1a1622..c977b74f82f0 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -31,6 +31,7 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_probe_helper.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "icl_dsi.h"
 #include "icl_dsi_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..c7ccd5a10012 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -5,6 +5,7 @@
 
 #include <linux/debugfs.h>
 
+#include "i915_drv.h"
 #include "intel_alpm.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3f81a726cc7d..fc1e517e074a 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -10,6 +10,7 @@
 
 #include <acpi/video.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5a4c8c2410ae..3506e576bf6b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -29,6 +29,7 @@
 #include "soc/intel_dram.h"
 
 #include "hsw_ips.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 174753625bca..0de76d2ea3f2 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include "i915_drv.h"
 #include "i9xx_plane_regs.h"
 #include "intel_color.h"
 #include "intel_color_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 3252dab56430..4fbe2e3542ca 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -3,6 +3,7 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_combo_phy.h"
 #include "intel_combo_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index ed88a28a3afa..57cf8f46a458 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -11,6 +11,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_vblank.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 71dc659228ab..f3eb0d2f962d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -5,6 +5,8 @@
 
 #include <linux/log2.h>
 #include <linux/math64.h>
+
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index e5f1c6f3d2d3..b7399e9d11cc 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -6,14 +6,16 @@
 #ifndef __INTEL_DE_H__
 #define __INTEL_DE_H__
 
-#include "i915_drv.h"
+#include "intel_display_conversion.h"
+#include "intel_display_core.h"
+#include "intel_dmc_wl.h"
 #include "intel_dsb.h"
 #include "intel_uncore.h"
 #include "intel_uncore_trace.h"
 
 static inline struct intel_uncore *__to_uncore(struct intel_display *display)
 {
-	return &to_i915(display->drm)->uncore;
+	return to_intel_uncore(display->drm);
 }
 
 static inline u32
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 2874867aae2b..6d08e1316aed 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -11,6 +11,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "hsw_ips.h"
+#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_alpm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 853d75610489..b5d45478a902 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_print.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 00c493cc8a4b..6cea66069abd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -11,6 +11,7 @@
 #include <drm/display/drm_hdcp_helper.h>
 #include <drm/drm_print.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 0f12f2c3467c..8c56f8488e14 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -22,6 +22,7 @@
  */
 
 #include "bxt_dpio_phy_regs.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 198ceda790d2..3256b1293f7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -6,6 +6,7 @@
 #include <linux/kernel.h>
 #include <linux/string_helpers.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index e60497bb8a94..d86cc9ffd4ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -25,6 +25,7 @@
 #include <linux/string_helpers.h>
 
 #include "bxt_dpio_phy_regs.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt_common.c
index 573f72068899..d2dede0a5229 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 98e1a3606227..37cdfa9c692a 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_fixed.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index f9db867fae89..16a7d888f1ee 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -28,6 +28,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index cd48d3e6cf42..8fa5a6334d10 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -4,6 +4,7 @@
  */
 
 #include "g4x_dp.h"
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_crt.h"
 #include "intel_crt_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index d29b9adcbed1..71471c1d7dc9 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 304da826dee1..90efc6f64e52 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -28,6 +28,7 @@
 #include <linux/debugfs.h>
 #include <linux/seq_file.h>
 
+#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index 4b3a32736fd6..41fe26dc200b 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -5,6 +5,7 @@
 
 #include <linux/math.h>
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 11f73659c1b6..ae21fce534dc 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -3,6 +3,7 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 04b4a3b6d5d6..eed4937c3ff3 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -37,6 +37,11 @@
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
 #define GT_FIFO_TIMEOUT_MS	 10
 
+struct intel_uncore *to_intel_uncore(struct drm_device *drm)
+{
+	return &to_i915(drm)->uncore;
+}
+
 #define __raw_posting_read(...) ((void)__raw_uncore_read32(__VA_ARGS__))
 
 static void
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index f419c311a0de..e39582950627 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -501,6 +501,8 @@ static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
 	return uncore->regs;
 }
 
+struct intel_uncore *to_intel_uncore(struct drm_device *drm);
+
 /*
  * The raw_reg_{read,write} macros are intended as a micro-optimization for
  * interrupt handlers so that the pointer indirection on uncore->regs can
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 686c39f320e4..4fc3e535de91 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -10,6 +10,11 @@
 #include "xe_device_types.h"
 #include "xe_mmio.h"
 
+static inline struct intel_uncore *to_intel_uncore(struct drm_device *drm)
+{
+	return &to_xe_device(drm)->uncore;
+}
+
 static inline struct xe_mmio *__compat_uncore_to_mmio(struct intel_uncore *uncore)
 {
 	struct xe_device *xe = container_of(uncore, struct xe_device, uncore);
-- 
2.39.5

