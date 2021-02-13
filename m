Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEF431A9DC
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 05:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F4806E2E3;
	Sat, 13 Feb 2021 04:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7132B6E288
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 04:28:09 +0000 (UTC)
IronPort-SDR: fwe4/5NwXuuhhj3Zk1DjBvs8KBKi8NvYHddtYA3HmplznT86RLF6htJaDCkkCCPliS5Ylsz7Jj
 A47AtkdAo3qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="246573777"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="246573777"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
IronPort-SDR: j+I+4PXGj5YxVZfPWZx9j+EZ+huVRuksa/DWeUWcde0Yn6MuMwAP2514MoLlXORtjf6kibSbWd
 MUc7/h0yj85A==
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="511516602"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 20:27:54 -0800
Message-Id: <20210213042756.953007-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213042756.953007-1-lucas.demarchi@intel.com>
References: <20210213042756.953007-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915: group display-related register calls
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

intel_gt_driver_register() may be called earlier than
intel_opregion_register() and acpi_video_register(), so move it up.

intel_display_debugfs_register() may be called later, together with the
other display-related initializations. There is a slight change in
behavior that sysfs files will show up before the display-related
debugfs files, but that shouldn't be a problem - userspace shouldn't be
relying in debugfs.

This allows us to group all the display-related calls under a single
check for "HAS_DISPLAY()" that can be later moved to a better place.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.c | 64 +++++++++++++++++----------------
 1 file changed, 34 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 1f65c15775a0..e3d83c75d968 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -681,38 +681,39 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	}
 
 	i915_debugfs_register(dev_priv);
-	if (HAS_DISPLAY(dev_priv))
-		intel_display_debugfs_register(dev_priv);
 	i915_setup_sysfs(dev_priv);
 
 	/* Depends on sysfs having been initialized */
 	i915_perf_register(dev_priv);
 
+	intel_gt_driver_register(&dev_priv->gt);
+
 	if (HAS_DISPLAY(dev_priv)) {
+		intel_display_debugfs_register(dev_priv);
+
 		/* Must be done after probing outputs */
 		intel_opregion_register(dev_priv);
 		acpi_video_register();
-	}
 
-	intel_gt_driver_register(&dev_priv->gt);
-
-	intel_audio_init(dev_priv);
+		intel_audio_init(dev_priv);
 
-	/*
-	 * Some ports require correctly set-up hpd registers for detection to
-	 * work properly (leading to ghost connected connector status), e.g. VGA
-	 * on gm45.  Hence we can only set up the initial fbdev config after hpd
-	 * irqs are fully enabled. We do it last so that the async config
-	 * cannot run before the connectors are registered.
-	 */
-	intel_fbdev_initial_config_async(dev);
+		/*
+		 * Some ports require correctly set-up hpd registers for
+		 * detection to work properly (leading to ghost connected
+		 * connector status), e.g. VGA on gm45.  Hence we can only set
+		 * up the initial fbdev config after hpd irqs are fully
+		 * enabled. We do it last so that the async config cannot run
+		 * before the connectors are registered.
+		 */
+		intel_fbdev_initial_config_async(dev);
 
-	/*
-	 * We need to coordinate the hotplugs with the asynchronous fbdev
-	 * configuration, for which we use the fbdev->async_cookie.
-	 */
-	if (HAS_DISPLAY(dev_priv))
+		/*
+		 * We need to coordinate the hotplugs with the asynchronous
+		 * fbdev configuration, for which we use the
+		 * fbdev->async_cookie.
+		 */
 		drm_kms_helper_poll_init(dev);
+	}
 
 	intel_power_domains_enable(dev_priv);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
@@ -736,20 +737,23 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(dev_priv);
 
-	intel_fbdev_unregister(dev_priv);
-	intel_audio_deinit(dev_priv);
+	if (HAS_DISPLAY(dev_priv)) {
+		intel_fbdev_unregister(dev_priv);
+		intel_audio_deinit(dev_priv);
+
+		/*
+		 * After flushing the fbdev (incl. a late async config which
+		 * will have delayed queuing of a hotplug event), then flush
+		 * the hotplug events.
+		 */
+		drm_kms_helper_poll_fini(&dev_priv->drm);
+		drm_atomic_helper_shutdown(&dev_priv->drm);
 
-	/*
-	 * After flushing the fbdev (incl. a late async config which will
-	 * have delayed queuing of a hotplug event), then flush the hotplug
-	 * events.
-	 */
-	drm_kms_helper_poll_fini(&dev_priv->drm);
-	drm_atomic_helper_shutdown(&dev_priv->drm);
+		acpi_video_unregister();
+		intel_opregion_unregister(dev_priv);
+	}
 
 	intel_gt_driver_unregister(&dev_priv->gt);
-	acpi_video_unregister();
-	intel_opregion_unregister(dev_priv);
 
 	i915_perf_unregister(dev_priv);
 	i915_pmu_unregister(dev_priv);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
