Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F64B42AF8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE0D10E92B;
	Wed,  3 Sep 2025 20:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9Ds0yt9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD04D10E91E;
 Wed,  3 Sep 2025 20:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931549; x=1788467549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cej7Hd6zLk3l3Efy3q7M+XtSzqZPExX4g6S2xygrho0=;
 b=F9Ds0yt96auqaIwoOCdfHHIZq8c6xl24sL0idOsLTHXybcq0PGQyjCTJ
 7r+R5NWa3K2Pi56ZOBFhqmsO1yfWuK4QzauVXEZhnQDk1YQOKsZYNkGUl
 QwEuVlQZ3iWpK++aH8voiErpJJgEk2JEWayQF6NXUwsdtCV0dYqs+X5cv
 IpkX42OFzROOt4fkfr4VNAn0XVV43EE0MQl4/1prRo9i6nCK0N9O5QQgj
 Wpq5YMB4qojvkMglYXYfobUWnNJpW6GqsQj1UsRFTG0sA7w9hnoHisPFE
 Ajmy9Stf+W5TMPw5QJi0BhBUnNsCMSlNrbl3kk51bILOoX1PygGJj4YwC w==;
X-CSE-ConnectionGUID: 0tB9tusDT6Gorg030sWkMA==
X-CSE-MsgGUID: XcGB8KkIQB6m9wtq6He8Og==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833126"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833126"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:29 -0700
X-CSE-ConnectionGUID: ijITJv+gSUafvDmH0e712g==
X-CSE-MsgGUID: qwULK1c+Q3K7sUHktXgNgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582448"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/9] drm/{i915,
 xe}/fbdev: deduplicate struct drm_mode_fb_cmd2 init
Date: Wed,  3 Sep 2025 23:32:00 +0300
Message-ID: <c4e4db130391ba8458dfe0cdfc4fa0238d917e20.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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

Pull struct drm_mode_fb_cmd2 initialization out of the driver dependent
code into shared display code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 32 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 24 ++++----------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 24 ++++----------
 4 files changed, 45 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 46c6de5f6088..5ac66fb88fcf 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -207,6 +207,35 @@ static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
 	.fb_set_suspend = intelfb_set_suspend,
 };
 
+static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
+				      struct drm_mode_fb_cmd2 *mode_cmd)
+{
+	/* we don't do packed 24bpp */
+	if (sizes->surface_bpp == 24)
+		sizes->surface_bpp = 32;
+
+	mode_cmd->width = sizes->surface_width;
+	mode_cmd->height = sizes->surface_height;
+
+	mode_cmd->pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8));
+	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
+							   sizes->surface_depth);
+}
+
+static struct intel_framebuffer *
+__intel_fbdev_fb_alloc(struct intel_display *display,
+		       struct drm_fb_helper_surface_size *sizes)
+{
+	struct drm_mode_fb_cmd2 mode_cmd = {};
+	struct intel_framebuffer *fb;
+
+	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
+
+	fb = intel_fbdev_fb_alloc(display->drm, &mode_cmd);
+
+	return fb;
+}
+
 int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 				   struct drm_fb_helper_surface_size *sizes)
 {
@@ -237,7 +266,8 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
 		drm_dbg_kms(display->drm,
 			    "no BIOS fb, allocating a new one\n");
-		fb = intel_fbdev_fb_alloc(display->drm, sizes);
+
+		fb = __intel_fbdev_fb_alloc(display, sizes);
 		if (IS_ERR(fb))
 			return PTR_ERR(fb);
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index d1c03d7b9bdc..4710859718a0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -3,7 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/drm_fb_helper.h>
+#include <linux/fb.h>
 
 #include "gem/i915_gem_lmem.h"
 
@@ -19,27 +19,15 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 }
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_fb_helper_surface_size *sizes)
+					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct intel_display *display = to_intel_display(drm);
 	struct drm_i915_private *dev_priv = to_i915(drm);
 	struct drm_framebuffer *fb;
-	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_i915_gem_object *obj;
 	int size;
 
-	/* we don't do packed 24bpp */
-	if (sizes->surface_bpp == 24)
-		sizes->surface_bpp = 32;
-
-	mode_cmd.width = sizes->surface_width;
-	mode_cmd.height = sizes->surface_height;
-
-	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
-	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
-							  sizes->surface_depth);
-
-	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = mode_cmd->pitches[0] * mode_cmd->height;
 	size = PAGE_ALIGN(size);
 
 	obj = ERR_PTR(-ENODEV);
@@ -68,9 +56,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
 	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
 				      drm_get_format_info(drm,
-							  mode_cmd.pixel_format,
-							  mode_cmd.modifier[0]),
-				      &mode_cmd);
+							  mode_cmd->pixel_format,
+							  mode_cmd->modifier[0]),
+				      mode_cmd);
 	i915_gem_object_put(obj);
 
 	return to_intel_framebuffer(fb);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index caeb543d5efc..11c2d4b54ab0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -9,15 +9,15 @@
 #include <linux/types.h>
 
 struct drm_device;
-struct drm_fb_helper_surface_size;
 struct drm_gem_object;
+struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
 struct intel_display;
 
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_fb_helper_surface_size *sizes);
+					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index fd2c40020eea..8e2f338d36fa 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -3,7 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/drm_fb_helper.h>
+#include <linux/fb.h>
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
@@ -21,26 +21,14 @@ u32 intel_fbdev_fb_pitch_align(u32 stride)
 }
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_fb_helper_surface_size *sizes)
+					       struct drm_mode_fb_cmd2 *mode_cmd)
 {
 	struct drm_framebuffer *fb;
 	struct xe_device *xe = to_xe_device(drm);
-	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct xe_bo *obj;
 	int size;
 
-	/* we don't do packed 24bpp */
-	if (sizes->surface_bpp == 24)
-		sizes->surface_bpp = 32;
-
-	mode_cmd.width = sizes->surface_width;
-	mode_cmd.height = sizes->surface_height;
-
-	mode_cmd.pitches[0] = intel_fbdev_fb_pitch_align(mode_cmd.width * DIV_ROUND_UP(sizes->surface_bpp, 8));
-	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
-							  sizes->surface_depth);
-
-	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = mode_cmd->pitches[0] * mode_cmd->height;
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
@@ -71,9 +59,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
 	fb = intel_framebuffer_create(&obj->ttm.base,
 				      drm_get_format_info(drm,
-							  mode_cmd.pixel_format,
-							  mode_cmd.modifier[0]),
-				      &mode_cmd);
+							  mode_cmd->pixel_format,
+							  mode_cmd->modifier[0]),
+				      mode_cmd);
 	if (IS_ERR(fb)) {
 		xe_bo_unpin_map_no_vm(obj);
 		goto err;
-- 
2.47.2

