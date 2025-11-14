Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979AFC5C90D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D9D710EA28;
	Fri, 14 Nov 2025 10:27:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKXHSKCR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D5110EA28;
 Fri, 14 Nov 2025 10:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116057; x=1794652057;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NkXHMuKV76d+uiyCWuZJ8ieKZO18cYbtJUqkLoZVqzY=;
 b=iKXHSKCRqWB3yS26rtiZrmEmdtjrOw11QBk7EDmQnDqZJ4ZXentDj56Z
 mawuJ4XqNBFFrPHpuewA94SgxxqwO/A6DiH7SGxt/6eYnapDr9ATms41a
 kGqLAkQk8vDlEE0E3SPdsh3M0a9oOHV50iXKwojP8v8pHp1e+KXLDvYXO
 XIUwCU3hdcufBbSk2WNYkMevLus7kcZkHpEWJAa2x2YSjMTRaK/1cYr4T
 Ql4Cf8Re88d6xDMmz/3eIis1rjTzrmJBJiL3aUI9+wyyma5JUPba0bIjg
 Qzf/O8kQ4pOL/Vj4WGrgKU/Cr+sR4y7SnBM6SdVpyd8MojlbnwEwHfcQF A==;
X-CSE-ConnectionGUID: l20zv0xbTu+x3t5SuS7iJw==
X-CSE-MsgGUID: IeBp8DJZSUmJ7KTZYE4Slg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64415907"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="64415907"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:37 -0800
X-CSE-ConnectionGUID: fDklgC6TR6aymDCgDGcMlw==
X-CSE-MsgGUID: UC6LhHjxS5yrZZDQRonSiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="193859738"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 09/10] drm/i915: add .fence_priority_display to parent
 interface
Date: Fri, 14 Nov 2025 12:26:48 +0200
Message-ID: <5deb93a8677005ce868cf1185c2d253e1311a9af.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
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

Add .fence_priority_display() to display parent interface, removing a
display dependency on gem/i915_gem_object.h.

This allows us to remove the xe compat gem/i915_gem_object.h.

v2: Don't mix this with the rps interface (Ville)

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
index 9370da9d215c..789bc11a324c 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -64,3 +64,9 @@ bool intel_parent_fence_support_legacy(struct intel_display *display)
 {
 	return display->parent->fence_support_legacy && display->parent->fence_support_legacy(display->drm);
 }
+
+void intel_parent_fence_priority_display(struct intel_display *display, struct dma_fence *fence)
+{
+	if (display->parent->fence_priority_display)
+		display->parent->fence_priority_display(fence);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 41d6943786fb..b3cce2c6b017 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -21,4 +21,6 @@ bool intel_parent_vgpu_active(struct intel_display *display);
 
 bool intel_parent_fence_support_legacy(struct intel_display *display);
 
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
index ac189b90f985..7cc74b76774a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -750,12 +750,19 @@ static bool fence_support_legacy(struct drm_device *drm)
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
 	.fence_support_legacy = fence_support_legacy,
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
index 2ea68a31224d..fd066309184d 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -64,6 +64,9 @@ struct intel_display_parent_interface {
 
 	/** @fence_support_legacy: Support legacy fencing? Optional. */
 	bool (*fence_support_legacy)(struct drm_device *drm);
+
+	/** @fence_priority_display: Set display priority. Optional. */
+	void (*fence_priority_display)(struct dma_fence *fence);
 };
 
 #endif
-- 
2.47.3

