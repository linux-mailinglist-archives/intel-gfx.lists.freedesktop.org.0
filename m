Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39CAB83920
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7743E10E67E;
	Thu, 18 Sep 2025 08:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1lFjBX0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D9E10E67E;
 Thu, 18 Sep 2025 08:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184889; x=1789720889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4JK5UUQ0at9LmwJw+rtCKgXMYQ6ivZGCDFIl69rPB8c=;
 b=J1lFjBX03sGeim1OTSF7lApXKwewJSSSHAq55eOUozJnyvAVIPfrfayN
 JKRIgaEcGW7GlnwoX8MG72bkgZoK0xSQdfi73C2MViwnfjO50TkBOjtP5
 FUY44xPzvRsXm9DrCBKxcG9/VFEg4A9PsP+SUE7Gv/v43Vlfx0eYCjBrd
 l1thjZMXinlLzm07vrW7WeezCY3q9sHwmBA+r12BzlI0UrW0O83cjHCxl
 Qz+CiAiJCWQyd8BrDHC26FhOn/jOjWVokWKXz9JUQHyU5a4rqyOdu3ShH
 E+tESCl0tWPEivnuPDD6Cz+FqBCLjgjhdpStcOFAwmX3wEgcr7WzjM7DZ w==;
X-CSE-ConnectionGUID: s2wYJoDURcyu6ossCg/cew==
X-CSE-MsgGUID: WpA2hPjnR6SFkxDhkSyYUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932942"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932942"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:29 -0700
X-CSE-ConnectionGUID: jjIZmnT8RM+t2TvJ661c3Q==
X-CSE-MsgGUID: 0tWTmQIISHemSD6rtSbPWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760713"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 04/10] drm/{i915,
 xe}/fbdev: deduplicate struct drm_mode_fb_cmd2 init
Date: Thu, 18 Sep 2025 11:40:54 +0300
Message-ID: <e922e47bfd39f9c5777f869ff23c23309ebbb380.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
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

v2: Rebase on xe stride alignment change

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 32 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 25 ++++-----------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  4 +--
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 25 ++++-----------
 4 files changed, 45 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 46c6de5f6088..e46c08762b84 100644
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
+	mode_cmd->pitches[0] = ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
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
index 4de13d1a4c7a..685612e6afc5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -3,7 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/drm_fb_helper.h>
+#include <linux/fb.h>
 
 #include "gem/i915_gem_lmem.h"
 
@@ -14,28 +14,15 @@
 #include "intel_fbdev_fb.h"
 
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
-	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
-	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
-							  sizes->surface_depth);
-
-	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = mode_cmd->pitches[0] * mode_cmd->height;
 	size = PAGE_ALIGN(size);
 
 	obj = ERR_PTR(-ENODEV);
@@ -64,9 +51,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
 	fb = intel_framebuffer_create(intel_bo_to_drm_bo(obj),
 				      drm_get_format_info(drm,
-							  mode_cmd.pixel_format,
-							  mode_cmd.modifier[0]),
-				      &mode_cmd);
+							  mode_cmd->pixel_format,
+							  mode_cmd->modifier[0]),
+				      mode_cmd);
 	if (IS_ERR(fb)) {
 		i915_gem_object_put(obj);
 		goto err;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 668ae355f5e5..83454ffbf79c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -7,14 +7,14 @@
 #define __INTEL_FBDEV_FB_H__
 
 struct drm_device;
-struct drm_fb_helper_surface_size;
 struct drm_gem_object;
+struct drm_mode_fb_cmd2;
 struct fb_info;
 struct i915_vma;
 struct intel_display;
 
 struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_fb_helper_surface_size *sizes);
+					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 5c0874bfa6ab..8eaf1cc7fdf9 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -3,7 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <drm/drm_fb_helper.h>
+#include <linux/fb.h>
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
@@ -16,27 +16,14 @@
 #include <generated/xe_wa_oob.h>
 
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
-	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
-	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
-							  sizes->surface_depth);
-
-	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = mode_cmd->pitches[0] * mode_cmd->height;
 	size = PAGE_ALIGN(size);
 	obj = ERR_PTR(-ENODEV);
 
@@ -67,9 +54,9 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
 
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
2.47.3

