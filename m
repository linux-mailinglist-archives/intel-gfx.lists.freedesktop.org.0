Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8606B42AF3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 22:32:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0963110E926;
	Wed,  3 Sep 2025 20:32:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kx5CdpUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A37D10E926;
 Wed,  3 Sep 2025 20:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756931538; x=1788467538;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nrCrbN3bwYRqSX9a6jXHhnx+8ccwBerU6/mKATcKnZo=;
 b=kx5CdpUJqjpvEbjywXCZZNj20Bhi9Klzl8myr9PucMLC0b7qTWF3BndU
 DUmc1s//hYtNQ6haE26CXxg4F26KCyrbL/+GVxxBDfRd7YmmUPU2Egy3X
 6m2PbxXApThN5T4+KhjiwZBiCiTwYngAMvlDGLa0kjEHCRHh23xKgK4/I
 lSxxo2E4f5FDk6lc40n8EionfBcmokQg8CNm2/p0xF8/ZhMAJUQb0IiCg
 rs8eYI7H1hjmezuJEz7JvpHg8V+oDYpOcLCs8rIovFuD0YoyTtbAb3evJ
 uwf78f2son1Ou0JhaqswBwj3iWqsIieifnzFQIA9UpXiumL2H4CWUeQzf w==;
X-CSE-ConnectionGUID: 7miN721+RaGv0szDyHVl5g==
X-CSE-MsgGUID: 2Wq35/l4SdyRvAfaHgW3BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="46833115"
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="46833115"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:18 -0700
X-CSE-ConnectionGUID: QzGuNBFDSWqQpEd4r9j0cg==
X-CSE-MsgGUID: GhocBOYBRAKK59kcbYcQEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,236,1751266800"; d="scan'208";a="171582421"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2025 13:32:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/9] drm/{i915,
 xe}/fbdev: pass struct drm_device to intel_fbdev_fb_alloc()
Date: Wed,  3 Sep 2025 23:31:58 +0300
Message-ID: <b2c57624ba8a10c82e2eb4bdb44b971b4305c140.1756931441.git.jani.nikula@intel.com>
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
index 210aee9ae88b..9c557917d781 100644
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
index d96ba2b51065..bafca1059a40 100644
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
2.47.2

