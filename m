Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C5ADC44A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:13:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D31110E511;
	Tue, 17 Jun 2025 08:13:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="edj2uloI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063AF10E511;
 Tue, 17 Jun 2025 08:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750148031; x=1781684031;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4FqDiOrO4XlkW1SVwxauMib9BF/9atVhgKI8quTJYMk=;
 b=edj2uloIZn3FpYGiYHd5mMQLBlUY2LStvvjBzDQymaejY976upkkcG3f
 GiSZ6q3zm/eMlerb/oVXSzK+zXHzKxEvAO6+MbvIG90vDap7MxrQNcOMy
 opKfbltG173KY0Oy4s4rWXT5u/HP2Q8qMY9kmo3Nrc19CuwP3Ux2/ozkB
 usK/iIEQ2ydSvsR6OCetUhsi8TWCrURw99qSC9g8FFbFpmq0fTYwxc0gt
 CQNHJOc1uDza4bCW0Z3VAPT9MD2offilWXK+44+f1gBYXDN3Qrv21fpVT
 nnSNi2FmMHwIMAcLRY9vcyn9bJBZYZr/j4FXJozZzkTVTxBVJIv8zTtcN w==;
X-CSE-ConnectionGUID: VpS378dWRpqZ/Vqc9oUuVg==
X-CSE-MsgGUID: fN+087h5Ti6PuKrd/3buFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52016117"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52016117"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:51 -0700
X-CSE-ConnectionGUID: jsaGYysjSqa5xZ4WCzaKtg==
X-CSE-MsgGUID: /nKjCPwpT2SLnZIyDWo/DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="153597407"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:13:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [RESEND 1/5] drm/i915/plane: rename intel_atomic_plane.[ch] to
 intel_plane.[ch]
Date: Tue, 17 Jun 2025 11:13:36 +0300
Message-Id: <ba5f304e9fe71723191d872e6828d461e1a572bd.1750147992.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1750147992.git.jani.nikula@intel.com>
References: <cover.1750147992.git.jani.nikula@intel.com>
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

It's all atomic, no need to emphasize this.

v2: Also update Documentation/gpu/i915.rst (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 Documentation/gpu/i915.rst                                  | 4 ++--
 drivers/gpu/drm/i915/Makefile                               | 4 ++--
 drivers/gpu/drm/i915/display/i9xx_plane.c                   | 2 +-
 drivers/gpu/drm/i915/display/intel_atomic.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c                  | 2 +-
 drivers/gpu/drm/i915/display/intel_crtc.c                   | 2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c                 | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c                | 2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_fb.c                     | 2 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c                 | 2 +-
 .../i915/display/{intel_atomic_plane.c => intel_plane.c}    | 2 +-
 .../i915/display/{intel_atomic_plane.h => intel_plane.h}    | 6 +++---
 drivers/gpu/drm/i915/display/intel_plane_initial.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c                 | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c          | 3 +--
 drivers/gpu/drm/i915/display/skl_watermark.c                | 2 +-
 drivers/gpu/drm/xe/Makefile                                 | 2 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c               | 2 +-
 19 files changed, 23 insertions(+), 24 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.c => intel_plane.c} (99%)
 rename drivers/gpu/drm/i915/display/{intel_atomic_plane.h => intel_plane.h} (97%)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 7a469df675d8..5c5436413d7a 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -112,10 +112,10 @@ panel self refresh.
 Atomic Plane Helpers
 --------------------
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic_plane.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
    :doc: atomic plane helpers
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic_plane.c
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
    :internal:
 
 Asynchronous Page Flip
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7c6075bc483c..0c3fbd0d14e7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -218,12 +218,11 @@ i915-$(CONFIG_HWMON) += \
 # modesetting core code
 i915-y += \
 	display/hsw_ips.o \
-	display/i9xx_plane.o \
 	display/i9xx_display_sr.o \
+	display/i9xx_plane.o \
 	display/i9xx_wm.o \
 	display/intel_alpm.o \
 	display/intel_atomic.o \
-	display/intel_atomic_plane.o \
 	display/intel_audio.o \
 	display/intel_bios.o \
 	display/intel_bo.o \
@@ -283,6 +282,7 @@ i915-y += \
 	display/intel_pch.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
+	display/intel_plane.o \
 	display/intel_plane_initial.o \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 8f15333a4b07..eba8eb745aa7 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -15,7 +15,6 @@
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
 #include "intel_display_regs.h"
@@ -23,6 +22,7 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_sprite.h"
 
 /* Primary plane formats for gen <= 3 */
diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index f85edb374c97..348b1655435e 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -26,7 +26,7 @@
  *
  * The functions here implement the state management and hardware programming
  * dispatch required by the atomic modeset infrastructure.
- * See intel_atomic_plane.c for the plane-specific atomic functionality.
+ * See intel_plane.c for the plane-specific atomic functionality.
  */
 
 #include <drm/display/drm_dp_tunnel.h>
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38b3094b37d7..bae85603543c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -32,7 +32,6 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
@@ -43,6 +42,7 @@
 #include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
