Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B8EB8391D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A8CF10E683;
	Thu, 18 Sep 2025 08:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GxfYQnaY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27FB510E67C;
 Thu, 18 Sep 2025 08:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184883; x=1789720883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eRonBnXgRYUMfdJ8GAHIfFVRcpbEzZtaqHXIWd9Q2WM=;
 b=GxfYQnaYxQIjM4nX9IrQQlEnDDppgjmUeh05NQdaP5JHuj0A3DdFfgTI
 CQFutq2IVZPFYGOc0Ou/lqsveuye9hz65a1uXsnQ7sQxJJWrT3DdHgDX7
 7dSSQX0Z8fd4Rrf6ENOQvYCMiU/Q9JiHAhQkSlU++vTbbr+y9hGC7XUIl
 3MqwffSxEEC/2AN2OT+ypbtoP6Iaee5OfT6FQoLmu9uehP9N6l6AEUQW0
 agwSLxktcxzKr1d6DK2yedClGnQXdw+gmXNMDduhvw/UivwHLUADOeHtp
 X1MXIvAViFo3aVsbfOzzOh/WN1gniCUEYEwr1GWI2nzdYOViQbZAZg+BZ w==;
X-CSE-ConnectionGUID: xGTaYzrdT/uPx1ESvmJgtg==
X-CSE-MsgGUID: XkcCWWdyS3Cqd+E0VYD7UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932932"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:23 -0700
X-CSE-ConnectionGUID: J4terDYeRVGsfnthojlgFg==
X-CSE-MsgGUID: n1pta5vHSjGElf3yVOEOZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760708"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 03/10] drm/{i915,
 xe}/fbdev: pass struct drm_device to intel_fbdev_fb_alloc()
Date: Thu, 18 Sep 2025 11:40:53 +0300
Message-ID: <16360584f80cdc5ee35fd94cfd92fd3955588dfd.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

The function doesn't actually need struct drm_fb_helper for anything,
just pass struct drm_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 ++--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |  7 +++----
 4 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 7c4709d58aa3..46c6de5f6088 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -237,7 +237,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
 		drm_dbg_kms(display->drm,
 			    "no BIOS fb, allocating a new one\n");
-		fb = intel_fbdev_fb_alloc(helper, sizes);
+		fb = intel_fbdev_fb_alloc(display->drm, sizes);
 		if (IS_ERR(fb))
 			return PTR_ERR(fb);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index b9dfd00a7d05..4de13d1a4c7a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -13,11 +13,11 @@
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes)
 {
-	struct intel_display *display = to_intel_display(helper->dev);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_display *display = to_intel_display(drm);
+	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct drm_framebuffer *fb;
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
@@ -58,12 +58,12 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	}
 
 	if (IS_ERR(obj)) {
-		drm_err(display->drm, "failed to allocate framebuffer (%pe)\n", obj);
+		drm_err(drm, "failed to allocate framebuffer (%pe)\n", obj);
 		return ERR_PTR(-ENOMEM);
 	}
 
 	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
-				      drm_get_format_info(display->drm,
+				      drm_get_format_info(drm,
 							  mode_cmd.pixel_format,
 							  mode_cmd.modifier[0]),
 				      &mode_cmd);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index cb7957272715..668ae355f5e5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -6,14 +6,14 @@
 #ifndef __INTEL_FBDEV_FB_H__
 #define __INTEL_FBDEV_FB_H__
 
-struct drm_fb_helper;
+struct drm_device;
 struct drm_fb_helper_surface_size;
 struct drm_gem_object;
 struct fb_info;
 struct i915_vma;
 struct intel_display;
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index bce4cb16f682..5c0874bfa6ab 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -15,12 +15,11 @@
 
 #include <generated/xe_wa_oob.h>
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
+struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 					       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_framebuffer *fb;
-	struct drm_device *dev = helper->dev;
-	struct xe_device *xe = to_xe_device(dev);
+	struct xe_device *xe = to_xe_device(drm);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct xe_bo *obj;
 	int size;
@@ -67,7 +66,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	}
 
 	fb = intel_framebuffer_create(&obj->ttm.base,
-				      drm_get_format_info(dev,
+				      drm_get_format_info(drm,
 							  mode_cmd.pixel_format,
 							  mode_cmd.modifier[0]),
 				      &mode_cmd);
-- 
2.47.3

