Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F102C300E0F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 21:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E96B6EA4F;
	Fri, 22 Jan 2021 20:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BDE6EA48
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 20:49:15 +0000 (UTC)
IronPort-SDR: gVFn7qz1VUgpgnw9qSwoOnDr2Cy/zlSGIjbqDJBNj0Kfv2Mokzg7iHdKbLTk4sZBv2FGqp05Zw
 KuLjysKFbhrg==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243581175"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="243581175"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:49:13 -0800
IronPort-SDR: vgOVwfmtye3iRpInZCR3kxtnP1Y0DfIi7vq7J1IvZqCTaZf7w7rijgYXp6mJ+SGTR9LjQP8kle
 oGqVdDucoZkg==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="468038806"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:49:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 12:48:58 -0800
Message-Id: <20210122204858.1319260-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210122204858.1319260-1-lucas.demarchi@intel.com>
References: <20210122204858.1319260-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/display: move register functions to
 display/
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that all display-related functions are grouped in
i915_driver_register(), move them to display/ so we reduce the amount of
display calls from the rest of the driver.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/display/intel_display.c | 54 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              | 45 +---------------
 3 files changed, 59 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7ec7d94b8cdb..3b22db1f40a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -24,6 +24,7 @@
  *	Eric Anholt <eric@anholt.net>
  */
 
+#include <acpi/video.h>
 #include <linux/i2c.h>
 #include <linux/input.h>
 #include <linux/intel-iommu.h>
@@ -43,7 +44,9 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 
+#include "display/intel_audio.h"
 #include "display/intel_crt.h"
+#include "display/intel_display_debugfs.h"
 #include "display/intel_ddi.h"
 #include "display/intel_display_debugfs.h"
 #include "display/intel_dp.h"
@@ -15952,6 +15955,57 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_bios_driver_remove(i915);
 }
 
+void intel_display_driver_register(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	intel_display_debugfs_register(i915);
+
+	/* Must be done after probing outputs */
+	intel_opregion_register(i915);
+	acpi_video_register();
+
+	intel_audio_init(i915);
+
+	/*
+	 * Some ports require correctly set-up hpd registers for
+	 * detection to work properly (leading to ghost connected
+	 * connector status), e.g. VGA on gm45.  Hence we can only set
+	 * up the initial fbdev config after hpd irqs are fully
+	 * enabled. We do it last so that the async config cannot run
+	 * before the connectors are registered.
+	 */
+	intel_fbdev_initial_config_async(&i915->drm);
+
+	/*
+	 * We need to coordinate the hotplugs with the asynchronous
+	 * fbdev configuration, for which we use the
+	 * fbdev->async_cookie.
+	 */
+	drm_kms_helper_poll_init(&i915->drm);
+}
+
+void intel_display_driver_unregister(struct drm_i915_private *i915)
+{
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	intel_fbdev_unregister(i915);
+	intel_audio_deinit(i915);
+
+	/*
+	 * After flushing the fbdev (incl. a late async config which
+	 * will have delayed queuing of a hotplug event), then flush
+	 * the hotplug events.
+	 */
+	drm_kms_helper_poll_fini(&i915->drm);
+	drm_atomic_helper_shutdown(&i915->drm);
+
+	acpi_video_unregister();
+	intel_opregion_unregister(i915);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 struct intel_display_error_state {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 64ffa34544a7..f57a71d6a5d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -654,6 +654,9 @@ struct intel_encoder *
 intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state);
 
+void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_unregister(struct drm_i915_private *i915);
+
 /* modesetting */
 void intel_modeset_init_hw(struct drm_i915_private *i915);
 int intel_modeset_init_noirq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index ef85fc368e3a..f7d5d8306579 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -38,7 +38,6 @@
 #include <linux/slab.h>
 #include <linux/vga_switcheroo.h>
 #include <linux/vt.h>
-#include <acpi/video.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_ioctl.h>
@@ -51,7 +50,6 @@
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_csr.h"
-#include "display/intel_display_debugfs.h"
 #include "display/intel_display_types.h"
 #include "display/intel_dp.h"
 #include "display/intel_fbdev.h"
@@ -678,32 +676,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_gt_driver_register(&dev_priv->gt);
 
-	if (HAS_DISPLAY(dev_priv)) {
-		intel_display_debugfs_register(dev_priv);
-
-		/* Must be done after probing outputs */
-		intel_opregion_register(dev_priv);
-		acpi_video_register();
-
-		intel_audio_init(dev_priv);
-
-		/*
-		 * Some ports require correctly set-up hpd registers for
-		 * detection to work properly (leading to ghost connected
-		 * connector status), e.g. VGA on gm45.  Hence we can only set
-		 * up the initial fbdev config after hpd irqs are fully
-		 * enabled. We do it last so that the async config cannot run
-		 * before the connectors are registered.
-		 */
-		intel_fbdev_initial_config_async(dev);
-
-		/*
-		 * We need to coordinate the hotplugs with the asynchronous
-		 * fbdev configuration, for which we use the
-		 * fbdev->async_cookie.
-		 */
-		drm_kms_helper_poll_init(dev);
-	}
+	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
@@ -727,21 +700,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv)) {
-		intel_fbdev_unregister(dev_priv);
-		intel_audio_deinit(dev_priv);
-
-		/*
-		 * After flushing the fbdev (incl. a late async config which
-		 * will have delayed queuing of a hotplug event), then flush
-		 * the hotplug events.
-		 */
-		drm_kms_helper_poll_fini(&dev_priv->drm);
-		drm_atomic_helper_shutdown(&dev_priv->drm);
-
-		acpi_video_unregister();
-		intel_opregion_unregister(dev_priv);
-	}
+	intel_display_driver_unregister(dev_priv);
 
 	intel_gt_driver_unregister(&dev_priv->gt);
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
