Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736A8D3DB0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5332410EDA5;
	Wed, 29 May 2024 17:49:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LV3fZ6KB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DE710ED5C;
 Wed, 29 May 2024 17:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004939; x=1748540939;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NHUJqpnXJzem8AmZTQFUnTECiCkL5bmKCGU7M7ceJQU=;
 b=LV3fZ6KB8k/RuU6U/Abajge2Z/SFI2gJi3TzcbED97cYOmFqXeSitcKd
 64GIjQwEZN4HE+elAYQ52Zmbk45sbS8AILKmNPJxox5/HuAfuUMYEZcfQ
 SurKoFsWgMjhopbCcmFWEgh1Ck9c8ELq5/YhhWjrUAiYGEhnr1HGOMUlT
 7xM4G6669r+qJybDcUpFkrk0F02m3tBWvU5ysAn/vQTlVDR65i48PZcU4
 VIFvGaWZ3oO5dE+Cut9l80MaiZTv3h5mZ4e0IU2/0ZBAuEaCozGYEERZo
 fV/N9XyP61Z6n5vUh8YJK+rbrs5WHEnG/FBIk/8ytgcJvnbrwrIkm2+fp w==;
X-CSE-ConnectionGUID: 4cWX05G3RAKpyHDMnu06BA==
X-CSE-MsgGUID: XnPyWf/2R8iSlOz6roO7ow==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="16378507"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="16378507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:59 -0700
X-CSE-ConnectionGUID: xH09zw3hRZ6vjXRRBwExgg==
X-CSE-MsgGUID: 9T70vOJ1Q4uLYPZipO/slA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66393687"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:48:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 10/10] drm/xe/display: drop i915_drv.h include from xe code
Date: Wed, 29 May 2024 20:48:14 +0300
Message-Id: <bb490f3e928fd8178277fde2435de80638fc5715.1717004739.git.jani.nikula@intel.com>
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

Drop i915_drv.h include from xe display code as much as possible, and
switch to xe types where necessary.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/ext/i915_irq.c     |  1 -
 drivers/gpu/drm/xe/display/intel_fb_bo.c      |  5 ++---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 17 ++++++++---------
 drivers/gpu/drm/xe/display/xe_dsb_buffer.c    |  9 ++++-----
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 -
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 18 ++++++++----------
 6 files changed, 22 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
index bee191a4a97d..eb40f1cb44f6 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
@@ -3,7 +3,6 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_uncore.h"
diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
index b89cda053d2c..f835492f73fb 100644
--- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
+++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
@@ -6,7 +6,6 @@
 #include <drm/drm_modeset_helper.h>
 #include <drm/ttm/ttm_bo.h>
 
-#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_fb_bo.h"
 #include "xe_bo.h"
@@ -26,7 +25,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 				 struct xe_bo *bo,
 				 struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	struct drm_i915_private *i915 = to_i915(bo->ttm.base.dev);
+	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
 	int ret;
 
 	xe_bo_get(bo);
@@ -42,7 +41,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
 		 * mode when the boect is VM_BINDed, so we can only set
 		 * coherency with display when unbound.
 		 */
