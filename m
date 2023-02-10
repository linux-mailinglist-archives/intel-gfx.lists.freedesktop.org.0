Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB9C691F99
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 14:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E1210E223;
	Fri, 10 Feb 2023 13:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B278910E223
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 13:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676034750; x=1707570750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A9NqTDN6NyEnLbwGR3z3MhcMsNVOc+K3Z5vl9mvgk+4=;
 b=b8diBgcHBzqlzbm2Y+PdrL5F5KhQ4q+Rs9zavUQg1HYhHuz3pPE0sdM8
 wg6uV0ib/pNND5m0c2b8gZ697/gP1zppbdd4Vqu1aO2MOh9v07OvvQ2XZ
 Jp6bye44XRwuJCQMv/Q4Q40G4Ctmq5o8UuHwGot2H65XYHUe/Pcpsvi9n
 Y5enWnp2/8iHUj1bpjWhRSqgAYZKM0CPFx+1AM54SrbcPA0qBQWU9orp/
 P1lK4aqYwAJ2hCqZYx4XumSubppR8dCq+bc2UR+6tQ/y4drtO+FqUkGdK
 REHbT12OQn5GXXxfujD6tibjRj7T4rvHSBSzaK8Kw1rTG79r/xgult/aA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="331721890"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="331721890"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:12:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="700473320"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="700473320"
Received: from mleshin-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 05:12:28 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Feb 2023 14:12:11 +0100
Message-Id: <20230210131211.985640-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND] drm/i915/display: Pass drm_i915_private
 as param to i915 funcs
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

For i915 functions pass struct drm_i915_private directly instead of
struct drm_device.

v2: Use to_i915(dev) directly without alias(Andrzej).

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi,

Just to be overzealous resending it as there was a little rebase
conflict and wanted to make sure that everythin was fine.

Andi

 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
 drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
 drivers/gpu/drm/i915/i915_driver.c           | 2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8c91fda40a80..322f3b2c741d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9051,7 +9051,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 	 * enabled. We do it last so that the async config cannot run
 	 * before the connectors are registered.
 	 */
-	intel_fbdev_initial_config_async(&i915->drm);
+	intel_fbdev_initial_config_async(i915);
 
 	/*
 	 * We need to coordinate the hotplugs with the asynchronous
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index d39db8050c698..10b9bc6da3ad0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -559,9 +559,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
 		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
 }
 
-void intel_fbdev_initial_config_async(struct drm_device *dev)
+void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
 {
-	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
+	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
 
 	if (!ifbdev)
 		return;
@@ -698,9 +698,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
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
index 0e95e9472fa3b..04fd523a50232 100644
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
index 7f9df11f56dd5..27b496afef374 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -940,7 +940,7 @@ static void i915_driver_lastclose(struct drm_device *dev)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 
-	intel_fbdev_restore_mode(dev);
+	intel_fbdev_restore_mode(i915);
 
 	if (HAS_DISPLAY(i915))
 		vga_switcheroo_process_delayed_switch();
-- 
2.39.1

