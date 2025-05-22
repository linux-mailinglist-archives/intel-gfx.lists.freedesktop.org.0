Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E0FAC0900
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 11:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A9110EE8A;
	Thu, 22 May 2025 09:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B/REHb8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1E9810EB5B;
 Thu, 22 May 2025 09:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747907342; x=1779443342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pN9Qqm11nSDv4UrpFAPA5KiV0eDhDPj9K0Nb66SRgJQ=;
 b=B/REHb8taDA3KepVPxbDf4dbwWLZBFHzi/2UAIhsCJkEznp3dZKo/qfQ
 1usld+OFru0NiowH9iOAQSTJ+qv29jUj229JDqXJ1BiS5eF2J/ATTnCtP
 avZmLwqTxS+eYd4qnr9v73TW7JBIEbvor0nQCOoOS9YyDVJfTdm3kTBGy
 OnEGJUuM05H5oGOl0XJR8H085UgYWFpa7m5x7QZ4Ugvzinq4YBR2wTfm5
 635q/PelahR9VDvQ9UB00+0YfGSjwR9m6cFkwZ9yIKj2TR55Siuu2oaFJ
 /UGZdRNiT5wtJu70iSy2BCxNUiBimlEOhkCZQmVE5d4efKf2dUP0+ar+3 w==;
X-CSE-ConnectionGUID: rUcMaZi4RqWNg2tNTofZ/w==
X-CSE-MsgGUID: jxzcksOwS9ee15tEAwiayg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="50025566"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="50025566"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:49:01 -0700
X-CSE-ConnectionGUID: c2AxfwlMTWmW7R2Sqgc+qg==
X-CSE-MsgGUID: u3IcFsIKRiCUVE/v2noB3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141044315"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:48:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v2 2/3] drm/i915: stop including display/intel_display_{core,
 limits}.h from i915_drv.h
Date: Thu, 22 May 2025 12:48:43 +0300
Message-Id: <b381b59acb7e4f600e0282935a68aedf77768109.1747907216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747907216.git.jani.nikula@intel.com>
References: <cover.1747907216.git.jani.nikula@intel.com>
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

Make i915->display pointer opaque to most of core i915 driver. Lots of
places now need explicit include of intel_display_core.h, or a more
specific header.

With this dependency broken, changes in display should cause radically
less recompilation of i915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c                | 1 +
 drivers/gpu/drm/i915/display/intel_display_conversion.c  | 1 +
 drivers/gpu/drm/i915/display/intel_display_driver.c      | 1 +
 drivers/gpu/drm/i915/display/intel_display_reset.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_rpm.c         | 1 +
 drivers/gpu/drm/i915/display/intel_display_rps.c         | 1 +
 drivers/gpu/drm/i915/display/intel_dpt.c                 | 1 +
 drivers/gpu/drm/i915/display/intel_encoder.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c                  | 1 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c               | 1 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c              | 1 +
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c            | 1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c             | 1 +
 drivers/gpu/drm/i915/display/intel_opregion.c            | 1 +
 drivers/gpu/drm/i915/display/intel_plane_initial.c       | 1 +
 drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c | 1 +
 drivers/gpu/drm/i915/gt/intel_gt_pm.c                    | 2 ++
 drivers/gpu/drm/i915/gvt/cmd_parser.c                    | 1 +
 drivers/gpu/drm/i915/gvt/display.c                       | 1 +
 drivers/gpu/drm/i915/gvt/edid.c                          | 1 +
 drivers/gpu/drm/i915/gvt/fb_decoder.c                    | 1 +
 drivers/gpu/drm/i915/gvt/handlers.c                      | 1 +
 drivers/gpu/drm/i915/i915_driver.c                       | 2 ++
 drivers/gpu/drm/i915/i915_drv.h                          | 7 +++----
 drivers/gpu/drm/i915/i915_irq.c                          | 1 +
 drivers/gpu/drm/i915/i915_switcheroo.c                   | 2 ++
 drivers/gpu/drm/i915/intel_clock_gating.c                | 1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c              | 1 +
 drivers/gpu/drm/i915/intel_uncore.c                      | 2 ++
 drivers/gpu/drm/i915/selftests/mock_gem_device.c         | 2 ++
 drivers/gpu/drm/i915/soc/intel_dram.c                    | 2 ++
 drivers/gpu/drm/i915/soc/intel_gmch.c                    | 2 ++
 32 files changed, 41 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ba7b8938b17c..9ce41e689d50 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -37,6 +37,7 @@
 
 #include "i915_drv.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
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
index 2bdafab9b6d0..ec799a1773e4 100644
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
index 1dbd3e841df3..f5f38dca14d7 100644
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
index 48da67dd0136..56c4024201c1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rpm.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
@@ -2,6 +2,7 @@
 /* Copyright © 2025 Intel Corporation */
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_runtime_pm.h"
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index 0f1c95d70843..82ea1ec482e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -9,6 +9,7 @@
 #include "gt/intel_rps.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_display_core.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 8684cf8e4b7f..aea249e2699f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -9,6 +9,7 @@
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
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
index 05393bd60c98..a5906cb4900c 100644
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
index c648ab8a93d7..98a61a7b0b93 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -12,6 +12,7 @@
 
 #include "i915_drv.h"
 #include "intel_atomic_plane.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 5f4cb3328265..8db3af36b2f2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -8,6 +8,7 @@
 #include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index fc5d8928c37e..74fe398663d6 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -30,6 +30,7 @@
 #include "i915_irq.h"
 #include "intel_connector.h"
 #include "intel_display_power.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
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
index c00d9184c586..8800a657cd21 100644
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
index 3b77b4bb88e3..c7f59d60fac6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -6,6 +6,8 @@
 #include <linux/string_helpers.h>
 #include <linux/suspend.h>
 
