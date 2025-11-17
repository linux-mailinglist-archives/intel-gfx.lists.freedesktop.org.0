Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE65C631C9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:17:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B79610E336;
	Mon, 17 Nov 2025 09:17:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gKg1piIP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C182810E336;
 Mon, 17 Nov 2025 09:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371026; x=1794907026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ntvbdal/t/iq99CXtPyHGvCJ62dUL2A/UO7hYiYdOV8=;
 b=gKg1piIP29o2omlv70CpRaSrfTgEK+OkRLufc74zPLjperxmijeJy1xh
 hndyt3vO17CPI5EjE3fb5qvlpOOS4gUiO19usmf4qEhVR243T39hYVGGU
 s+Z3ZugpgqrW+d9F6rWpYCJGOBIw6+5kh3/EL7A2p7WZqQeQ1cPhZsFVf
 IK0kWB5KuaGATu+7ezZLsaogtuWWbs1GCKD/m9Rp0ALBjai9ndGcHFkFu
 WSDlVGMKo5D0nIjN38TBJqTVjlUrR7YlCxHhYGwfgPpUSwNvjzSBdUNp8
 BBPJ/81BwN57cVjdnNVdcOvqMxepqsJWw/Myw4CFowYfdYi+7Ic4eLBAs w==;
X-CSE-ConnectionGUID: oPanW0aOSFS+7bXTCGnGiQ==
X-CSE-MsgGUID: UtLXLwA5QJS6suj2JoVaEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="64367511"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="64367511"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:06 -0800
X-CSE-ConnectionGUID: J6S1fgsrQ16sIaVO9b2jCg==
X-CSE-MsgGUID: AXLCmDsZRC6lo/CadoBFQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="189648262"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:17:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 09/10] drm/i915: add .fence_priority_display to parent interface
Date: Mon, 17 Nov 2025 11:16:16 +0200
Message-ID: <c7782862956e3aa59eaeb6dcf80906c1fc063ae1.1763370931.git.jani.nikula@intel.com>
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

Add .fence_priority_display() to display parent interface, removing a
display dependency on gem/i915_gem_object.h.

This allows us to remove the xe compat gem/i915_gem_object.h.

v2: Don't mix this with the rps interface (Ville)

v3: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_parent.c         |  6 ++++++
 drivers/gpu/drm/i915/display/intel_parent.h         |  2 ++
 drivers/gpu/drm/i915/display/intel_plane.c          |  5 ++---
 drivers/gpu/drm/i915/i915_driver.c                  |  7 +++++++
 .../xe/compat-i915-headers/gem/i915_gem_object.h    | 13 -------------
 include/drm/intel/display_parent_interface.h        |  3 +++
 6 files changed, 20 insertions(+), 16 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h

diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 6c131196718e..27c7ef34ce48 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -64,3 +64,9 @@ bool intel_parent_has_fenced_regions(struct intel_display *display)
 {
 	return display->parent->has_fenced_regions && display->parent->has_fenced_regions(display->drm);
 }
+
+void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
+{
+	if (display->parent->fence_priority_display)
+		display->parent->fence_priority_display(fence);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 12cfbea95aa1..a8ca40b57ea9 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -21,4 +21,6 @@ bool intel_parent_vgpu_active(struct intel_display *display);
 
 bool intel_parent_has_fenced_regions(struct intel_display *display);
 
+void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence);
+
 #endif /* __INTEL_PARENT_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 5105e3278bc4..a7fec5ba6ac0 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -45,7 +45,6 @@
 #include <drm/drm_panic.h>
 #include <drm/drm_print.h>
 
-#include "gem/i915_gem_object.h"
 #include "i9xx_plane_regs.h"
 #include "intel_cdclk.h"
 #include "intel_cursor.h"
@@ -56,6 +55,7 @@
 #include "intel_fb_pin.h"
 #include "intel_fbdev.h"
 #include "intel_panic.h"
+#include "intel_parent.h"
 #include "intel_plane.h"
 #include "intel_psr.h"
 #include "skl_scaler.h"
@@ -1180,8 +1180,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		goto unpin_fb;
 
 	if (new_plane_state->uapi.fence) {
-		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
-
+		intel_parent_fence_priority_display(display, new_plane_state->uapi.fence);
 		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
 						     new_plane_state->uapi.fence);
 	}
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7e1dedabf0ee..7c60b6873934 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -750,12 +750,19 @@ static bool has_fenced_regions(struct drm_device *drm)
 	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
 }
 
+static void fence_priority_display(struct dma_fence *fence)
+{
+	if (dma_fence_is_i915(fence))
+		i915_gem_fence_wait_priority_display(fence);
+}
+
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.rps = &i915_display_rps_interface,
 	.vgpu_active = vgpu_active,
 	.has_fenced_regions = has_fenced_regions,
+	.fence_priority_display = fence_priority_display,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
deleted file mode 100644
index 0548b2e0316f..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2025 Intel Corporation */
-
-#ifndef __I915_GEM_OBJECT_H__
-#define __I915_GEM_OBJECT_H__
-
-struct dma_fence;
-
-static inline void i915_gem_fence_wait_priority_display(struct dma_fence *fence)
-{
-}
-
-#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index 0a6a26234fbe..4135d1e1a67e 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -64,6 +64,9 @@ struct intel_display_parent_interface {
 
 	/** @has_fenced_regions: Support legacy fencing? Optional. */
 	bool (*has_fenced_regions)(struct drm_device *drm);
+
+	/** @fence_priority_display: Set display priority. Optional. */
+	void (*fence_priority_display)(struct dma_fence *fence);
 };
 
 #endif
-- 
2.47.3

