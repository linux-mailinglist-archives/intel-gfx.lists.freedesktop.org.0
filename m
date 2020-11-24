Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 580B72C308C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:13:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAF16E524;
	Tue, 24 Nov 2020 19:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9900489F61
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:13:33 +0000 (UTC)
IronPort-SDR: /Hj8AvHy4HiETcwyssJZgIqtMQvCBpIKK0dyWaip2pBPN8d0Onji1V/pUXOEms8nL0h9PN5hoW
 g1aTJ4CHI3UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256710245"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256710245"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
IronPort-SDR: 172jZwiTh2e+TBwQbeTBPuL5LN9nJJzcz4N6oYjoZW3VKNQPyrYXopeSOfsgN37rNXbpqgc0SR
 zwZjdLdMKqmQ==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="312676222"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:13:15 -0800
Message-Id: <20201124191316.1660749-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201124191316.1660749-1-lucas.demarchi@intel.com>
References: <20201124191316.1660749-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: group display-related register
 calls
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
---
 drivers/gpu/drm/i915/i915_drv.c | 62 ++++++++++++++++++---------------
 1 file changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index c3fad01ce26f..89af4baa531c 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -676,38 +676,39 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
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
@@ -731,19 +732,22 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
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
 
-	/*
-	 * After flushing the fbdev (incl. a late async config which will
-	 * have delayed queuing of a hotplug event), then flush the hotplug
-	 * events.
-	 */
-	drm_kms_helper_poll_fini(&dev_priv->drm);
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
