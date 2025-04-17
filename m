Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E176DA9175B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 11:10:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D9510EA69;
	Thu, 17 Apr 2025 09:10:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsHnm80/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A7410EA5F;
 Thu, 17 Apr 2025 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744881053; x=1776417053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yi8MzfvrmqBJHSBT4/r7N6XAYJk7Vh1PNPUj/CBHOMA=;
 b=JsHnm80/4eqJfj3rUA29mO/hpI5q/UGYyd9cqYT/tugJlSS3ZyVI9XlS
 tFFy+6yTv/stcxPPMz0WIWQkO//CuTIUDmvBdc+b1lqwU28ExnbOiZDPk
 /jpPcilQKFFkO1uUDQ50pchBMKgyXvfDaMmGKaBsEtHIVo1L+2kyD7SaQ
 431TAdTwtD3a6Xy6/jt56JdrNYm8VRckgGmX9wU5Nv4kbq6kfJzr5rKzj
 q50SD2r9K5LZqbetUrhmQFxZtrvsHCvU/vn+WS3J0emVcHIm6Ok4D44Sy
 FgtpzuIm04hxciD8oNv4AEqN4APvihtyOny/DKBkOhjoBN+0zWwjw4fiv Q==;
X-CSE-ConnectionGUID: tM92expfTxyFUcrmCCBPcw==
X-CSE-MsgGUID: N4aS6OFnTtmfUBnWWnz6oQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57829484"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57829484"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:53 -0700
X-CSE-ConnectionGUID: VHajQp4aTFm5LLP9Qz+Aww==
X-CSE-MsgGUID: pStWsHFITsqvajIWs6KMpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161694774"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/3] drm/i915/display: drop lots of unnecessary #include
 i915_drv.h
Date: Thu, 17 Apr 2025 12:10:37 +0300
Message-Id: <5dc9e6a98461c344febac4c645875d8688eba906.1744880985.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744880985.git.jani.nikula@intel.com>
References: <cover.1744880985.git.jani.nikula@intel.com>
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

v2: Drop even more of the includes

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c                | 4 +++-
 drivers/gpu/drm/i915/display/g4x_hdmi.c              | 3 ++-
 drivers/gpu/drm/i915/display/intel_audio.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_backlight.c       | 5 ++++-
 drivers/gpu/drm/i915/display/intel_cmtg.c            | 1 -
 drivers/gpu/drm/i915/display/intel_crt.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c          | 3 ++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c         | 4 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c             | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_device.c  | 8 +++++---
 drivers/gpu/drm/i915/display/intel_dp_aux.c          | 4 +++-
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
 23 files changed, 57 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 9a8c42d6aea9..38c7eea2414f 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -7,9 +7,11 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_print.h>
+
 #include "g4x_dp.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 4e8b13e9ddd8..1d252432d729 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -5,8 +5,9 @@
  * HDMI support for G4x,ILK,SNB,IVB,VLV,CHV (HSW+ handled by the DDI code).
  */
 
+#include <drm/drm_print.h>
+
 #include "g4x_hdmi.h"
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
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
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 415e59405318..38b50a779b6b 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -31,9 +31,9 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_connector.h"
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
index 957c9a579a18..8d0a1779dd19 100644
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
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index b6ef2116164c..bf8e8e0cc19c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -3,8 +3,10 @@
  * Copyright © 2020-2021 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
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