+#include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a88317ea4e9c..a187db6df2d3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -17,7 +17,6 @@
 #include "i9xx_plane.h"
 #include "icl_dsi.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_cursor.h"
@@ -29,6 +28,7 @@
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_pipe_crc.h"
+#include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 6bd4f6a28cae..27d86549af2c 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -14,7 +14,6 @@
 
 #include "i915_utils.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_cursor.h"
 #include "intel_cursor_regs.h"
 #include "intel_de.h"
@@ -23,6 +22,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "intel_vblank.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b0c7c46ffbe2..acc03b4c9e89 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -57,7 +57,6 @@
 #include "i9xx_wm.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_audio.h"
 #include "intel_bo.h"
 #include "intel_bw.h"
@@ -108,6 +107,7 @@
 #include "intel_pch_refclk.h"
 #include "intel_pfit.h"
 #include "intel_pipe_crc.h"
+#include "intel_plane.h"
 #include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8d0dcf252bed..fb25ec8adae3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -9,7 +9,6 @@
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "icl_dsi_regs.h"
-#include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -27,6 +26,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug_irq.h"
 #include "intel_pipe_crc_regs.h"
+#include "intel_plane.h"
 #include "intel_pmdemand.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a5906cb4900c..763b36c4de10 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -11,7 +11,6 @@
 #include <drm/drm_modeset_helper.h>
 
 #include "i915_drv.h"
-#include "intel_atomic_plane.h"
 #include "intel_bo.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
@@ -20,6 +19,7 @@
 #include "intel_fb.h"
 #include "intel_fb_bo.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 
 #define check_array_bounds(display, a, i) drm_WARN_ON((display)->drm, (i) >= ARRAY_SIZE(a))
 
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 98a61a7b0b93..fcc88e677e47 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -11,13 +11,13 @@
 #include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
-#include "intel_atomic_plane.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_plane.h"
 
 static struct i915_vma *
 intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
similarity index 99%
rename from drivers/gpu/drm/i915/display/intel_atomic_plane.c
rename to drivers/gpu/drm/i915/display/intel_plane.c
index 15ede7678636..f079963c5dff 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -45,7 +45,6 @@
 #include "i915_scheduler_types.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
-#include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_cursor.h"
 #include "intel_display_rps.h"
@@ -53,6 +52,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_plane.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
similarity index 97%
rename from drivers/gpu/drm/i915/display/intel_atomic_plane.h
rename to drivers/gpu/drm/i915/display/intel_plane.h
index 317320c32285..1dd32586ac16 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_plane.h
@@ -3,8 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#ifndef __INTEL_ATOMIC_PLANE_H__
-#define __INTEL_ATOMIC_PLANE_H__
+#ifndef __INTEL_PLANE_H__
+#define __INTEL_PLANE_H__
 
 #include <linux/types.h>
 
@@ -94,4 +94,4 @@ bool intel_plane_format_mod_supported_async(struct drm_plane *plane,
 					    u32 format,
 					    u64 modifier);
 
-#endif /* __INTEL_ATOMIC_PLANE_H__ */
+#endif /* __INTEL_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 8800a657cd21..2194d39a5c98 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -6,13 +6,13 @@
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
-#include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_plane_initial.h"
 
 void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index fd92e6b89b43..db0c48d0c743 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -41,11 +41,11 @@
 
 #include "i915_utils.h"
 #include "i9xx_plane.h"
-#include "intel_atomic_plane.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_sprite.h"
 #include "intel_sprite_regs.h"
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 2aa64482d44b..9c8dac97cc40 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -9,9 +9,7 @@
 #include <drm/drm_fourcc.h>
 
 #include "pxp/intel_pxp.h"
-
 #include "i915_drv.h"
-#include "intel_atomic_plane.h"
 #include "intel_bo.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -21,6 +19,7 @@
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2c2371574d6f..c2e11d9ee652 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -13,7 +13,6 @@
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
-#include "intel_atomic_plane.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_crtc.h"
@@ -27,6 +26,7 @@
 #include "intel_fb.h"
 #include "intel_fixed.h"
 #include "intel_pcode.h"
+#include "intel_plane.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index f5f5775acdc0..40d01751b49e 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -205,7 +205,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/icl_dsi.o \
 	i915-display/intel_alpm.o \
 	i915-display/intel_atomic.o \
-	i915-display/intel_atomic_plane.o \
 	i915-display/intel_audio.o \
 	i915-display/intel_backlight.o \
 	i915-display/intel_bios.o \
@@ -271,6 +270,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_modeset_verify.o \
 	i915-display/intel_panel.o \
 	i915-display/intel_pfit.o \
+	i915-display/intel_plane.o \
 	i915-display/intel_pmdemand.o \
 	i915-display/intel_pch.o \
 	i915-display/intel_pps.o \
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index af47ce34102c..b2ede3af9345 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -10,7 +10,6 @@
 #include "xe_ggtt.h"
 #include "xe_mmio.h"
 
-#include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
@@ -19,6 +18,7 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
+#include "intel_plane.h"
 #include "intel_plane_initial.h"
 #include "xe_bo.h"
 #include "xe_wa.h"
-- 
2.39.5

