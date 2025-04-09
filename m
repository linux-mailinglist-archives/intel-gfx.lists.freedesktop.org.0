Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03776A82E63
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CDC210E23E;
	Wed,  9 Apr 2025 18:18:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZkN1ZPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9835310E23E;
 Wed,  9 Apr 2025 18:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222696; x=1775758696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l9t08YBoh8DoaPHcxxIiDOhCAL+09ZBVZh/3wc11Mos=;
 b=fZkN1ZPXoe/WbfR23ynylZYcua0L/k8Z/+KNp/rdxjJ21Q/Z3AHexz1R
 VPs0wSOo7a1YJp6RqhIqP6xZFocGfZjCMeYoh5F5t5XUD651Q9sNW0CeE
 H9kMQpmseuDK33b2FdhRtoUu0nti9u6NFJg1iYQpszPTuOu89Oj26oWJS
 q3ZAVGrn9ZgzpUfiEsm+NXqHOvSl2wpwJcOp8ryU/87lKAEeWm5ZcykFd
 KI5w9THACFiooEvqazStu6bITlvhTTszKVRBZWEtgjq2qNPV3lU8UqpIl
 iZAJMWJzJFCZyDVH5d88haS/UEVuVyr+BvfFXtgKW27H7b25K9euR4YrR g==;
X-CSE-ConnectionGUID: fMB2nT60TkaRX9DcRO6I3Q==
X-CSE-MsgGUID: 6oUo1QrkS9y7qqALwvwoVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088322"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088322"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:15 -0700
X-CSE-ConnectionGUID: bbhg42YoSjCZ4ri0rzM/nw==
X-CSE-MsgGUID: wnGfrH4IQiSwVARFDsBucA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785287"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/14] drm/i915/fb: convert intel_fbdev.[ch] and
 intel_fbdev_fb.[ch] to struct intel_display
Date: Wed,  9 Apr 2025 21:17:42 +0300
Message-Id: <49651754f3716041f97984e47c15d331851870a5.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_fbdev.[ch] and as much as possible of
intel_fbdev_fb.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 74 +++++++++----------
 drivers/gpu/drm/i915/display/intel_fbdev.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 13 ++--
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +-
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |  6 +-
 6 files changed, 51 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index efee8925987e..7c65fc1cce34 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -525,7 +525,6 @@ int intel_display_driver_probe(struct intel_display *display)
 
 void intel_display_driver_register(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS,
 					       "i915 display info:");
 
@@ -552,7 +551,7 @@ void intel_display_driver_register(struct intel_display *display)
 	drm_kms_helper_poll_init(display->drm);
 	intel_hpd_poll_disable(display);
 
-	intel_fbdev_setup(i915);
+	intel_fbdev_setup(display);
 
 	intel_display_device_info_print(DISPLAY_INFO(display),
 					DISPLAY_RUNTIME_INFO(display), &p);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 369f46286e95..2dc4029d71ed 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -47,9 +47,9 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_bo.h"
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
@@ -66,9 +66,9 @@ struct intel_fbdev {
 
 static struct intel_fbdev *to_intel_fbdev(struct drm_fb_helper *fb_helper)
 {
-	struct drm_i915_private *i915 = to_i915(fb_helper->client.dev);
+	struct intel_display *display = to_intel_display(fb_helper->client.dev);
 
-	return i915->display.fbdev.fbdev;
+	return display->fbdev.fbdev;
 }
 
 static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbdev)
