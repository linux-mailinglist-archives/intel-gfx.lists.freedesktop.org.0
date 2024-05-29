Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D5C8D3DA9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5B210E82E;
	Wed, 29 May 2024 17:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOCQ25YR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896E010E52D;
 Wed, 29 May 2024 17:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004917; x=1748540917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FH7XHQl4ZANo7/L3rdIUmSTdLa95XHqcLFevEG0i8IY=;
 b=TOCQ25YRUvEdBAV6zeMBsboKnGrATU+2bk81DkdR/Z2dUwC6HARQPU5U
 4Mn7C7HPFDSk2HvE+IL5wP+b6Y9o8xpuRHUAZrfzQ7oHvVgW2UpXlqOt4
 7/OfNwl8vETrusZEp2EziPUQhehmkN/QgQG0ekawn4DySsO/5Cd6CGCGe
 9d1jkeB4e2PaPWpN+tV8arwdZJyP77yQh+PtQPeyItDggaL5MuiylN0BI
 Ja5Rjh0Wv8pYf00YivwNcLLUF9ppQmvFOffGsy652IgIYptyEXa2dTh8S
 yFbZku/Jr2Omx9FiwiHZLgWgvd0ULTtI0hOvgm3b3IPywa2WEi81lDhDA g==;
X-CSE-ConnectionGUID: NbasqaZNTEKn7n4k27zIDw==
X-CSE-MsgGUID: Fpc3dTEYRkGDn+toDTVgkQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="16378353"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="16378353"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:36 -0700
X-CSE-ConnectionGUID: mb+ZyLLQTPmB31w2tMNlSg==
X-CSE-MsgGUID: +idQV3etSaanq07Keb3hxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66393584"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 06/10] drm/i915/display: include xe_bo.h,
 gem_object_types etc. where needed
Date: Wed, 29 May 2024 20:48:10 +0300
Message-Id: <e9ca3d6127ea22f252d9dbf30cfde99e37538c99.1717004739.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717004739.git.jani.nikula@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
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

Include what you use. The dependencies on the headers, and what they
include, is a bit convoluted. Add xe compat gem/gem_object_types.h. Fix
all the places needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c     |  1 +
 drivers/gpu/drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c               |  1 +
 drivers/gpu/drm/i915/display/intel_fbdev.c            |  1 +
 .../compat-i915-headers/gem/i915_gem_object_types.h   | 11 +++++++++++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h     |  4 ----
 drivers/gpu/drm/xe/display/intel_fb_bo.c              |  2 ++
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c           |  9 ++++-----
 drivers/gpu/drm/xe/display/xe_fb_pin.c                |  5 +++--
 drivers/gpu/drm/xe/display/xe_plane_initial.c         |  1 +
 10 files changed, 25 insertions(+), 11 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a2a827070c33..1143ba5b4f7c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -32,6 +32,7 @@
  */
 
 #include <linux/dma-fence-chain.h>
+#include <linux/dma-resv.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_gem_atomic_helper.h>
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6fbfe8a18f45..4de86e299c91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -47,6 +47,7 @@
 #include <drm/i915_hdcp_interface.h>
 #include <media/cec-notifier.h>
 
+#include "gem/i915_gem_object_types.h" /* for to_intel_bo() */
 #include "i915_vma.h"
 #include "i915_vma_types.h"
 #include "intel_bios.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b6638726949d..8069abf91c5e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -9,6 +9,7 @@
 #include <linux/dma-fence.h>
 #include <linux/dma-resv.h>
 
+#include "gem/i915_gem_object.h"
 #include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 5ad0b4c8a0fd..37ae176bfeb0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -44,6 +44,7 @@
 #include <drm/drm_gem_framebuffer_helper.h>
 
 #include "gem/i915_gem_mman.h"
+#include "gem/i915_gem_object.h"
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
new file mode 100644
index 000000000000..7d6bb1abab73
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __I915_GEM_OBJECT_TYPES_H__
+#define __I915_GEM_OBJECT_TYPES_H__
+
+#include "xe_bo.h"
+
+#define to_intel_bo(x) gem_to_xe_bo((x))
+
+#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 3e930ce25c90..7b3f53427b03 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -12,11 +12,8 @@
 
 #include <drm/drm_drv.h>
 
-#include "gem/i915_gem_object.h"
-
 #include "soc/intel_pch.h"
 #include "xe_device.h"
-#include "xe_bo.h"
 #include "xe_pm.h"
 #include "i915_reg_defs.h"
 #include "i915_utils.h"
@@ -113,7 +110,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_RAPTORLAKE_U(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_ALDERLAKE_P_RPLU)
 #define IS_ICL_WITH_PORT_F(xe) (xe && 0)
 #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
-#define to_intel_bo(x) gem_to_xe_bo((x))
 
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index e18521acc516..b89cda053d2c 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -4,10 +4,12 @@
  */
 
 #include <drm/drm_modeset_helper.h>
+#include <drm/ttm/ttm_bo.h>
 
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_fb_bo.h"
+#include "xe_bo.h"
 
 void intel_fb_bo_framebuffer_fini(struct xe_bo *bo)
 {
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index f6bf5896ff1b..5ecc7d467934 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -3,15 +3,14 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "intel_fbdev_fb.h"
-
 #include <drm/drm_fb_helper.h>
 
-#include "xe_gt.h"
-#include "xe_ttm_stolen_mgr.h"
-
 #include "i915_drv.h"
 #include "intel_display_types.h"
+#include "intel_fbdev_fb.h"
+#include "xe_bo.h"
+#include "xe_gt.h"
+#include "xe_ttm_stolen_mgr.h"
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 36e15c4961c1..0449cdb892f3 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -3,17 +3,18 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <drm/ttm/ttm_bo.h>
+
 #include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
+#include "xe_bo.h"
 #include "xe_ggtt.h"
 #include "xe_gt.h"
 #include "xe_pm.h"
 
-#include <drm/ttm/ttm_bo.h>
-
 static void
 write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
 		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 9eaa29e733e1..7672a0cffbd8 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -18,6 +18,7 @@
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
 #include "intel_plane_initial.h"
+#include "xe_bo.h"
 
 static bool
 intel_reuse_initial_plane_obj(struct intel_crtc *this,
-- 
2.39.2

