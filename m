Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DCD4B6C08
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 13:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BE010E149;
	Tue, 15 Feb 2022 12:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B376310E149
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 12:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644928204; x=1676464204;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mVxI+1cioUJJ+0XYghPl5ZjQblm0HLwSwTO6RdITiSo=;
 b=lSjPMJlZuxONnddQC31/CaUGM06M+kqN9aepOTfi8Q67jBeWkF9VBrmX
 Av633sYobKAa2LG4yS5MqkKESJarOcFs7TcGDpJSeu51EdF5fWInAua22
 TAo+c+EmsdEW0ScUCqgJqp37QP/hM/JGRlmGmzQGzlxtUUhC/xF8XLSwS
 8crjEerc/iAe0ZWwOjd6TmWTLL5q42yazNcpO1eZJVVwaIUx5DT8sMcbO
 6qn5aNWkwPjzonHf5gXHYoyIQ9qiJ7LNGqMVLk+oV605pUWuWKT0I6L9J
 ho0eW6X5UtEiBiOSnCHxehgNbRdYGwRu7i3Sp+nnuUrpqb4hH+Rj/NY4y w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336771994"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="336771994"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 04:30:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="544279785"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.20.230])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 04:30:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 14:29:56 +0200
Message-Id: <20220215122957.2755529-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/fbdev: add
 intel_fbdev_framebuffer() helper
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrap accessing struct intel_fbdev guts in a helper.

v2: s/intel_fbdev_to_framebuffer/intel_fbdev_framebuffer/g (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_fbdev.c           | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_fbdev.h           | 7 +++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f6c4ad8fce19..bbc6f270c09f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -16,6 +16,7 @@
 #include "intel_dp_mst.h"
 #include "intel_drrs.h"
 #include "intel_fbc.h"
+#include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
 #include "intel_pm.h"
@@ -124,9 +125,8 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 	struct drm_framebuffer *drm_fb;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
-	if (dev_priv->fbdev && dev_priv->fbdev->helper.fb) {
-		fbdev_fb = to_intel_framebuffer(dev_priv->fbdev->helper.fb);
-
+	fbdev_fb = intel_fbdev_framebuffer(dev_priv->fbdev);
+	if (fbdev_fb) {
 		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx, refcount %d, obj ",
 			   fbdev_fb->base.width,
 			   fbdev_fb->base.height,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 41d279db2be6..0f188cd28f2d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -680,3 +680,11 @@ void intel_fbdev_restore_mode(struct drm_device *dev)
 	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
 		intel_fbdev_invalidate(ifbdev);
 }
+
+struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
+{
+	if (!fbdev || !fbdev->helper.fb)
+		return NULL;
+
+	return to_intel_framebuffer(fbdev->helper.fb);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index de7c84250eb5..0e95e9472fa3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -10,6 +10,8 @@
 
 struct drm_device;
 struct drm_i915_private;
+struct intel_fbdev;
+struct intel_framebuffer;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
 int intel_fbdev_init(struct drm_device *dev);
@@ -19,6 +21,7 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv);
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
 void intel_fbdev_output_poll_changed(struct drm_device *dev);
 void intel_fbdev_restore_mode(struct drm_device *dev);
+struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
 #else
 static inline int intel_fbdev_init(struct drm_device *dev)
 {
@@ -48,6 +51,10 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
 static inline void intel_fbdev_restore_mode(struct drm_device *dev)
 {
 }
+static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __INTEL_FBDEV_H__ */
-- 
2.30.2