@@ -210,11 +210,9 @@ static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
 int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 				   struct drm_fb_helper_surface_size *sizes)
 {
+	struct intel_display *display = to_intel_display(helper->dev);
 	struct intel_fbdev *ifbdev = to_intel_fbdev(helper);
 	struct intel_framebuffer *fb = ifbdev->fb;
-	struct drm_device *dev = helper->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_display *display = to_intel_display(dev);
 	struct ref_tracker *wakeref;
 	struct fb_info *info;
 	struct i915_vma *vma;
@@ -228,7 +226,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	if (fb &&
 	    (sizes->fb_width > fb->base.width ||
 	     sizes->fb_height > fb->base.height)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "BIOS fb too small (%dx%d), we require (%dx%d),"
 			    " releasing it\n",
 			    fb->base.width, fb->base.height,
@@ -236,14 +234,14 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 		drm_framebuffer_put(&fb->base);
 		fb = NULL;
 	}
-	if (!fb || drm_WARN_ON(dev, !intel_fb_bo(&fb->base))) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
+		drm_dbg_kms(display->drm,
 			    "no BIOS fb, allocating a new one\n");
 		fb = intel_fbdev_fb_alloc(helper, sizes);
 		if (IS_ERR(fb))
 			return PTR_ERR(fb);
 	} else {
-		drm_dbg_kms(&dev_priv->drm, "re-using BIOS fb\n");
+		drm_dbg_kms(display->drm, "re-using BIOS fb\n");
 		prealloc = true;
 		sizes->fb_width = fb->base.width;
 		sizes->fb_height = fb->base.height;
@@ -267,7 +265,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	info = drm_fb_helper_alloc_info(helper);
 	if (IS_ERR(info)) {
-		drm_err(&dev_priv->drm, "Failed to allocate fb_info (%pe)\n", info);
+		drm_err(display->drm, "Failed to allocate fb_info (%pe)\n", info);
 		ret = PTR_ERR(info);
 		goto out_unpin;
 	}
@@ -279,11 +277,11 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	obj = intel_fb_bo(&fb->base);
 
-	ret = intel_fbdev_fb_fill_info(dev_priv, info, obj, vma);
+	ret = intel_fbdev_fb_fill_info(display, info, obj, vma);
 	if (ret)
 		goto out_unpin;
 
-	drm_fb_helper_fill_info(info, dev->fb_helper, sizes);
+	drm_fb_helper_fill_info(info, display->drm->fb_helper, sizes);
 
 	/* If the object is shmemfs backed, it will have given us zeroed pages.
 	 * If the object is stolen however, it will be full of whatever
@@ -294,7 +292,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
-	drm_dbg_kms(&dev_priv->drm, "allocated %dx%d fb: 0x%08x\n",
+	drm_dbg_kms(display->drm, "allocated %dx%d fb: 0x%08x\n",
 		    fb->base.width, fb->base.height,
 		    i915_ggtt_offset(vma));
 	ifbdev->fb = fb;
@@ -322,16 +320,15 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
  * Note we only support a single fb shared across pipes for boot (mostly for
  * fbcon), so we just find the biggest and use that.
  */
-static bool intel_fbdev_init_bios(struct drm_device *dev,
+static bool intel_fbdev_init_bios(struct intel_display *display,
 				  struct intel_fbdev *ifbdev)
 {
-	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_framebuffer *fb = NULL;
 	struct intel_crtc *crtc;
 	unsigned int max_size = 0;
 
 	/* Find the largest fb */
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
@@ -341,21 +338,21 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		struct drm_gem_object *obj = intel_fb_bo(plane_state->uapi.fb);
 
 		if (!crtc_state->uapi.active) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] not active, skipping\n",
 				    crtc->base.base.id, crtc->base.name);
 			continue;
 		}
 
 		if (!obj) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] no fb, skipping\n",
 				    plane->base.base.id, plane->base.name);
 			continue;
 		}
 
 		if (obj->size > max_size) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "found possible fb from [PLANE:%d:%s]\n",
 				    plane->base.base.id, plane->base.name);
 			fb = to_intel_framebuffer(plane_state->uapi.fb);
@@ -364,13 +361,13 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 	}
 
 	if (!fb) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "no active fbs found, not using BIOS config\n");
 		goto out;
 	}
 
 	/* Now make sure all the pipes will fit into it */
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
@@ -378,13 +375,13 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		unsigned int cur_size;
 
 		if (!crtc_state->uapi.active) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s] not active, skipping\n",
 				    crtc->base.base.id, crtc->base.name);
 			continue;
 		}
 