-		if (XE_IOCTL_DBG(i915, !list_empty(&bo->ttm.base.gpuva.list))) {
+		if (XE_IOCTL_DBG(xe, !list_empty(&bo->ttm.base.gpuva.list))) {
 			ttm_bo_unreserve(&bo->ttm);
 			ret = -EINVAL;
 			goto err;
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 5ecc7d467934..3a2f3a5ac2f9 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -5,7 +5,6 @@
 
 #include <drm/drm_fb_helper.h>
 
-#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_fbdev_fb.h"
 #include "xe_bo.h"
@@ -17,7 +16,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 {
 	struct drm_framebuffer *fb;
 	struct drm_device *dev = helper->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct xe_device *xe = to_xe_device(dev);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
 	int size;
@@ -38,26 +37,26 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
-	if (!IS_DGFX(dev_priv)) {
-		obj = xe_bo_create_pin_map(dev_priv, xe_device_get_root_tile(dev_priv),
+	if (!IS_DGFX(xe)) {
+		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 					   NULL, size,
 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
 					   XE_BO_FLAG_STOLEN |
 					   XE_BO_FLAG_PINNED);
 		if (!IS_ERR(obj))
-			drm_info(&dev_priv->drm, "Allocated fbdev into stolen\n");
+			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
 		else
-			drm_info(&dev_priv->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
+			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
 	}
 	if (IS_ERR(obj)) {
-		obj = xe_bo_create_pin_map(dev_priv, xe_device_get_root_tile(dev_priv), NULL, size,
+		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
 					  ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
-					  XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(dev_priv)) |
+					  XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
 					  XE_BO_FLAG_PINNED);
 	}
 
 	if (IS_ERR(obj)) {
-		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
+		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
 		fb = ERR_PTR(-ENOMEM);
 		goto err;
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
index 44c9fd2143cc..9e860c61f4b3 100644
--- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
+++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
@@ -3,7 +3,6 @@
  * Copyright 2023, Intel Corporation.
  */
 
-#include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_display_types.h"
 #include "intel_dsb_buffer.h"
@@ -34,18 +33,18 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
 
 bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	struct drm_i915_gem_object *obj;
+	struct xe_device *xe = to_xe_device(crtc->base.dev);
+	struct xe_bo *obj;
 	struct i915_vma *vma;
 
 	vma = kzalloc(sizeof(*vma), GFP_KERNEL);
 	if (!vma)
 		return false;
 
-	obj = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915),
+	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
 				   NULL, PAGE_ALIGN(size),
 				   ttm_bo_type_kernel,
-				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(i915)) |
+				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
 				   XE_BO_FLAG_GGTT);
 	if (IS_ERR(obj)) {
 		kfree(vma);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 0449cdb892f3..a2f417209124 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -5,7 +5,6 @@
 
 #include <drm/ttm/ttm_bo.h>
 
-#include "i915_drv.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 7672a0cffbd8..e135b20962d9 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -9,7 +9,6 @@
 #include "regs/xe_gtt_defs.h"
 #include "xe_ggtt.h"
 
-#include "i915_drv.h"
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
@@ -25,10 +24,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 			      const struct intel_initial_plane_config plane_configs[],
 			      struct drm_framebuffer **fb)
 {
-	struct drm_i915_private *i915 = to_i915(this->base.dev);
+	struct xe_device *xe = to_xe_device(this->base.dev);
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(&xe->drm, crtc) {
 		struct intel_plane *plane =
 			to_intel_plane(crtc->base.primary);
 		const struct intel_plane_state *plane_state =
@@ -135,8 +134,7 @@ static bool
 intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 			      struct intel_initial_plane_config *plane_config)
 {
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct xe_device *xe = to_xe_device(crtc->base.dev);
 	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct xe_bo *bo;
@@ -148,9 +146,9 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	case I915_FORMAT_MOD_4_TILED:
 		break;
 	default:
-		drm_dbg(&dev_priv->drm,
-			"Unsupported modifier for initial FB: 0x%llx\n",
-			fb->modifier);
+		drm_dbg_kms(&xe->drm,
+			    "Unsupported modifier for initial FB: 0x%llx\n",
+			    fb->modifier);
 		return false;
 	}
 
@@ -161,13 +159,13 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	mode_cmd.modifier[0] = fb->modifier;
 	mode_cmd.flags = DRM_MODE_FB_MODIFIERS;
 
-	bo = initial_plane_bo(dev_priv, plane_config);
+	bo = initial_plane_bo(xe, plane_config);
 	if (!bo)
 		return false;
 
 	if (intel_framebuffer_init(to_intel_framebuffer(fb),
 				   bo, &mode_cmd)) {
-		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
+		drm_dbg_kms(&xe->drm, "intel fb init failed\n");
 		goto err_bo;
 	}
 	/* Reference handed over to fb */
-- 
2.39.2

