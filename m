Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BB959FB10
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0A3B51A7;
	Wed, 24 Aug 2022 13:17:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0340B5067
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347026; x=1692883026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Juev2pR3wSUkx5FKgY5/UovBZEnlsDLYJZJ19DhzF4=;
 b=Mx+Ddl7o3ZwL+uPJVIsPVJ0bi/ronoNxqFwOH57GH0gkDc/9xlKcR9wI
 Ox8Xk2hM0B6c7ATAnni7C9yHdS2f5oahr/tIQkvTZ4poSI2MqUZJh7Rox
 vWXnQbGKkDLUODwI5f/F0QWvFV3ZI1kz9sKxVIQTFtnobBkjyrgClbh5S
 yR4jWRi7MOHi3cA7/nruAtIHCg0gUtF/kwfWJN8yiYTMt529MOLUrJan5
 0gFI/8E6lfjE21LfcRP1TV38D3yU48EKhQIPEvEPYsqZhze1TDS7srtVb
 Ryo+t3l1d/elvSrDu9gI1magdr9lCVBKvBC4zspBnDLy7y2rJX0AAyoyr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294747768"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294747768"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:17:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="752080698"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:17:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:39 +0300
Message-Id: <7eb563bc88623bd3f12b9a00efec85e6a78d5800.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/38] drm/i915: move and group fbdev under
 display.fbdev
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display fbdev related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  8 ++++++
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 26 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  5 ----
 4 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 34e187f173d9..76e60cfd3ef7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -9,6 +9,7 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/wait.h>
+#include <linux/workqueue.h>
 
 #include "intel_display.h"
 #include "intel_dmc.h"
@@ -25,6 +26,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
 struct intel_dpll_mgr;
+struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
@@ -128,6 +130,12 @@ struct intel_display {
 	} funcs;
 
 	/* Grouping using anonymous structs. Keep sorted. */
+	struct {
+		/* list of fbdev register on this device */
+		struct intel_fbdev *fbdev;
+		struct work_struct suspend_work;
+	} fbdev;
+
 	struct {
 		/*
 		 * Base address of where the gmbus and gpio blocks are located
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 7994f78b889a..e568590faa82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -129,7 +129,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 	struct drm_framebuffer *drm_fb;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
-	fbdev_fb = intel_fbdev_framebuffer(dev_priv->fbdev);
+	fbdev_fb = intel_fbdev_framebuffer(dev_priv->display.fbdev.fbdev);
 	if (fbdev_fb) {
 		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx, refcount %d, obj ",
 			   fbdev_fb->base.width,
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 221336178991..c08ff6a5c2e9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -500,7 +500,7 @@ static void intel_fbdev_suspend_worker(struct work_struct *work)
 {
 	intel_fbdev_set_suspend(&container_of(work,
 					      struct drm_i915_private,
-					      fbdev_suspend_work)->drm,
+					      display.fbdev.suspend_work)->drm,
 				FBINFO_STATE_RUNNING,
 				true);
 }
@@ -530,8 +530,8 @@ int intel_fbdev_init(struct drm_device *dev)
 		return ret;
 	}
 
-	dev_priv->fbdev = ifbdev;
-	INIT_WORK(&dev_priv->fbdev_suspend_work, intel_fbdev_suspend_worker);
+	dev_priv->display.fbdev.fbdev = ifbdev;
+	INIT_WORK(&dev_priv->display.fbdev.suspend_work, intel_fbdev_suspend_worker);
 
 	return 0;
 }
@@ -548,7 +548,7 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
 
 void intel_fbdev_initial_config_async(struct drm_device *dev)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;
+	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
@@ -568,12 +568,12 @@ static void intel_fbdev_sync(struct intel_fbdev *ifbdev)
 
 void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = dev_priv->fbdev;
+	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
 
-	cancel_work_sync(&dev_priv->fbdev_suspend_work);
+	cancel_work_sync(&dev_priv->display.fbdev.suspend_work);
 	if (!current_is_async())
 		intel_fbdev_sync(ifbdev);
 
@@ -582,7 +582,7 @@ void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
 
 void intel_fbdev_fini(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = fetch_and_zero(&dev_priv->fbdev);
+	struct intel_fbdev *ifbdev = fetch_and_zero(&dev_priv->display.fbdev.fbdev);
 
 	if (!ifbdev)
 		return;
@@ -596,7 +596,7 @@ void intel_fbdev_fini(struct drm_i915_private *dev_priv)
  */
 static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state)
 {
-	struct intel_fbdev *ifbdev = i915->fbdev;
+	struct intel_fbdev *ifbdev = i915->display.fbdev.fbdev;
 	bool send_hpd = false;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -614,7 +614,7 @@ static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, int state
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_fbdev *ifbdev = dev_priv->fbdev;
+	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 	struct fb_info *info;
 
 	if (!ifbdev || !ifbdev->vma)
@@ -631,7 +631,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 		 * ourselves, so only flush outstanding work upon suspend!
 		 */
 		if (state != FBINFO_STATE_RUNNING)
-			flush_work(&dev_priv->fbdev_suspend_work);
+			flush_work(&dev_priv->display.fbdev.suspend_work);
 
 		console_lock();
 	} else {
@@ -645,7 +645,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 			/* Don't block our own workqueue as this can
 			 * be run in parallel with other i915.ko tasks.
 			 */
-			schedule_work(&dev_priv->fbdev_suspend_work);
+			schedule_work(&dev_priv->display.fbdev.suspend_work);
 			return;
 		}
 	}
@@ -666,7 +666,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
 
 void intel_fbdev_output_poll_changed(struct drm_device *dev)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;
+	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
 	bool send_hpd;
 
 	if (!ifbdev)
@@ -685,7 +685,7 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
 
 void intel_fbdev_restore_mode(struct drm_device *dev)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->fbdev;
+	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9f9954cbaa44..1ef0ab73c329 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -83,7 +83,6 @@ struct intel_cdclk_vals;
 struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
-struct intel_fbdev;
 struct intel_limit;
 struct intel_overlay;
 struct intel_overlay_error_state;
@@ -478,10 +477,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	/* list of fbdev register on this device */
-	struct intel_fbdev *fbdev;
-	struct work_struct fbdev_suspend_work;
-
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-- 
2.34.1

