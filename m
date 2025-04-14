Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3293DA8806C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 14:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25EE310E59B;
	Mon, 14 Apr 2025 12:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQrOLZ6B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D5810E59B;
 Mon, 14 Apr 2025 12:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744634006; x=1776170006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0c6z7N702Ae9CN0+13UZUxqRErL7cKfRRekcagPEbTQ=;
 b=GQrOLZ6B4hRBLEWRAjOks+2Ko7fju4Gu1BKW1aSSqdrEN3SGRyaNouf4
 3qtJtsAe1vbthfywZZW8TEHFfcqqo1va0WXxY0t/VFYSQYZCO+ytz2kyj
 vbVZg9hLVLNFKJc1EAYj7npqoGkJ0MlGySXux8bmmwUzKRQ0WVLx1FRyJ
 5XpVeVuoARZ0V3tGVtw0wYiGCuB1UKzLjzrAq1CKEzOvYgmpDVfx7h+J6
 pnvLUe1iOz7D2sCrk+LkGvQgVQ0QkMkBu+hZnzliUjp81M4JhbXWd3rj3
 Bt5fkq/oX4n7z1vBOG0Z6ETQ04XqbsotuT2zKLL2YxV7HMtSrKeP6zAOj Q==;
X-CSE-ConnectionGUID: scps01rtTVGVrNLuHYp4Vw==
X-CSE-MsgGUID: N6ge1CCXTQ6DrF8s4FkWvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46011912"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="46011912"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 05:33:26 -0700
X-CSE-ConnectionGUID: Z/joAHIiQFir60QxybcL3A==
X-CSE-MsgGUID: ZPT4oU2YS6eFk9RJmkI63A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134781621"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 05:33:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/display: drop lots of unnecessary #include
 i915_drv.h
Date: Mon, 14 Apr 2025 15:33:08 +0300
Message-Id: <86f07ef5f0f8065f2b6e8b29619fd34350cf3ac6.1744633934.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744633934.git.jani.nikula@intel.com>
References: <cover.1744633934.git.jani.nikula@intel.com>
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

With the PCH macros switched to use struct intel_display, we have a
number of files that no longer need struct drm_i915_private or anything
else from i915_drv.h anymore. Remove the #include, and add the missing
includes that were previously implicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_backlight.c       | 5 ++++-
 drivers/gpu/drm/i915/display/intel_cmtg.c            | 1 -
 drivers/gpu/drm/i915/display/intel_cursor.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c         | 4 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c             | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_device.c  | 8 +++++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c          | 4 +++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c        | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dsb.c             | 3 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c             | 5 +++--
 drivers/gpu/drm/i915/display/intel_global_state.c    | 5 ++++-
 drivers/gpu/drm/i915/display/intel_lvds.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_pch_display.c     | 3 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_vga.c             | 5 ++++-
 drivers/gpu/drm/i915/display/skl_scaler.c            | 4 +++-
 19 files changed, 48 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index ef07b5488261..40d8bbd8107d 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -27,9 +27,9 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 #include <drm/intel/i915_component.h>
 
-#include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 5470fee7a707..5827da586003 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -10,8 +10,11 @@
 
 #include <acpi/video.h>
 
-#include "i915_drv.h"
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 07d7f4e8f60f..82606ebae1de 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -9,7 +9,6 @@
 #include <drm/drm_device.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_crtc.h"
 #include "intel_cmtg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 3276a5b4a9b0..2fec5ba58373 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -9,10 +9,11 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_atomic_plane.h"
 #include "intel_cursor.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 22595766eac5..b09f724c3046 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -6,8 +6,10 @@
 #include <linux/log2.h>
 #include <linux/math64.h>
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 99142b8cf569..e90fa7984e28 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -30,10 +30,11 @@
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_scdc_helper.h>
+#include <drm/drm_print.h>
 #include <drm/drm_privacy_screen_consumer.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "icl_dsi.h"
 #include "intel_audio.h"
 #include "intel_audio_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 0a16c96c2754..c5b2d772346f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -7,11 +7,12 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_debugfs.h>
+#include <drm/drm_drv.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_file.h>
 #include <drm/drm_fourcc.h>
 
 #include "hsw_ips.h"
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "i9xx_wm_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 61f76487397a..90d714598664 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -3,11 +3,13 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/intel/pciids.h>
-#include <drm/drm_color_mgmt.h>
 #include <linux/pci.h>
 
-#include "i915_drv.h"
+#include <drm/drm_color_mgmt.h>
+#include <drm/drm_drv.h>
+#include <drm/drm_print.h>
+#include <drm/intel/pciids.h>
+
 #include "i915_reg.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4c15dcb103aa..d19ef1fef452 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -27,10 +27,11 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
@@ -51,6 +52,7 @@
 #include "intel_link_bw.h"
 #include "intel_pfit.h"
 #include "intel_psr.h"
+#include "intel_step.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index c2f08b2ee455..9da051a3f455 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -24,9 +24,11 @@
 #include <linux/math.h>
 #include <linux/string_helpers.h>
 
+#include <drm/drm_print.h>
+
 #include "bxt_dpio_phy_regs.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -38,6 +40,7 @@
 #include "intel_hti.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
+#include "intel_step.h"
 #include "intel_tc.h"
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 72fe390c5af2..481488d1fe67 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,11 +4,12 @@
  *
  */
 
+#include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_rpm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index db68c20947ab..169bbe154b5c 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -6,15 +6,16 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
-#include "intel_dp.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_fdi.h"
 #include "intel_fdi_regs.h"
 #include "intel_link_bw.h"
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 8a49e2bb37fa..000a898c9480 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -3,10 +3,13 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <linux/pci.h>
 #include <linux/string.h>
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "intel_atomic.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_global_state.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 495f81cf5667..8ce7c630da52 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -37,9 +37,9 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index de77d6487d79..1743ebf551cb 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -3,8 +3,9 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "g4x_dp.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_crt.h"
 #include "intel_crt_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index c8e5ad4c4e79..8a38df2c0283 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -36,9 +36,9 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_eld.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 1ad6c8a94b3d..fd92e6b89b43 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -36,9 +36,10 @@
 #include <drm/drm_blend.h>
 #include <drm/drm_color_mgmt.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_print.h>
 #include <drm/drm_rect.h>
 
-#include "i915_drv.h"
+#include "i915_utils.h"
 #include "i9xx_plane.h"
 #include "intel_atomic_plane.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 684b5d1bc87c..6426ac6b8c51 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -4,12 +4,15 @@
  */
 
 #include <linux/delay.h>
+#include <linux/pci.h>
 #include <linux/vgaarb.h>
 
+#include <drm/drm_device.h>
+#include <drm/drm_print.h>
 #include <video/vga.h>
+
 #include "soc/intel_gmch.h"
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_vga.h"
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index ee81220a7c88..c855426544cf 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -3,8 +3,10 @@
  * Copyright © 2020 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
-- 
2.39.5

