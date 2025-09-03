Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8057B42AFE
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E4810E930;
	Wed,  3 Sep 2025 20:32:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGjB5Zwv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA9D10E92E;
 Wed,  3 Sep 2025 20:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931571; x=1788467571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Evofjn4rWC5UM0bYlrdwL7n0fZ2SjorXyxhYzrJiAJQ=;
 b=FGjB5Zwv3pcIAM0+SApNPKOuEMPTBOmsPbzyyGUvJVs0m+ZFVtlJtvFR
 9daRumShClbh9zRHlrMg59ta8k1ArID1pBJSNvzT4JGYh65r1jNRdk6/W
 fQA3U8014uBKFudqALTmByo8GCzWhMpysn6Re7dnFFzdTM8ICo3fPTjNe
 LGzRbUvQ+5IWf2keY2hSrjS6MyyARpZQbOJzUkxVuHog0u0hDG0yyhdue
 T7ek5kwh4Yc/tQxbFL0VZDbQlE4XjQu4uPxfRQw3Y7xorpOqUzm74ZxpQ
 OPMPXS/w/Coc6oSm6WsJ9MEuDRdcUnhX8/O00BpcKBB84RyqFXneTN4Vf Q==;
X-CSE-ConnectionGUID: lzcXYNilQwGpEXoMF9TK+A==
X-CSE-MsgGUID: kfZo7SSdThGdr+uxxLd3bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833173"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833173"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:50 -0700
X-CSE-ConnectionGUID: jbof79G2TAeiCe0MBJan1g==
X-CSE-MsgGUID: 1Q0cKHzSRGy1z7xq3xhrOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582505"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/9] drm/{i915,xe}/fbdev: deduplicate fbdev creation
Date: Wed,  3 Sep 2025 23:32:04 +0300
Message-ID: <a233292c243fc3ad85c637665ffe2b62815cd63c.1756931441.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756931441.git.jani.nikula@intel.com>
References: <cover.1756931441.git.jani.nikula@intel.com>
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

With the bo creation helper in place, we can lift
intel_framebuffer_create() part to common code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 31 ++++++++++++++--
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 29 ---------------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |  2 --
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 35 -------------------
 4 files changed, 28 insertions(+), 69 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 5ac66fb88fcf..d7131de5c7ac 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -227,13 +227,38 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
 		       struct drm_fb_helper_surface_size *sizes)
 {
 	struct drm_mode_fb_cmd2 mode_cmd = {};
-	struct intel_framebuffer *fb;
+	struct drm_framebuffer *fb;
+	struct drm_gem_object *obj;
+	int size;
 
 	intel_fbdev_fill_mode_cmd(sizes, &mode_cmd);
 
-	fb = intel_fbdev_fb_alloc(display->drm, &mode_cmd);
+	size = mode_cmd.pitches[0] * mode_cmd.height;
+	size = PAGE_ALIGN(size);
+
+	obj = intel_fbdev_fb_bo_create(display->drm, size);
+	if (IS_ERR(obj)) {
+		fb = ERR_CAST(obj);
+		goto err;
+	}
+
+	fb = intel_framebuffer_create(obj,
+				      drm_get_format_info(display->drm,
+							  mode_cmd.pixel_format,
+							  mode_cmd.modifier[0]),
+				      &mode_cmd);
+	if (IS_ERR(fb)) {
+		intel_fbdev_fb_bo_destroy(obj);
+		goto err;
+	}
+
+	drm_gem_object_put(obj);
+
+	return to_intel_framebuffer(fb);
+
+err:
+	return ERR_CAST(fb);
 
-	return fb;
 }
 
 int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
index 6b70823ce5ef..1ac62a064936 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
@@ -10,7 +10,6 @@
 #include "i915_drv.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 
 u32 intel_fbdev_fb_pitch_align(u32 stride)
@@ -56,34 +55,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	/* nop? */
 }
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_mode_fb_cmd2 *mode_cmd)
-{
-	struct drm_framebuffer *fb;
-	struct drm_gem_object *obj;
-	int size;
-
-	size = mode_cmd->pitches[0] * mode_cmd->height;
-	size = PAGE_ALIGN(size);
-
-	obj = intel_fbdev_fb_bo_create(drm, size);
-	if (IS_ERR(obj)) {
-		fb = ERR_CAST(obj);
-		goto err;
-	}
-
-	fb = intel_framebuffer_create(obj,
-				      drm_get_format_info(drm,
-							  mode_cmd->pixel_format,
-							  mode_cmd->modifier[0]),
-				      mode_cmd);
-	drm_gem_object_put(obj);
-
-	return to_intel_framebuffer(fb);
-err:
-	return ERR_CAST(fb);
-}
-
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
index 6d6f316834df..bb0ce3a85ff9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.h
@@ -18,8 +18,6 @@ struct intel_display;
 u32 intel_fbdev_fb_pitch_align(u32 stride);
 struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size);
 void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj);
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_mode_fb_cmd2 *mode_cmd);
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *obj, struct i915_vma *vma);
 
diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 9a5cf50ea7de..2e8490a8cdb1 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -7,7 +7,6 @@
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "intel_fb.h"
 #include "intel_fbdev_fb.h"
 #include "xe_bo.h"
 #include "xe_ttm_stolen_mgr.h"
@@ -59,40 +58,6 @@ void intel_fbdev_fb_bo_destroy(struct drm_gem_object *obj)
 	xe_bo_unpin_map_no_vm(gem_to_xe_bo(obj));
 }
 
-struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_device *drm,
-					       struct drm_mode_fb_cmd2 *mode_cmd)
-{
-	struct drm_framebuffer *fb;
-	struct drm_gem_object *obj;
-	int size;
-
-	size = mode_cmd->pitches[0] * mode_cmd->height;
-	size = PAGE_ALIGN(size);
-
-	obj = intel_fbdev_fb_bo_create(drm, size);
-	if (IS_ERR(obj)) {
-		fb = ERR_CAST(obj);
-		goto err;
-	}
-
-	fb = intel_framebuffer_create(obj,
-				      drm_get_format_info(drm,
-							  mode_cmd->pixel_format,
-							  mode_cmd->modifier[0]),
-				      mode_cmd);
-	if (IS_ERR(fb)) {
-		intel_fbdev_fb_bo_destroy(obj);
-		goto err;
-	}
-
-	drm_gem_object_put(obj);
-
-	return to_intel_framebuffer(fb);
-
-err:
-	return ERR_CAST(fb);
-}
-
 int intel_fbdev_fb_fill_info(struct intel_display *display, struct fb_info *info,
 			     struct drm_gem_object *_obj, struct i915_vma *vma)
 {
-- 
2.47.2

