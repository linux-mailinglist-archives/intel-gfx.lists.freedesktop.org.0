Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FF1A42743
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 17:05:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4C010E341;
	Mon, 24 Feb 2025 16:05:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WzbCghV5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91E010E330;
 Mon, 24 Feb 2025 16:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740413136; x=1771949136;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=krVTFAB6K3s/FxxDQJJvNEnd56U9m7vYWumYxWRpSqU=;
 b=WzbCghV5kgUxUEm+5qlus8cHUKKOTdQT1FSkr5iNsqQdUj49wvjQ6EGf
 gDde3DQZoAxdo6C55Azmx9M5WEzS5aJbDO071wzvbv3Mrt6VhIuj+4/ac
 gSX11E+U/MXQY78NCIqfTEXedZss5AwT6hxL1nsYJ1UI50jWrQoInXJae
 9L8H0EpSNvC3Qjsc8CsgIycSrx069uHghXp6gJeXvLxFgXDTkkVoXWlLE
 hOftyj5FboFK/YApEKPYymx7f/CRQ5xFDG26uhXaQYhXf0Su5rkhggu60
 zLR3w8spDp62xZRdBFjzPIzcaZ11Mf0PAfFvnra+jWmf4MnE5COgnrLR+ Q==;
X-CSE-ConnectionGUID: mMzvxKMWQSmS3UMFbFS9Mw==
X-CSE-MsgGUID: hVyfftVVSU2GYks1Kppu5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40882988"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40882988"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:01:00 -0800
X-CSE-ConnectionGUID: dCYSqhMYQVOP5zP3sSHY8g==
X-CSE-MsgGUID: JReAJeeRRgGKqVgrnorDFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121356331"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 08:00:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: relocate intel_plane_ggtt_offset() to
 intel_atomic_plane.c
Date: Mon, 24 Feb 2025 18:00:48 +0200
Message-Id: <70ac6d19518f355abf37ac8c4b0f1d18878be28c.1740412806.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740412806.git.jani.nikula@intel.com>
References: <cover.1740412806.git.jani.nikula@intel.com>
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

With the primary goal of removing #include "i915_vma.h" from
intel_display_types.h, move intel_plane_ggtt_offset() to a proper
function in intel_atomic_plane.c. This reveals tons of implicit
dependencies all over the place that we pulled in via i915_vma.h. Fix
the fallout.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c              | 2 ++
 drivers/gpu/drm/i915/display/intel_atomic_plane.c      | 8 +++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h      | 2 ++
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_types.h     | 7 +------
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c  | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_link_training.c  | 1 +
 drivers/gpu/drm/i915/display/intel_dp_test.c           | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c         | 1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c             | 2 ++
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 1 +
 drivers/gpu/drm/i915/display/intel_link_bw.c           | 1 +
 drivers/gpu/drm/i915/display/intel_panel.c             | 1 +
 drivers/gpu/drm/i915/display/intel_pfit.c              | 2 ++
 drivers/gpu/drm/i915/display/intel_quirks.c            | 2 ++
 drivers/gpu/drm/xe/display/xe_fb_pin.c                 | 1 +
 16 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index bbf8c5a8fdbd..1addd6288241 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -9,6 +9,8 @@
 #include <linux/acpi.h>
 #include <acpi/video.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_utils.h"
 #include "intel_acpi.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 124cd9ddba0b..f481017cd1cf 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -40,8 +40,9 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_atomic_helper.h>
 
-#include "i915_drv.h"
 #include "i915_config.h"
+#include "i915_drv.h"
+#include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
@@ -1532,3 +1533,8 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
 
 	return 0;
 }
+
+u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
+{
+	return i915_ggtt_offset(plane_state->ggtt_vma);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 65edd88d28a9..6efac923dcbc 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -88,4 +88,6 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc);
 int intel_atomic_check_planes(struct intel_atomic_state *state);
 
+u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
+
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 0c8ac1af6db7..e80e1fd611ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -3,6 +3,8 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_power_map.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4440521e3e9e..12723ba13eb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -40,8 +40,8 @@
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank_work.h>
 #include <drm/intel/i915_hdcp_interface.h>
+#include <uapi/drm/i915_drm.h>
 
-#include "i915_vma.h"
 #include "i915_vma_types.h"
 #include "intel_bios.h"
 #include "intel_display.h"
@@ -2100,11 +2100,6 @@ intel_crtc_needs_color_update(const struct intel_crtc_state *crtc_state)
 		intel_crtc_needs_modeset(crtc_state);
 }
 
-static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
-{
-	return i915_ggtt_offset(plane_state->ggtt_vma);
-}
-
 static inline struct intel_frontbuffer *
 to_intel_frontbuffer(struct drm_framebuffer *fb)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index f53c8355d5be..8173de8aec63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -34,6 +34,8 @@
  * for some reason.
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_utils.h"
 #include "intel_backlight.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 11953b03bb6a..581f1dab618e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -24,6 +24,7 @@
 #include <linux/debugfs.h>
 
 #include <drm/display/drm_dp_helper.h>
+#include <drm/drm_print.h>
 
 #include "i915_utils.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 614b90d6938f..bd61f3c3ec91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -6,6 +6,8 @@
 #include <drm/display/drm_dp.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_file.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 280f302967e3..faa2b7a46699 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/display/drm_dp_tunnel.h>
+#include <drm/drm_print.h>
 
 #include "intel_atomic.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 301b5fd301a2..64fbd2461df3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -43,8 +43,10 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_print.h>
 
 #include "i915_drv.h"
+#include "i915_vma.h"
 #include "intel_bo.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 26128c610cb4..2e9d0cef9b59 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -59,6 +59,7 @@
 
 #include "i915_active.h"
 #include "i915_drv.h"
+#include "i915_vma.h"
 #include "intel_bo.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index f4d60e77aa18..a10cd3992607 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 4e6c5592c7ae..f5c972880391 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -32,6 +32,7 @@
 #include <linux/pwm.h>
 
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 
 #include "intel_backlight.h"
 #include "intel_connector.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 4ee03d9d14ad..dae497221752 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -3,6 +3,8 @@
  * Copyright © 2024 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_display_core.h"
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 8b30e9fd936e..a32fae510ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -5,6 +5,8 @@
 
 #include <linux/dmi.h>
 
+#include <drm/drm_print.h>
+
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_quirks.h"
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 11a6b996d739..b69896baa20c 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -5,6 +5,7 @@
 
 #include <drm/ttm/ttm_bo.h>
 
+#include "i915_vma.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
-- 
2.39.5

