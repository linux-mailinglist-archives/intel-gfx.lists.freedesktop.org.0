Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3376A5CBA3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF8310E642;
	Tue, 11 Mar 2025 17:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hnEiMpxo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D06110E62B;
 Tue, 11 Mar 2025 17:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712811; x=1773248811;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I0nd6d/Q2ggvWNPWuj1MYZJejc8NY3JnrDZqSZmVXXE=;
 b=hnEiMpxophz4JsLw0TjtQIomnGuCOCYY66OO13sJ5VB6En2CLZCmGhYl
 7My5/hDxML1zbPBS3RUsSuSaS5WBtGov0OoefQ1t36tvUfuSIb9V9fsVP
 lUBa3WF5iiA2tk/vO6yD2DJgs1J10PBlAeBugA8AVR2r6oiHLdKaf3+Mh
 YYku2Jo0N0N0JrqVYy+5dQIUyiLPrAdDyjj1fhmE9fa6fhyU6Q48pTcWJ
 BjIX6l2ii6MdPA10G74XkkFltXlvRa15ORUhrbvl4bs8leCcJx0ZukmwQ
 uW85wWifbYuuOUMQg5+C0IrGVtAr3sLf6G2iEaWXRFxpbLW6rPVayKGj9 w==;
X-CSE-ConnectionGUID: 6BklAIEMRN+JRey2wIeimw==
X-CSE-MsgGUID: 2afMk8I7RpSBKpfFdMdYPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547771"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547771"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:51 -0700
X-CSE-ConnectionGUID: Smvz/QTtTQWavYZ++zJSaw==
X-CSE-MsgGUID: DQy3BLAaSGqewv1ik0IdWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889314"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 6/7] drm/i915: stop including display/intel_display_core.h from
 i915_drv.h
Date: Tue, 11 Mar 2025 19:06:13 +0200
Message-Id: <8a8e8a7d23136889d79d20222e471d213063796d.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
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

Make i915->display opaque.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c                  | 1 +
 drivers/gpu/drm/i915/display/i9xx_wm.c                   | 1 +
 drivers/gpu/drm/i915/display/intel_atomic.c              | 1 +
 drivers/gpu/drm/i915/display/intel_bios.c                | 1 +
 drivers/gpu/drm/i915/display/intel_connector.c           | 1 +
 drivers/gpu/drm/i915/display/intel_crtc.c                | 1 +
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c     | 1 +
 drivers/gpu/drm/i915/display/intel_display_conversion.c  | 1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c      | 1 +
 drivers/gpu/drm/i915/display/intel_display_reset.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_rps.c         | 1 +
 drivers/gpu/drm/i915/display/intel_dpt.c                 | 1 +
 drivers/gpu/drm/i915/display/intel_dsb_buffer.c          | 1 +
 drivers/gpu/drm/i915/display/intel_dsi.c                 | 1 +
 drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c   | 1 +
 drivers/gpu/drm/i915/display/intel_encoder.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c                  | 1 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c               | 1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c              | 1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c               | 1 +
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c            | 1 +
 drivers/gpu/drm/i915/display/intel_frontbuffer.c         | 1 +
 drivers/gpu/drm/i915/display/intel_global_state.c        | 1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c            | 1 +
 drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c    | 1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c             | 1 +
 drivers/gpu/drm/i915/display/intel_modeset_verify.c      | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c            | 1 +
 drivers/gpu/drm/i915/display/intel_plane_initial.c       | 1 +
 drivers/gpu/drm/i915/display/intel_sprite_uapi.c         | 1 +
 drivers/gpu/drm/i915/display/intel_wm.c                  | 1 +
 drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c                    | 1 +
 drivers/gpu/drm/i915/gvt/cmd_parser.c                    | 1 +
 drivers/gpu/drm/i915/gvt/display.c                       | 1 +
 drivers/gpu/drm/i915/gvt/edid.c                          | 1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c                    | 1 +
 drivers/gpu/drm/i915/gvt/handlers.c                      | 1 +
 drivers/gpu/drm/i915/i915_driver.c                       | 3 +++
 drivers/gpu/drm/i915/i915_drv.h                          | 5 +++--
 drivers/gpu/drm/i915/i915_gpu_error.c                    | 1 +
 drivers/gpu/drm/i915/i915_irq.c                          | 1 +
 drivers/gpu/drm/i915/i915_switcheroo.c                   | 1 +
 drivers/gpu/drm/i915/intel_clock_gating.c                | 1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c              | 1 +
 drivers/gpu/drm/i915/intel_uncore.c                      | 1 +
 drivers/gpu/drm/i915/selftests/mock_gem_device.c         | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c                    | 1 +
 drivers/gpu/drm/i915/soc/intel_gmch.c                    | 1 +
 drivers/gpu/drm/i915/soc/intel_pch.c                     | 1 +
 50 files changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 3dc2c59a3df0..52b407bf0930 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -13,6 +13,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_core.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 529c090861c7..fa6ed322f934 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -10,6 +10,7 @@
 #include "intel_atomic.h"
 #include "intel_bo.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_trace.h"
 #include "intel_fb.h"
 #include "intel_mchbar_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 1d6383a13bc6..bcb74b465dd6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -37,6 +37,7 @@
 #include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dp_tunnel.h"
 #include "intel_global_state.h"
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index a8d08d7d82b3..e465b0c17122 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -37,6 +37,7 @@
 
 #include "i915_drv.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 57aecb343c76..3c380c3a7b05 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -33,6 +33,7 @@
 #include "i915_drv.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
