Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC416734E6
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 10:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4F410E02C;
	Thu, 19 Jan 2023 09:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC49010E02C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 09:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674122301; x=1705658301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u+Cyl9FLMqd3MuBLkmFbBZD3xGhrk0oolpj6/ZUaVlU=;
 b=S0qjVGMXwSE/dTaOftE8IvpahxgwKDRqjJgX7kgVguBgXxkcdMkirkrR
 GQIK7F7nX3hNHsGBiIWzMU3k2PQGWpuEsdHioSGcXSB5n65NuVEVes3EQ
 EZsSxzFcIj2EVpyNlrGtvpwOfAfYbymg2uNVA/YyqMow6dllc1NJlllLm
 jVNF0PFyTFibRnBK8ioSCrgUwHf1CeP/b0uX1DuRwOzJ+5pz4eVYR2O4J
 ncfuTwSA1VUildDryJnnSOGRaXqKK5I9DNfZ06L9468iiKNDetcgI6Fbi
 3yrZT+BlffvwEtWJdk8iQmmbyqnxOx21reG6jAH1frRwNaQd7/fMtgtir w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411483874"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="411483874"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:58:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="728600962"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="728600962"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:58:19 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Jan 2023 10:58:08 +0100
Message-Id: <20230119095808.28004-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Pass drm_i915_private as
 param to i915 funcs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For i915 functions pass struct drm_i915_private directly instead of
struct drm_device.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
 drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
 drivers/gpu/drm/i915/i915_driver.c           | 4 +++-
 4 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c38a54efedbe..7584f65c6a7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8999,7 +8999,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * enabled. We do it last so that the async config cannot run
 	 * before the connectors are registered.
 	 */
-	intel_fbdev_initial_config_async(&i915->drm);
+	intel_fbdev_initial_config_async(i915);
 
 	/*
 	 * We need to coordinate the hotplugs with the asynchronous
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 19f3b5d92a55..c2c52f8e5887 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
 		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
 }
 
-void intel_fbdev_initial_config_async(struct drm_device *dev)
+void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
+	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
@@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
 		drm_fb_helper_hotplug_event(&ifbdev->helper);
 }
 
-void intel_fbdev_restore_mode(struct drm_device *dev)
+void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
+	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 0e95e9472fa3..04fd523a5023 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -15,12 +15,12 @@ struct intel_framebuffer;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
 int intel_fbdev_init(struct drm_device *dev);
-void intel_fbdev_initial_config_async(struct drm_device *dev);
+void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
 void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
 void intel_fbdev_fini(struct drm_i915_private *dev_priv);
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
 void intel_fbdev_output_poll_changed(struct drm_device *dev);
-void intel_fbdev_restore_mode(struct drm_device *dev);
+void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
 #else
 static inline int intel_fbdev_init(struct drm_device *dev)
@@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
 	return 0;
 }
 
-static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
+static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
 {
 }
 
@@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
 {
 }
 
-static inline void intel_fbdev_restore_mode(struct drm_device *dev)
+static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
 {
 }
 static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6469c7c1e154..cd6069c1762d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1071,7 +1071,9 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
  */
 static void i915_driver_lastclose(struct drm_device *dev)
 {
-	intel_fbdev_restore_mode(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
+
+	intel_fbdev_restore_mode(i915);
 
 	vga_switcheroo_process_delayed_switch();
 }
-- 
2.39.0

