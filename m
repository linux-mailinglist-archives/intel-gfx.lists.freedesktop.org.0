Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F76C631A9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DFD910E02A;
	Mon, 17 Nov 2025 09:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/WgM1f1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31223895CA;
 Mon, 17 Nov 2025 09:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371002; x=1794907002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SMRIsyFyvgtxFASz1T+Kb/H3gchvVRfM7xyepgOHItg=;
 b=C/WgM1f1E5yaM/4gRMnt+39bYrEma6U0g8gwkTcajj0YU2V9oWYXgrwm
 wFj17ZZzEp/PJ89odDwr1B1UAGI4qJQzlfz4GNutxX+R0h4GS5cX9v2Y1
 YfYJFdsh9wiB4MT2NtobpsLg0Z7HeLjYyD7a7jnX6HERppu90trjjnUv7
 hlx/DElPSo0RQZvGNEmf9ogdx22pGeEbrMdURw/dRjeic4fYhsrRppnhJ
 x+HJ9kE/bT53BZogta4IZoKCnTUxTvJuKhq1PRPZcIRxNsXk6nQXDTPCX
 bdA8mlv9de65fbrkQQi3sebZmF7AggbN47e8WEGRjWKIbROXXFuOwvE1H g==;
X-CSE-ConnectionGUID: 13yQbyQIQ+G5KeahSEP47g==
X-CSE-MsgGUID: F5+xrdjnQPySIFvEUtLrpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="68985785"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="68985785"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:42 -0800
X-CSE-ConnectionGUID: xPU86fKMR4GKYONQ2uYtrA==
X-CSE-MsgGUID: tDwUHhk0Tpuzo6aS2jV8TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190840325"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 04/10] drm/i915: add .vgpu_active to parent interface
Date: Mon, 17 Nov 2025 11:16:11 +0200
Message-ID: <a2d4043ebaaf8f69bb738d5d1332afd2847550ad.1763370931.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763370930.git.jani.nikula@intel.com>
References: <cover.1763370930.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add .vgpu_active() to display parent interface, removing more
dependencies on struct drm_i915_private, i915_drv.h, and i915_vgpu.h.

This also allows us to remove the xe compat i915_vgpu.h.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c      |  6 ++----
 drivers/gpu/drm/i915/display/intel_fbc.c       |  5 ++---
 drivers/gpu/drm/i915/display/intel_parent.c    |  5 +++++
 drivers/gpu/drm/i915/display/intel_parent.h    |  2 ++
 drivers/gpu/drm/i915/i915_driver.c             |  6 ++++++
 .../gpu/drm/xe/compat-i915-headers/i915_vgpu.h | 18 ------------------
 include/drm/intel/display_parent_interface.h   |  3 +++
 7 files changed, 20 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 9d2a23c96c61..153ff4b4b52c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -13,8 +13,6 @@
 #include <drm/drm_vblank.h>
 #include <drm/drm_vblank_work.h>
 
-#include "i915_drv.h"
-#include "i915_vgpu.h"
 #include "i9xx_plane.h"
 #include "icl_dsi.h"
 #include "intel_atomic.h"
@@ -28,6 +26,7 @@
 #include "intel_drrs.h"
 #include "intel_dsi.h"
 #include "intel_fifo_underrun.h"
+#include "intel_parent.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
@@ -671,7 +670,6 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	int scanline_end = intel_get_crtc_scanline(crtc);
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 	ktime_t end_vbl_time = ktime_get();
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
@@ -737,7 +735,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 
 	local_irq_enable();
 
-	if (intel_vgpu_active(dev_priv))
+	if (intel_parent_vgpu_active(display))
 		goto out;
 
 	if (crtc->debug.start_vbl_count &&
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 437d2fda20a7..ab0bcea5aa89 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -50,7 +50,6 @@
 #include "gt/intel_gt_types.h"
 
 #include "i915_drv.h"
-#include "i915_vgpu.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_de.h"
@@ -64,6 +63,7 @@
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
+#include "intel_parent.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
@@ -1485,7 +1485,6 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 				 struct intel_plane *plane)
 {
 	struct intel_display *display = to_intel_display(state->base.dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
@@ -1501,7 +1500,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (intel_vgpu_active(i915)) {
+	if (intel_parent_vgpu_active(display)) {
 		plane_state->no_fbc_reason = "VGPU active";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 375713f6f411..3786fd42827d 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -31,3 +31,8 @@ void intel_parent_irq_synchronize(struct intel_display *display)
 {
 	display->parent->irq->synchronize(display->drm);
 }
+
+bool intel_parent_vgpu_active(struct intel_display *display)
+{
+	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 3ade493f1008..222c95836d35 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -11,4 +11,6 @@ struct intel_display;
 bool intel_parent_irq_enabled(struct intel_display *display);
 void intel_parent_irq_synchronize(struct intel_display *display);
 
+bool intel_parent_vgpu_active(struct intel_display *display);
+
 #endif /* __INTEL_PARENT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 07715aef62d3..f21f1919a225 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -739,9 +739,15 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
 }
 
+static bool vgpu_active(struct drm_device *drm)
+{
+	return intel_vgpu_active(to_i915(drm));
+}
+
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
+	.vgpu_active = vgpu_active,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
deleted file mode 100644
index 4931c7198f13..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vgpu.h
+++ /dev/null
@@ -1,18 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef _I915_VGPU_H_
-#define _I915_VGPU_H_
-
-#include <linux/types.h>
-
-struct drm_i915_private;
-
-static inline bool intel_vgpu_active(struct drm_i915_private *i915)
-{
-	return false;
-}
-
-#endif /* _I915_VGPU_H_ */
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 3a008a18eb65..f3834f36ce74 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -48,6 +48,9 @@ struct intel_display_parent_interface {
 
 	/** @irq: IRQ interface */
 	const struct intel_display_irq_interface *irq;
+
+	/** @vgpu_active: Is vGPU active? Optional. */
+	bool (*vgpu_active)(struct drm_device *drm);
 };
 
 #endif
-- 
2.47.3

