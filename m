Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B14EE58FEF8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1EAB3D57;
	Thu, 11 Aug 2022 15:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F0D8B3D94
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230823; x=1691766823;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G+HfbAR7iwwDin0fzQMC24xIR5GeDa3z2gqnl2UnEpk=;
 b=lbBa05/YJTMmULy+8C+XxYNcFAi70zpCbe1Cy5EKtNSTVNVbWUkEquXO
 j3XwYplIeplaZtbyukzE19tvOvBq60A5ELAqo/qSSuP4BWaKf6gGmhTEN
 NdDsyiFsE/M+DB/4rReTCJlaGajJNcIMmtAJ4tQwkLP0H3IURj7jZ7K2b
 2YYTmzkCqNnNpR3l44o1cOcRTYhte9HOPKkAjNyHflt66jo3uCBOUFjzG
 H2/+XiHriuzZ5bUwUdKI+2FL/6uXOlfgEzEwE2DyVYzUmHUA0C0Vj4rdT
 Ql3wcwO74WhazWFH8y/x3qfZvG8q9kn80JYvJExIrhEtV/frrP2wvJk1r Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377663229"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377663229"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="556158581"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:25 +0300
Message-Id: <d199c48526935fed374f745a98953d5f49a1c22b.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/39] drm/i915: move and group fbdev under
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  8 ++++++
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 26 +++++++++----------
 drivers/gpu/drm/i915/i915_drv.h               |  5 ----
 4 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f12ff36fef07..71434a922695 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -9,6 +9,7 @@
 #include <linux/mutex.h>
 #include <linux/types.h>
 #include <linux/wait.h>
+#include <linux/workqueue.h>
 
 #include "intel_display.h"
 #include "intel_dmc.h"
@@ -26,6 +27,7 @@ struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
 struct intel_dpll_mgr;
+struct intel_fbdev;
 struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
@@ -130,6 +132,12 @@ struct intel_display {
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
index 482a8c0d5a10..f1e47090c01e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -82,7 +82,6 @@ struct intel_cdclk_vals;
 struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
-struct intel_fbdev;
 struct intel_limit;
 struct intel_overlay;
 struct intel_overlay_error_state;
@@ -474,10 +473,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	/* list of fbdev register on this device */
-	struct intel_fbdev *fbdev;
-	struct work_struct fbdev_suspend_work;
-
 	struct drm_property *broadcast_rgb_property;
 	struct drm_property *force_audio_property;
 
-- 
2.34.1

