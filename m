Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A117A31A9DE
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 05:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0D86E828;
	Sat, 13 Feb 2021 04:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DD86E2E3
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 04:28:09 +0000 (UTC)
IronPort-SDR: BrPs283c6hTptS3Khd5bYiwKvyJqgLh2SbjR4V5FeCWrP8wEEJ0serCunsLLCJRN2uBa5r2srJ
 jDbCdcLFCenQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="246573778"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="246573778"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
IronPort-SDR: u7b59xpvL4Z/70xo+yO+tuRHei6d+DDkWPw1/mYeoiVCXXmXl5LwRzmn9ZJ53r6FH/rylLbjB3
 DI1lXL016PbA==
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="511516605"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 20:27:55 -0800
Message-Id: <20210213042756.953007-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213042756.953007-1-lucas.demarchi@intel.com>
References: <20210213042756.953007-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/4] drm/i915/display: move register functions to
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
 drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              | 45 +----------------
 3 files changed, 58 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23ec68498800..bb814126d4a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -24,6 +24,7 @@
  *	Eric Anholt <eric@anholt.net>
  */
 
+#include <acpi/video.h>
 #include <linux/i2c.h>
 #include <linux/input.h>
 #include <linux/intel-iommu.h>
@@ -43,6 +44,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 
+#include "display/intel_audio.h"
 #include "display/intel_crt.h"
 #include "display/intel_ddi.h"
 #include "display/intel_display_debugfs.h"
@@ -13944,6 +13946,57 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
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
index e3757ecabbf7..375ec2bccebd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -654,6 +654,9 @@ u32 intel_plane_adjust_aligned_offset(int *x, int *y,
 unsigned int intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane);
 unsigned int intel_tile_height(const struct drm_framebuffer *fb, int color_plane);
 
+void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_unregister(struct drm_i915_private *i915);
+
 /* modesetting */
 void intel_modeset_init_hw(struct drm_i915_private *i915);
 int intel_modeset_init_noirq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index e3d83c75d968..8c5d46ba847b 100644
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
@@ -688,32 +686,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
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
@@ -737,21 +710,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
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
