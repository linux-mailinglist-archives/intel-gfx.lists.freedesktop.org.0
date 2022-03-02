Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504244CA612
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 14:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E8410E5A2;
	Wed,  2 Mar 2022 13:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C3610E517
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 13:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646228003; x=1677764003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5zEER11TqGqnxsssIeZMdlaGwaJhrC4Bt+p8nvew3VE=;
 b=l0SbnxIygAHFNoGALheFhb1ArTVSpA/Q/YRE0w1LRSDW/0nkMMuuXY7w
 zdyQsrk9sujIibSnnmLLi35v5FcpwyqGiKJNWEWzUBex3GJ0dWRuFM0Fw
 sHvMbytyLrWM4LYm+NQdKXKFMx+4gI6fo8ULT03C7a7/K0YnCfRtk+AHS
 eqDcc6UgPhcyctf44yFWBclIZZ+d2M2/HryA/A+exr5qrhhWZyrErHbuS
 S3X0qERkscPVtKkTFU/hIiqwLwZc+OW1BkWhNvngFrgzcX9ixMN8tTJa9
 zmRJuuzEefP7slZQXKuNvWLyCBzX2o67n985q9ESvWpOIJ/ugo5SHYd8M g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="278071953"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="278071953"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 05:33:22 -0800
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="551251443"
Received: from tlambe-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.51.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 05:33:20 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Mar 2022 15:33:03 +0200
Message-Id: <20220302133304.82717-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220302133304.82717-1-jouni.hogander@intel.com>
References: <20220302133304.82717-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915/fbdev: Remove frontbuffer
 tracking calls
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel_fbdev can use drm_helper functions which are calling dirtyfb
callback.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 62 ++--------------------
 1 file changed, 4 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 2cd62a187df3..177c0c20c11e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -67,68 +67,15 @@ struct intel_fbdev {
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
 	.fb_fillrect = drm_fb_helper_cfb_fillrect,
 	.fb_copyarea = drm_fb_helper_cfb_copyarea,
 	.fb_imageblit = drm_fb_helper_cfb_imageblit,
-	.fb_pan_display = intel_fbdev_pan_display,
-	.fb_blank = intel_fbdev_blank,
+	.fb_pan_display = drm_fb_helper_pan_display,
+	.fb_blank = drm_fb_helper_blank,
 };
 
 static int intelfb_alloc(struct drm_fb_helper *helper,
@@ -694,8 +641,7 @@ void intel_fbdev_restore_mode(struct drm_device *dev)
 	if (!ifbdev->vma)
 		return;
 
-	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
-		intel_fbdev_invalidate(ifbdev);
+	drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper);
 }
 
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
-- 
2.25.1