+#include "display/intel_display_power.h"
+
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
index b77e8f3ff75c..6fed71f8198f 100644
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
index 11cb8bf1fa4a..9b001776a960 100644
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
index d33b0eb83a4f..3b0bda74697d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -51,6 +51,7 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
+#include "display/intel_display_core.h"
 #include "display/intel_display_driver.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
@@ -58,6 +59,7 @@
 #include "display/intel_encoder.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_hotplug.h"
+#include "display/intel_opregion.h"
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fd0274ec9c2c..b6c632bd522c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -32,13 +32,11 @@
 
 #include <uapi/drm/i915_drm.h>
 
+#include <linux/pci.h>
 #include <linux/pm_qos.h>
 
 #include <drm/ttm/ttm_device.h>
 
-#include "display/intel_display_limits.h"
-#include "display/intel_display_core.h"
-
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
 #include "gem/i915_gem_stolen.h"
@@ -63,8 +61,9 @@
 #include "intel_uncore.h"
 
 struct drm_i915_clock_gating_funcs;
-struct vlv_s0ix_state;
+struct intel_display;
 struct intel_pxp;
+struct vlv_s0ix_state;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 351928481cd9..191ed8bb1d9c 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -33,6 +33,7 @@
 
 #include <drm/drm_drv.h>
 
+#include "display/intel_display_core.h"
 #include "display/intel_display_irq.h"
 #include "display/intel_hotplug.h"
 #include "display/intel_hotplug_irq.h"
diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
index f45bd6b6cede..4c02a04be681 100644
--- a/drivers/gpu/drm/i915/i915_switcheroo.c
+++ b/drivers/gpu/drm/i915/i915_switcheroo.c
@@ -5,6 +5,8 @@
 
 #include <linux/vga_switcheroo.h>
 
+#include "display/intel_display_core.h"
+
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_switcheroo.h"
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 5bbf891ccc32..f86a3629ae9e 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -27,6 +27,7 @@
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
+#include "display/intel_display_core.h"
 
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d581a9d2c063..e83dc30e658d 100644
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
index 48a10ff80148..9b2254d86491 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -24,6 +24,8 @@
 #include <drm/drm_managed.h>
 #include <linux/pm_runtime.h>
 
+#include "display/intel_display_core.h"
+
 #include "gt/intel_gt.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index dab2b71a2a8f..fb8751bd5df0 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -28,6 +28,8 @@
 
 #include <drm/drm_managed.h>
 
+#include "display/intel_display_device.h"
+
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_requests.h"
 #include "gt/mock_engine.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index efee955ae8a3..9f806ce0eb9e 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -5,6 +5,8 @@
 
 #include <linux/string_helpers.h>
 
+#include "../display/intel_display_core.h" /* FIXME */
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 734e9f2801ea..5346b8dda79a 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -10,6 +10,8 @@
 #include <drm/drm_managed.h>
 #include <drm/intel/i915_drm.h>
 
+#include "../display/intel_display_core.h" /* FIXME */
+
 #include "i915_drv.h"
 #include "intel_gmch.h"
 #include "intel_pci_config.h"
-- 
2.39.5

