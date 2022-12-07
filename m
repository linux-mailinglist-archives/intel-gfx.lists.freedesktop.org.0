Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9348E645690
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497B110E384;
	Wed,  7 Dec 2022 09:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA7F110E1AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405714; x=1701941714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XL7d8/PAcGsRyPi07CemwDeI+UCvP+vd0+xM8njDB8E=;
 b=lLHzvrPQnWJaoUz4qlqLV0lwKa+sDZzEts1UrFWEQASJRJdtGS/ZPDnh
 K199eKR533AVdglBqEV35UK+GFYITsUhs5DH2dN5HmK9qbEmzviZLuv2L
 Esn3jyBvjLKjWa049tiC7HDTY7invMx+3U7mqfGYNfOENPb59N05BoAWL
 9qVocHg5Efb1y3xJFpBNwIAlZI8zRonprO4JveRHDzT8XmZN9T4cRBizc
 yjLgOEZ72ubdt7KLPuApQN/r0kg1HnhagjEbJ4F+lerzsGNnPs5vlpfAC
 ulcPJPwt2anLVv9edc2wE/lN/qJ1OPIRFL7H3yCEJm6VBXVfyb9QnvtGo g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300268329"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300268329"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="891732870"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="891732870"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:45 +0200
Message-Id: <6a791b06ab84bb8fb719cd46934eb09644e3edc7.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/backlight: drop drm_device
 local variables in favor of i915
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
Cc: Jani Nikula <jani.nikula@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer only having struct drm_i915_private *i915 around. Drop the
drm_device *dev locals.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
---
 .../gpu/drm/i915/display/intel_backlight.c    | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index c34bb34ede3e..3ed5c64c3816 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -861,10 +861,11 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 static int intel_backlight_device_update_status(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	struct drm_device *dev = connector->base.dev;
 
-	drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
+	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
+
 	DRM_DEBUG_KMS("updating intel_backlight, brightness=%d/%d\n",
 		      bd->props.brightness, bd->props.max_brightness);
 	intel_panel_set_backlight(connector->base.state, bd->props.brightness,
@@ -886,28 +887,28 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 		bd->props.power = FB_BLANK_POWERDOWN;
 	}
 
-	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
 	return 0;
 }
 
 static int intel_backlight_device_get_brightness(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
-	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		u32 hw_level;
 
-		drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
+		drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
 
 		hw_level = intel_panel_get_backlight(connector);
 		ret = scale_hw_to_user(connector,
 				       hw_level, bd->props.max_brightness);
 
-		drm_modeset_unlock(&dev->mode_config.connection_mutex);
+		drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 	}
 
 	return ret;
@@ -1467,18 +1468,17 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 static int ext_pwm_setup_backlight(struct intel_connector *connector,
 				   enum pipe pipe)
 {
-	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	const char *desc;
 	u32 level;
 
 	/* Get the right PWM chip for DSI backlight according to VBT */
 	if (connector->panel.vbt.dsi.config->pwm_blc == PPS_BLC_PMIC) {
-		panel->backlight.pwm = pwm_get(dev->dev, "pwm_pmic_backlight");
+		panel->backlight.pwm = pwm_get(i915->drm.dev, "pwm_pmic_backlight");
 		desc = "PMIC";
 	} else {
-		panel->backlight.pwm = pwm_get(dev->dev, "pwm_soc_backlight");
+		panel->backlight.pwm = pwm_get(i915->drm.dev, "pwm_soc_backlight");
 		desc = "SoC";
 	}
 
-- 
2.34.1

