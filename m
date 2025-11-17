Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93329C631AC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 10:16:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3080F10E321;
	Mon, 17 Nov 2025 09:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RdQvxDqg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC97F10E32A;
 Mon, 17 Nov 2025 09:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763371007; x=1794907007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lcJqmefaVfd37FkHR8UaFp3tHVIy1+CXqhiK+j8JPak=;
 b=RdQvxDqgKlKMhqTE1QaGVBBeSvxSgzVEog/cVB6QJM2uNR9eTghIB7di
 fea9AmYUc7Wy4lfgIagrUWdtbBNDrM8HThyqgixPksLCbWC/gVasLyJnI
 RQY66+f/FZyaLLz2JY80zrC/t74Aw/3W/U4g6mw33aV+1PvgQFOb1cnFT
 oBNMsebeN7d0gYs1uXrBgSntKrUXBIJlBDW1p886ncTEbKzrlWjPKYmqV
 dSg6tWc57qtpQgmc8EE4E61EUbMPAETJZ7QRpp2ahv7Bcz+wt6JOm1m1i
 ECNUob6SkM8XYurtwb6N17IXHumgmolVWAeCcsZro6obn2kD6pH2La6iA Q==;
X-CSE-ConnectionGUID: /xdBfAeIQiuk8Mqn0xpFlw==
X-CSE-MsgGUID: bfRxwjoWSMWmll9A4N2L9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="68985788"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="68985788"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:47 -0800
X-CSE-ConnectionGUID: f1+dtrFqQFWQl3oBUAVryg==
X-CSE-MsgGUID: IE9p3hgsSoWb+i09hKX5/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190840340"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 01:16:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 05/10] drm/i915: add .has_fenced_regions to parent interface
Date: Mon, 17 Nov 2025 11:16:12 +0200
Message-ID: <309f61a8742c3bf731c820b2f9e1024143db8598.1763370931.git.jani.nikula@intel.com>
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

Add .has_fenced_regions() to display parent interface, removing more
dependencies on struct drm_i915_private, i915_drv.h, and
gt/intel_gt_types.h.

This allows us to remove the xe compat gt/intel_gt_types.h.

v2: s/fence_support_legacy/has_fenced_regions/ (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c              |  8 ++------
 drivers/gpu/drm/i915/display/intel_parent.c           |  5 +++++
 drivers/gpu/drm/i915/display/intel_parent.h           |  2 ++
 drivers/gpu/drm/i915/i915_driver.c                    |  6 ++++++
 .../drm/xe/compat-i915-headers/gt/intel_gt_types.h    | 11 -----------
 include/drm/intel/display_parent_interface.h          |  3 +++
 6 files changed, 18 insertions(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ab0bcea5aa89..2facd368a068 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -47,9 +47,6 @@
 
 #include "gem/i915_gem_stolen.h"
 
-#include "gt/intel_gt_types.h"
-
-#include "i915_drv.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_de.h"
@@ -64,6 +61,7 @@
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
 #include "intel_parent.h"
+#include "intel_step.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
@@ -267,9 +265,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 
 static bool intel_fbc_has_fences(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
-
-	return intel_gt_support_legacy_fencing(to_gt(i915));
+	return intel_parent_has_fenced_regions(display);
 }
 
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 3786fd42827d..535065e57213 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -36,3 +36,8 @@ bool intel_parent_vgpu_active(struct intel_display *display)
 {
 	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
 }
+
+bool intel_parent_has_fenced_regions(struct intel_display *display)
+{
+	return display->parent->has_fenced_regions && display->parent->has_fenced_regions(display->drm);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 222c95836d35..04320d937777 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -13,4 +13,6 @@ void intel_parent_irq_synchronize(struct intel_display *display);
 
 bool intel_parent_vgpu_active(struct intel_display *display);
 
+bool intel_parent_has_fenced_regions(struct intel_display *display);
+
 #endif /* __INTEL_PARENT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f21f1919a225..9ba46850da72 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -744,10 +744,16 @@ static bool vgpu_active(struct drm_device *drm)
 	return intel_vgpu_active(to_i915(drm));
 }
 
+static bool has_fenced_regions(struct drm_device *drm)
+{
+	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
+}
+
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.vgpu_active = vgpu_active,
+	.has_fenced_regions = has_fenced_regions,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
deleted file mode 100644
index c15806d6c4f7..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_GT_TYPES__
-#define __INTEL_GT_TYPES__
-
-#define intel_gt_support_legacy_fencing(gt) 0
-
-#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index f3834f36ce74..927d964f2071 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -51,6 +51,9 @@ struct intel_display_parent_interface {
 
 	/** @vgpu_active: Is vGPU active? Optional. */
 	bool (*vgpu_active)(struct drm_device *drm);
+
+	/** @has_fenced_regions: Support legacy fencing? Optional. */
+	bool (*has_fenced_regions)(struct drm_device *drm);
 };
 
 #endif
-- 
2.47.3

