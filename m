Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A706466252C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 13:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A312E10E148;
	Mon,  9 Jan 2023 12:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2032 seconds by postgrey-1.36 at gabe;
 Mon, 09 Jan 2023 12:12:54 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E007210E148
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 12:12:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Jan 2023 13:12:47 +0100
Message-Id: <20230109121247.154623-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH fixed] drm/i915/display: Enable FBC for fbcon
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

Remove frontbuffer invalidation code from FBC, and just use the dirtyfb
helper.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 73 +++++-----------------
 1 file changed, 15 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 03ed4607a46d..d42fa38aec9d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -40,6 +40,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_fbdev_generic.h>
 
 #include "gem/i915_gem_lmem.h"
 
@@ -67,70 +68,17 @@ struct intel_fbdev {
 	struct mutex hpd_lock;
 };
 
-static struct intel_frontbuffer *to_frontbuffer(struct intel_fbdev *ifbdev)
-{
-	return ifbdev->fb->frontbuffer;
-}
-
-static void intel_fbdev_invalidate(struct intel_fbdev *ifbdev)
-{
-	intel_frontbuffer_invalidate(to_frontbuffer(ifbdev), ORIGIN_CPU);
-}
-
-static int intel_fbdev_set_par(struct fb_info *info)
-{
-	struct drm_fb_helper *fb_helper = info->par;
-	struct intel_fbdev *ifbdev =
-		container_of(fb_helper, struct intel_fbdev, helper);
-	int ret;
-
-	ret = drm_fb_helper_set_par(info);
-	if (ret == 0)
-		intel_fbdev_invalidate(ifbdev);
-
-	return ret;
-}
-
-static int intel_fbdev_blank(int blank, struct fb_info *info)
-{
-	struct drm_fb_helper *fb_helper = info->par;
-	struct intel_fbdev *ifbdev =
-		container_of(fb_helper, struct intel_fbdev, helper);
-	int ret;
-
-	ret = drm_fb_helper_blank(blank, info);
-	if (ret == 0)
-		intel_fbdev_invalidate(ifbdev);
-
-	return ret;
-}
-
-static int intel_fbdev_pan_display(struct fb_var_screeninfo *var,
-				   struct fb_info *info)
-{
-	struct drm_fb_helper *fb_helper = info->par;
-	struct intel_fbdev *ifbdev =
-		container_of(fb_helper, struct intel_fbdev, helper);
-	int ret;
-
-	ret = drm_fb_helper_pan_display(var, info);
-	if (ret == 0)
-		intel_fbdev_invalidate(ifbdev);
-
-	return ret;
-}
-
 static const struct fb_ops intelfb_ops = {
 	.owner = THIS_MODULE,
 	DRM_FB_HELPER_DEFAULT_OPS,
-	.fb_set_par = intel_fbdev_set_par,
+	.fb_set_par = drm_fb_helper_set_par,
 	.fb_read = drm_fb_helper_cfb_read,
 	.fb_write = drm_fb_helper_cfb_write,
 	.fb_fillrect = drm_fb_helper_cfb_fillrect,
 	.fb_copyarea = drm_fb_helper_cfb_copyarea,
 	.fb_imageblit = drm_fb_helper_cfb_imageblit,
-	.fb_pan_display = intel_fbdev_pan_display,
-	.fb_blank = intel_fbdev_blank,
+	.fb_pan_display = drm_fb_helper_pan_display,
+	.fb_blank = drm_fb_helper_blank,
 };
 
 static int intelfb_alloc(struct drm_fb_helper *helper,
@@ -328,8 +276,18 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	return ret;
 }
 
+static int intel_fbdev_fb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
+{
+	struct intel_fbdev *ifbdev =
+		container_of(helper, struct intel_fbdev, helper);
+	struct drm_framebuffer *fb = &ifbdev->fb->base;
+
+	return fb->funcs->dirty(fb, NULL, 0, 0, clip, 1);
+}
+
 static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
 	.fb_probe = intelfb_create,
+	.fb_dirty = intel_fbdev_fb_dirty,
 };
 
 static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
@@ -704,8 +662,7 @@ void intel_fbdev_restore_mode(struct drm_device *dev)
 	if (!ifbdev->vma)
 		return;
 
-	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
-		intel_fbdev_invalidate(ifbdev);
+	drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper);
 }
 
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
-- 
2.34.1

