Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8316793B0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 10:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF9DA10E252;
	Tue, 24 Jan 2023 09:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E73110E252
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 09:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674551460; x=1706087460;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zbbVV4sv/lcTtA6E783WIGKM23NDBKPIH5FkvvnHZSs=;
 b=RsbTBgwD3W8nnghVD1NvFpXZc+bMi/YlbpId9Ky4LQyBDU8Cy9v+PnKF
 KQ/lOvk0c2HRQsQG5M7mh2p1Q3mG7l7eugJ/VfgRC4dbQLt+G9QBUkQTw
 fBSuz/bFdetlBB4XeI1Yv9KAmKbbP05AMgR55iH/yPMD2RJLZnVPo62MH
 xxfYHuEMeUHFwSRGI54G9CTeX+nclrJPXO0ECXjndn18V56QXscanB/vn
 CLLOgrACy59k4lVRx8AV5bddMXR05WtckuLOW2Yed5C/4zup99L9dCyRH
 Eqof4KyAfxkWxiDFE7ynDAQsoKaud1OwAVnlSJQyTrcOLsRTE6PuaH2WU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="328342799"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="328342799"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:10:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="664004009"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="664004009"
Received: from dhenel-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.164])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 01:10:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 11:10:46 +0200
Message-Id: <20230124091046.2500682-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After disconnecting damage worker from update logic our dirty callback
is not called on fbcon events. This is causing problems to features
(PSR, FBC, DRRS) relying on dirty callback getting called and breaking
fb console when these features are in use.

Implement wrappers for callbacks used by fbcon and call our dirty
callback in those.

Fixes: f231af498c29 ("drm/fb-helper: Disconnect damage worker from update logic")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 53 ++++++++++++++++++++--
 1 file changed, 49 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 19f3b5d92a55..b1653624552e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -77,6 +77,18 @@ static void intel_fbdev_invalidate(struct intel_fbdev *ifbdev)
 	intel_frontbuffer_invalidate(to_frontbuffer(ifbdev), ORIGIN_CPU);
 }
 
+static void intel_fbdev_dirty(struct fb_info *info)
+{
+	struct drm_fb_helper *helper = info->par;
+
+	/*
+	 * Intel_fb dirty implementation doesn't use damage clips ->
+	 * no need to pass them here
+	 */
+	if (helper->fb->funcs->dirty)
+		helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, NULL, 0);
+}
+
 static int intel_fbdev_set_par(struct fb_info *info)
 {
 	struct drm_fb_helper *fb_helper = info->par;
@@ -91,6 +103,39 @@ static int intel_fbdev_set_par(struct fb_info *info)
 	return ret;
 }
 
+static ssize_t intel_fbdev_write(struct fb_info *info, const char __user *buf,
+				 size_t count, loff_t *ppos)
+{
+	int ret;
+
+	ret = drm_fb_helper_cfb_write(info, buf, count, ppos);
+	if (ret > 0)
+		intel_fbdev_dirty(info);
+
+	return ret;
+}
+
+static void intel_fbdev_fillrect(struct fb_info *info,
+				  const struct fb_fillrect *rect)
+{
+	drm_fb_helper_cfb_fillrect(info, rect);
+	intel_fbdev_dirty(info);
+}
+
+static void intel_fbdev_copyarea(struct fb_info *info,
+				  const struct fb_copyarea *area)
+{
+	drm_fb_helper_cfb_copyarea(info, area);
+	intel_fbdev_dirty(info);
+}
+
+static void intel_fbdev_imageblit(struct fb_info *info,
+				 const struct fb_image *image)
+{
+	drm_fb_helper_cfb_imageblit(info, image);
+	intel_fbdev_dirty(info);
+}
+
 static int intel_fbdev_blank(int blank, struct fb_info *info)
 {
 	struct drm_fb_helper *fb_helper = info->par;
@@ -125,10 +170,10 @@ static const struct fb_ops intelfb_ops = {
 	DRM_FB_HELPER_DEFAULT_OPS,
 	.fb_set_par = intel_fbdev_set_par,
 	.fb_read = drm_fb_helper_cfb_read,
-	.fb_write = drm_fb_helper_cfb_write,
-	.fb_fillrect = drm_fb_helper_cfb_fillrect,
-	.fb_copyarea = drm_fb_helper_cfb_copyarea,
-	.fb_imageblit = drm_fb_helper_cfb_imageblit,
+	.fb_write = intel_fbdev_write,
+	.fb_fillrect = intel_fbdev_fillrect,
+	.fb_copyarea = intel_fbdev_copyarea,
+	.fb_imageblit = intel_fbdev_imageblit,
 	.fb_pan_display = intel_fbdev_pan_display,
 	.fb_blank = intel_fbdev_blank,
 };
-- 
2.34.1

