Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5956CA5CCFD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 19:01:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E44C910E652;
	Tue, 11 Mar 2025 18:00:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4iP1Yjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A0E10E640;
 Tue, 11 Mar 2025 18:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741716058; x=1773252058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NT6Q9HocqNlxfVn1WbKD/+aG3eOymgdbZGvZiD8Ta2U=;
 b=e4iP1YjbodADwvXFAg3BC2wkJIRikDhE2qW5f5VlYXnOwEsaE5tTVo98
 TrLE6xSyXtvPDh4Bad4SMuhAp0ofNkQHPQ6fqgBUFPlS2iISbsLK978HA
 zMNJmBnw8o2OCzEoc8JlKkTuKSwFp/ggpukgsCk0k8/OvnOBqfgKrducJ
 6lLkPDigBk4r/20vkz/m/7nSOoz1FoSf1ekztvmixX0Wlns+9M62XkiqT
 O5Yw25p/DxmxfRPGMPhHRNuBLaUCc5GuPuojn+7nDvHctmAoHJd822YhH
 uxa7g1ykDc99fIL2XSttwt1F6v16Ru0j9WQ3plJ2b2XsnghEMzhE5gS0d A==;
X-CSE-ConnectionGUID: SkiG/QnBQ8eba7jzX3dtew==
X-CSE-MsgGUID: usMa+aztRuSky36d28uBkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42805776"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="42805776"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:58 -0700
X-CSE-ConnectionGUID: oJI2wi6zQISVR6QHz+mP/w==
X-CSE-MsgGUID: MRYAYcHjRd+xCffKF7UZTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125457098"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 11:00:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/9] drm/i915/connector: convert intel_connector.c to struct
 intel_display
Date: Tue, 11 Mar 2025 20:00:36 +0200
Message-Id: <cfee8d2ee404376109ce42ee3662899995e9fa67.1741715981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_connector.c to struct
intel_display. i915_inject_probe_failure() remains the only call that
requires i915 pointer.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    | 45 ++++++++++---------
 1 file changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index e42357bd9e80..6c81c9f2fd09 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -31,8 +31,10 @@
 #include <drm/drm_probe_helper.h>
 
 #include "i915_drv.h"
+#include "i915_utils.h"
 #include "intel_backlight.h"
 #include "intel_connector.h"
+#include "intel_display_core.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
@@ -154,13 +156,14 @@ void intel_connector_destroy(struct drm_connector *connector)
 int intel_connector_register(struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	int ret;
 
 	ret = intel_backlight_device_register(intel_connector);
 	if (ret)
 		goto err;
 
-	if (i915_inject_probe_failure(to_i915(connector->dev))) {
+	if (i915_inject_probe_failure(i915)) {
 		ret = -EFAULT;
 		goto err_backlight;
 	}
@@ -204,10 +207,10 @@ bool intel_connector_get_hw_state(struct intel_connector *connector)
 
 enum pipe intel_connector_get_pipe(struct intel_connector *connector)
 {
-	struct drm_device *dev = connector->base.dev;
+	struct intel_display *display = to_intel_display(connector);
 
-	drm_WARN_ON(dev,
-		    !drm_modeset_is_locked(&dev->mode_config.connection_mutex));
+	drm_WARN_ON(display->drm,
+		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
 
 	if (!connector->base.state->crtc)
 		return INVALID_PIPE;
@@ -264,20 +267,19 @@ static const struct drm_prop_enum_list force_audio_names[] = {
 void
 intel_attach_force_audio_property(struct drm_connector *connector)
 {
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->display.properties.force_audio;
+	prop = display->properties.force_audio;
 	if (prop == NULL) {
-		prop = drm_property_create_enum(dev, 0,
-					   "audio",
-					   force_audio_names,
-					   ARRAY_SIZE(force_audio_names));
+		prop = drm_property_create_enum(display->drm, 0,
+						"audio",
+						force_audio_names,
+						ARRAY_SIZE(force_audio_names));
 		if (prop == NULL)
 			return;
 
-		dev_priv->display.properties.force_audio = prop;
+		display->properties.force_audio = prop;
 	}
 	drm_object_attach_property(&connector->base, prop, 0);
 }
@@ -291,20 +293,19 @@ static const struct drm_prop_enum_list broadcast_rgb_names[] = {
 void
 intel_attach_broadcast_rgb_property(struct drm_connector *connector)
 {
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_property *prop;
 
-	prop = dev_priv->display.properties.broadcast_rgb;
+	prop = display->properties.broadcast_rgb;
 	if (prop == NULL) {
-		prop = drm_property_create_enum(dev, DRM_MODE_PROP_ENUM,
-					   "Broadcast RGB",
-					   broadcast_rgb_names,
-					   ARRAY_SIZE(broadcast_rgb_names));
+		prop = drm_property_create_enum(display->drm, DRM_MODE_PROP_ENUM,
+						"Broadcast RGB",
+						broadcast_rgb_names,
+						ARRAY_SIZE(broadcast_rgb_names));
 		if (prop == NULL)
 			return;
 
-		dev_priv->display.properties.broadcast_rgb = prop;
+		display->properties.broadcast_rgb = prop;
 	}
 
 	drm_object_attach_property(&connector->base, prop, 0);
@@ -336,14 +337,14 @@ intel_attach_dp_colorspace_property(struct drm_connector *connector)
 void
 intel_attach_scaling_mode_property(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	u32 scaling_modes;
 
 	scaling_modes = BIT(DRM_MODE_SCALE_ASPECT) |
 		BIT(DRM_MODE_SCALE_FULLSCREEN);
 
 	/* On GMCH platforms borders are only possible on the LVDS port */
-	if (!HAS_GMCH(i915) || connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
+	if (!HAS_GMCH(display) || connector->connector_type == DRM_MODE_CONNECTOR_LVDS)
 		scaling_modes |= BIT(DRM_MODE_SCALE_CENTER);
 
 	drm_connector_attach_scaling_mode_property(connector, scaling_modes);
-- 
2.39.5

