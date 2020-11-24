Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCCD2C308A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566B06E51C;
	Tue, 24 Nov 2020 19:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE326E51C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:13:33 +0000 (UTC)
IronPort-SDR: GbPiJ+RP2P+7V73chkAYZMGbXaXDvaErjiD4ZS29lkMeAhOTcJvU5J6XNMdbNAFOWJ5GUEDQt6
 93J1Jv062TtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256710247"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256710247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:33 -0800
IronPort-SDR: qUFzMZMqK7necRUPlY6m7To+CKnBJ9gQEwZeNw+IrkepekoZGOQGK/bTIaOLGV/Loj//jPgwQ5
 cxrWH20a3rlw==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="312676227"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:13:16 -0800
Message-Id: <20201124191316.1660749-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124191316.1660749-1-lucas.demarchi@intel.com>
References: <20201124191316.1660749-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: move register functions
 to display/
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
---
 drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              | 44 +---------------
 3 files changed, 58 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 595183f7b60f..7bf0fb2a99a5 100644
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
 #include "display/intel_dp.h"
 #include "display/intel_dp_mst.h"
@@ -19709,6 +19712,56 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
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
+
+	acpi_video_unregister();
+	intel_opregion_unregister(i915);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 struct intel_display_error_state {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5e0d42d82c11..c1963aa54b77 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -645,6 +645,9 @@ bool
 intel_format_info_is_yuv_semiplanar(const struct drm_format_info *info,
 				    uint64_t modifier);
 
+void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_unregister(struct drm_i915_private *i915);
+
 /* modesetting */
 void intel_modeset_init_hw(struct drm_i915_private *i915);
 int intel_modeset_init_noirq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 89af4baa531c..9dc9248fa168 100644
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
@@ -683,32 +681,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
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
@@ -732,20 +705,7 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
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