-		drm_dbg_kms(&i915->drm, "checking [PLANE:%d:%s] for BIOS fb\n",
+		drm_dbg_kms(display->drm, "checking [PLANE:%d:%s] for BIOS fb\n",
 			    plane->base.base.id, plane->base.name);
 
 		/*
@@ -395,7 +392,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc_state->uapi.adjusted_mode.crtc_hdisplay;
 		cur_size = cur_size * fb->base.format->cpp[0];
 		if (fb->base.pitches[0] < cur_size) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "fb not wide enough for [PLANE:%d:%s] (%d vs %d)\n",
 				    plane->base.base.id, plane->base.name,
 				    cur_size, fb->base.pitches[0]);
@@ -406,7 +403,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		cur_size = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
 		cur_size = intel_fb_align_height(&fb->base, 0, cur_size);
 		cur_size *= fb->base.pitches[0];
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "[CRTC:%d:%s] area: %dx%d, bpp: %d, size: %d\n",
 			    crtc->base.base.id, crtc->base.name,
 			    crtc_state->uapi.adjusted_mode.crtc_hdisplay,
@@ -415,7 +412,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 			    cur_size);
 
 		if (cur_size > max_size) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "fb not big enough for [PLANE:%d:%s] (%d vs %d)\n",
 				    plane->base.base.id, plane->base.name,
 				    cur_size, max_size);
@@ -423,14 +420,14 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 			break;
 		}
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "fb big enough [PLANE:%d:%s] (%d >= %d)\n",
 			    plane->base.base.id, plane->base.name,
 			    max_size, cur_size);
 	}
 
 	if (!fb) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "BIOS fb not suitable for all pipes, not using\n");
 		goto out;
 	}
@@ -440,7 +437,7 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 	drm_framebuffer_get(&ifbdev->fb->base);
 
 	/* Final pass to check if any active pipes don't have fbs */
-	for_each_intel_crtc(dev, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane *plane =
@@ -451,13 +448,13 @@ static bool intel_fbdev_init_bios(struct drm_device *dev,
 		if (!crtc_state->uapi.active)
 			continue;
 
-		drm_WARN(dev, !plane_state->uapi.fb,
+		drm_WARN(display->drm, !plane_state->uapi.fb,
 			 "re-used BIOS config but lost an fb on [PLANE:%d:%s]\n",
 			 plane->base.base.id, plane->base.name);
 	}
 
 
-	drm_dbg_kms(&i915->drm, "using BIOS fb for initial console\n");
+	drm_dbg_kms(display->drm, "using BIOS fb for initial console\n");
 	return true;
 
 out:
@@ -482,26 +479,25 @@ static unsigned int intel_fbdev_color_mode(const struct drm_format_info *info)
 	}
 }
 
-void intel_fbdev_setup(struct drm_i915_private *i915)
+void intel_fbdev_setup(struct intel_display *display)
 {
-	struct drm_device *dev = &i915->drm;
 	struct intel_fbdev *ifbdev;
 	unsigned int preferred_bpp = 0;
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	ifbdev = drmm_kzalloc(dev, sizeof(*ifbdev), GFP_KERNEL);
+	ifbdev = drmm_kzalloc(display->drm, sizeof(*ifbdev), GFP_KERNEL);
 	if (!ifbdev)
 		return;
 
-	i915->display.fbdev.fbdev = ifbdev;
-	if (intel_fbdev_init_bios(dev, ifbdev))
+	display->fbdev.fbdev = ifbdev;
+	if (intel_fbdev_init_bios(display, ifbdev))
 		preferred_bpp = intel_fbdev_color_mode(ifbdev->fb->base.format);
 	if (!preferred_bpp)
 		preferred_bpp = 32;
 
-	drm_client_setup_with_color_mode(dev, preferred_bpp);
+	drm_client_setup_with_color_mode(display->drm, preferred_bpp);
 }
 
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 89bad3a2b01a..a15e3e222a0c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -10,7 +10,7 @@
 
 struct drm_fb_helper;
 struct drm_fb_helper_surface_size;
-struct drm_i915_private;
+struct intel_display;
 struct intel_fbdev;
 struct intel_framebuffer;
 
@@ -19,14 +19,14 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 				   struct drm_fb_helper_surface_size *sizes);
 #define INTEL_FBDEV_DRIVER_OPS \
 	.fbdev_probe = intel_fbdev_driver_fbdev_probe
-void intel_fbdev_setup(struct drm_i915_private *dev_priv);
+void intel_fbdev_setup(struct intel_display *display);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
 struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
 
 #else
 #define INTEL_FBDEV_DRIVER_OPS \
 	.fbdev_probe = NULL
-static inline void intel_fbdev_setup(struct drm_i915_private *dev_priv)
+static inline void intel_fbdev_setup(struct intel_display *display)
 {
 }
 static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 4991c35a2632..5f4cb3328265 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -15,9 +15,9 @@
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes)
 {
+	struct intel_display *display = to_intel_display(helper->dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_framebuffer *fb;
-	struct drm_device *dev = helper->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
 	int size;
@@ -50,14 +50,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 		 *
 		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
+		if (!display->platform.meteorlake && size * 2 < dev_priv->dsm.usable_size)
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
 	}
 
 	if (IS_ERR(obj)) {
-		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
+		drm_err(display->drm, "failed to allocate framebuffer (%pe)\n", obj);
 		return ERR_PTR(-ENOMEM);
 	}
 
@@ -67,9 +67,10 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	return to_intel_framebuffer(fb);
 }
 
-int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
 	struct i915_gem_ww_ctx ww;
 	void __iomem *vaddr;
@@ -101,7 +102,7 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
 
 		vaddr = i915_vma_pin_iomap(vma);
 		if (IS_ERR(vaddr)) {
-			drm_err(&i915->drm,
+			drm_err(display->drm,
 				"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
 			ret = PTR_ERR(vaddr);
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index e502ae375fc0..cb7957272715 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -9,13 +9,13 @@
 struct drm_fb_helper;
 struct drm_fb_helper_surface_size;
 struct drm_gem_object;
-struct drm_i915_private;
 struct fb_info;
 struct i915_vma;
+struct intel_display;
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 					       struct drm_fb_helper_surface_size *sizes);
-int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
+int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 267f31697343..e8191562d122 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -79,11 +79,11 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	return ERR_CAST(fb);
 }
 
-int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info,
-			      struct drm_gem_object *_obj, struct i915_vma *vma)
+int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
+			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
 	struct xe_bo *obj = gem_to_xe_bo(_obj);
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
 	if (!(obj->flags & XE_BO_FLAG_SYSTEM)) {
 		if (obj->flags & XE_BO_FLAG_STOLEN)
-- 
2.39.5

