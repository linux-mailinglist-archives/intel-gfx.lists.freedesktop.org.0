Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BDF4B5418
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 16:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79F4210E116;
	Mon, 14 Feb 2022 15:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F0210E116
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 15:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644850937; x=1676386937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IVOC+SStKjfkX0aGJomIxLPEdwsQFpYqxjzi/GnRG+c=;
 b=mrFZE7IcHnd0hipgvyZ3PdTdDVvyypCxTBSKWmGVS5pvQi+tm3faUFrY
 zNAPQE+GBG6mH0Aj7cLuhyTS+v5q3mkMaI7lRY54w/FNDgwG0HM5sSb+m
 sUbg9u8NnqirFyyeAAICjUgf8iZ/tph1gzfaOHaUroy3odfGV/77UE71O
 /rjkE5BoYb1asZXpKFMMm+cWoF5WdEThNV2Yj2PitGVwYZMBfpvZGYlTr
 d1QBsLQoz+cYJrj13yz3LGFmjvfQkW03ea1iiDKJEI6I60WtBZFjP3/Pz
 qapyDIoZRoCpW89fyo3JpDb7ZBBdp5a/wX1FC+W+4plzGMKdQr8lo6RTg A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="313381828"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="313381828"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="543649174"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 17:02:06 +0200
Message-Id: <961d790b9eacad248fa7ac7d1dcf6179f543dccd.1644850884.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644850884.git.jani.nikula@intel.com>
References: <cover.1644850884.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: add
 intel_fbdev_to_framebuffer() helper
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_fbdev.c           | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_fbdev.h           | 7 +++++++
 3 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f4de004d470f..b0bcf4d54a74 100644
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
+	fbdev_fb = intel_fbdev_to_framebuffer(dev_priv->fbdev);
+	if (fbdev_fb) {
 		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx, refcount %d, obj ",
 			   fbdev_fb->base.width,
 			   fbdev_fb->base.height,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 41d279db2be6..3ef683916ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -680,3 +680,11 @@ void intel_fbdev_restore_mode(struct drm_device *dev)
 	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) == 0)
 		intel_fbdev_invalidate(ifbdev);
 }
+
+struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev)
+{
+	if (!fbdev || !fbdev->helper.fb)
+		return NULL;
+
+	return to_intel_framebuffer(fbdev->helper.fb);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index de7c84250eb5..8e86c08d544f 100644
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
+struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev);
 #else
 static inline int intel_fbdev_init(struct drm_device *dev)
 {
@@ -48,6 +51,10 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
 static inline void intel_fbdev_restore_mode(struct drm_device *dev)
 {
 }
+static inline struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev *fbdev)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __INTEL_FBDEV_H__ */
-- 
2.30.2