+#include "intel_display_core.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 5b2603ef2ff7..9c1b3e076b4c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -21,6 +21,7 @@
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_cursor.h"
+#include "intel_display_core.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_irq.h"
 #include "intel_display_trace.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index cbeab72536bd..f7b3b4e19cbe 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -8,6 +8,7 @@
 
 #include "i915_drv.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_hdmi.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
index 151d83fdbe37..4d565935e2cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.c
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -2,6 +2,7 @@
 /* Copyright © 2024 Intel Corporation */
 
 #include "i915_drv.h"
+#include "intel_display_conversion.h"
 
 struct intel_display *__i915_to_display(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 31740a677dd8..03425a779275 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -27,6 +27,7 @@
 #include "intel_cdclk.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index 1f2798404f2c..d9fd9b6843b9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -8,6 +8,7 @@
 #include "i915_drv.h"
 #include "intel_clock_gating.h"
 #include "intel_cx0_phy.h"
+#include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_reset.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 4074a1879828..208677db7675 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -8,6 +8,7 @@
 
 #include "gt/intel_rps.h"
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_rps.h"
 #include "intel_display_types.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 65b812e2fe97..68f7e077be55 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -9,6 +9,7 @@
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
index c77d48bda26a..39125f02655e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
@@ -7,6 +7,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "i915_vma.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dsb_buffer.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 8da92b69b23c..f52a247e06e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -6,6 +6,7 @@
 #include <drm/drm_mipi_dsi.h>
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_dsi.h"
 #include "intel_panel.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 049443245310..8ad377ac2ecf 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -27,6 +27,7 @@
 #include <video/mipi_display.h>
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_dsi_dcs_backlight.h"
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 21d638535497..bad452ad979a 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -6,7 +6,7 @@
 #include <linux/workqueue.h>
 
 #include "i915_drv.h"
-
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_encoder.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 2b0e0f220442..f8b5f886bb13 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -14,6 +14,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_bo.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb_bo.c b/drivers/gpu/drm/i915/display/intel_fb_bo.c
index 3d338a728354..b0e8b89f7ce8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_bo.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 30ac9b089ad6..d7707989fdab 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -12,6 +12,7 @@
 
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index f03055236df0..2731de0920a6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -50,6 +50,7 @@
 #include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_bo.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 4991c35a2632..15c4bd5766d5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 2d61555ef331..b2da426273ee 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -61,6 +61,7 @@
 #include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_bo.h"
+#include "intel_display_core.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers/gpu/drm/i915/display/intel_global_state.c
index 8a49e2bb37fa..0f1937eece8a 100644
--- a/drivers/gpu/drm/i915/display/intel_global_state.c
+++ b/drivers/gpu/drm/i915/display/intel_global_state.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "intel_atomic.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_global_state.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
index 43dcfafb0fd6..7c16facacc3e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
@@ -10,6 +10,7 @@
 #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
 #include "i915_drv.h"
 #include "i915_utils.h"
+#include "intel_display_core.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_gsc_message.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
index 129104fa9b16..faa7698aef07 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
@@ -7,6 +7,7 @@
 #include <drm/intel/i915_hdcp_interface.h>
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_hdcp_gsc_message.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 0d759a1a5eba..e45629656a17 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -29,6 +29,7 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "intel_connector.h"
+#include "intel_display_core.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index a008412fdd04..770163916de4 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -13,6 +13,7 @@
 #include "intel_crtc_state_dump.h"
 #include "intel_cx0_phy.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
 #include "intel_modeset_verify.h"
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 0eaa6cd6fe80..5535cb799431 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -35,6 +35,7 @@
 #include "i915_drv.h"
 #include "intel_acpi.h"
 #include "intel_backlight.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_opregion.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index b1675b46e06c..13b1a039e5a5 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -9,6 +9,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
index 1d0b84b464c1..adda48f6f1d2 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "intel_crtc.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_sprite_uapi.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index cd746f5281d3..c8cbd9bec7c5 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i9xx_wm.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index bac15196b4d2..86d9d2fcb6a6 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -5,6 +5,7 @@
 
 #include "i915_selftest.h"
 
+#include "display/intel_display_core.h"
 #include "gt/intel_context.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 3b77b4bb88e3..1cd99f266e59 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 #include <linux/suspend.h>
 
+#include "display/intel_display_power.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_params.h"
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 2b5094e8de5e..62d744363598 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -50,6 +50,7 @@
 #include "trace.h"
 
 #include "display/i9xx_plane_regs.h"
+#include "display/intel_display_core.h"
 #include "display/intel_sprite_regs.h"
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_pm.h"
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index cb6d598fa0de..e7a72f30a60b 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -43,6 +43,7 @@
 #include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display.h"
+#include "display/intel_display_core.h"
 #include "display/intel_dpio_phy.h"
 #include "display/intel_sprite_regs.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 89147d33168c..2031b97de2b7 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -35,6 +35,7 @@
 #include <drm/display/drm_dp.h>
 
 #include "display/intel_dp_aux_regs.h"
+#include "display/intel_gmbus.h"
 #include "display/intel_gmbus_regs.h"
 #include "gvt.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 4cfe8d7f368d..112f6723c427 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -42,6 +42,7 @@
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_cursor_regs.h"
+#include "display/intel_display_core.h"
 #include "display/intel_sprite_regs.h"
 #include "display/skl_universal_plane_regs.h"
 
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 68b464458343..39a0f6247f7d 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -47,6 +47,7 @@
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 284fcbe3b2c4..ede2b3e0e28e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -51,13 +51,16 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
+#include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
+#include "display/intel_opregion.h"
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 32d5cca0ffc6..1b3a455f98fb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -32,12 +32,12 @@
 
 #include <uapi/drm/i915_drm.h>
 
+#include <linux/pci.h>
 #include <linux/pm_qos.h>
 
 #include <drm/ttm/ttm_device.h>
 
 #include "display/intel_display_limits.h"
-#include "display/intel_display_core.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
@@ -65,8 +65,9 @@
 #include "intel_uncore.h"
 
 struct drm_i915_clock_gating_funcs;
-struct vlv_s0ix_state;
+struct intel_display;
 struct intel_pxp;
+struct vlv_s0ix_state;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index f1f0750ee89a..9f08a1e4b5ee 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -40,6 +40,7 @@
 #include <drm/drm_cache.h>
 #include <drm/drm_print.h>
 
+#include "display/intel_display_core.h"
 #include "display/intel_display_snapshot.h"
 
 #include "gem/i915_gem_context.h"
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ef9528aa96c4..853cc87d5df9 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -33,6 +33,7 @@
 
 #include <drm/drm_drv.h>
 
+#include "display/intel_display_core.h"
 #include "display/intel_display_irq.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index f45bd6b6cede..830c0eba91ad 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -5,6 +5,7 @@
 
 #include <linux/vga_switcheroo.h>
 
+#include "display/intel_display_core.h"
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_switcheroo.h"
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 1f7de988361e..26f6cb919983 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -27,6 +27,7 @@
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
+#include "display/intel_display_core.h"
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 76d84cbb8361..a61093f009ae 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -11,6 +11,7 @@
 #include "display/intel_color_regs.h"
 #include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 04ef628e208b..28ffac78b761 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -24,6 +24,7 @@
 #include <drm/drm_managed.h>
 #include <linux/pm_runtime.h>
 
+#include "display/intel_display_core.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index a77e5b26542c..d8d8a79b2695 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -28,6 +28,7 @@
 
 #include <drm/drm_managed.h>
 
+#include "display/intel_display_core.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/mock_engine.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 9e310f4099f4..17e2b6d7693c 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -5,6 +5,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "../display/intel_display_core.h" /* FIXME */
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 734e9f2801ea..6f9c2ab95dd1 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -10,6 +10,7 @@
 #include <drm/drm_managed.h>
 #include <drm/intel/i915_drm.h>
 
+#include "display/intel_display_core.h"
 #include "i915_drv.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 82dc7fbd1a3e..ef2fa81c8d8f 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -3,6 +3,7 @@
  * Copyright 2019 Intel Corporation.
  */
 
+#include "../display/intel_display_core.h" /* FIXME */
 #include "i915_drv.h"
 #include "i915_utils.h"
 #include "intel_pch.h"
-- 
2.39.5

