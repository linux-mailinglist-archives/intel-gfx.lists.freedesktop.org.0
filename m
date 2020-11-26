Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C54492C4CBA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 02:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77ADF6E497;
	Thu, 26 Nov 2020 01:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 305 seconds by postgrey-1.36 at gabe;
 Thu, 26 Nov 2020 01:41:23 UTC
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [205.139.111.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBFC6E497
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 01:41:23 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-lJHhVjPLO1Ws81i0jDAgkg-1; Wed, 25 Nov 2020 20:35:09 -0500
X-MC-Unique: lJHhVjPLO1Ws81i0jDAgkg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B46A612A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 01:35:08 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 544D110023AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 01:35:07 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 11:35:06 +1000
Message-Id: <20201126013506.29402-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH] drm/i915: refactor panel backlight control
 functions.
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

From: Dave Airlie <airlied@redhat.com>

This moves the functions into static const instead of having
funcs and data in the same struct.

The only problem is the power callback gets overridden in the
eDP code so deal with that, might be worth seeing if that can be
done differently.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 .../drm/i915/display/intel_display_types.h    |  22 ++-
 .../drm/i915/display/intel_dp_aux_backlight.c |  14 +-
 .../i915/display/intel_dsi_dcs_backlight.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 154 +++++++++++-------
 4 files changed, 130 insertions(+), 74 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f6f0626649e0..b07a1f0042d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -225,6 +225,18 @@ struct intel_encoder {
 	const struct drm_connector *audio_connector;
 };
 
+struct intel_panel_bl_funcs {
+	/* Connector and platform specific backlight functions */
+	int (*setup)(struct intel_connector *connector, enum pipe pipe);
+	u32 (*get)(struct intel_connector *connector);
+	void (*set)(const struct drm_connector_state *conn_state, u32 level);
+	void (*disable)(const struct drm_connector_state *conn_state);
+	void (*enable)(const struct intel_crtc_state *crtc_state,
+		       const struct drm_connector_state *conn_state);
+	u32 (*hz_to_pwm)(struct intel_connector *connector, u32 hz);
+	void (*power)(struct intel_connector *, bool enable);
+};
+
 struct intel_panel {
 	struct drm_display_mode *fixed_mode;
 	struct drm_display_mode *downclock_mode;
@@ -251,15 +263,9 @@ struct intel_panel {
 
 		struct backlight_device *device;
 
-		/* Connector and platform specific backlight functions */
-		int (*setup)(struct intel_connector *connector, enum pipe pipe);
-		u32 (*get)(struct intel_connector *connector);
-		void (*set)(const struct drm_connector_state *conn_state, u32 level);
-		void (*disable)(const struct drm_connector_state *conn_state);
-		void (*enable)(const struct intel_crtc_state *crtc_state,
-			       const struct drm_connector_state *conn_state);
-		u32 (*hz_to_pwm)(struct intel_connector *connector, u32 hz);
+		/* power can be overriden for edp. */
 		void (*power)(struct intel_connector *, bool enable);
+		const struct intel_panel_bl_funcs *funcs;
 	} backlight;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 51d27fc98d48..4fd536801b14 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -350,6 +350,14 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 	return false;
 }
 
+static const struct intel_panel_bl_funcs intel_dp_bl_funcs = {
+	.setup = intel_dp_aux_setup_backlight,
+	.enable = intel_dp_aux_enable_backlight,
+	.disable = intel_dp_aux_disable_backlight,
+	.set = intel_dp_aux_set_backlight,
+	.get = intel_dp_aux_get_backlight,
+};
+
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct intel_panel *panel = &intel_connector->panel;
@@ -379,11 +387,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 		return -ENODEV;
 	}
 
-	panel->backlight.setup = intel_dp_aux_setup_backlight;
-	panel->backlight.enable = intel_dp_aux_enable_backlight;
-	panel->backlight.disable = intel_dp_aux_disable_backlight;
-	panel->backlight.set = intel_dp_aux_set_backlight;
-	panel->backlight.get = intel_dp_aux_get_backlight;
+	panel->backlight.funcs = &intel_dp_bl_funcs;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index b53c50372918..5c508d51f526 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -156,6 +156,14 @@ static int dcs_setup_backlight(struct intel_connector *connector,
 	return 0;
 }
 
+static const struct intel_panel_bl_funcs dcs_bl_funcs = {
+	.setup = dcs_setup_backlight,
+	.enable = dcs_enable_backlight,
+	.disable = dcs_disable_backlight,
+	.set = dcs_set_backlight,
+	.get = dcs_get_backlight,
+};
+
 int intel_dsi_dcs_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct drm_device *dev = intel_connector->base.dev;
@@ -169,11 +177,7 @@ int intel_dsi_dcs_init_backlight_funcs(struct intel_connector *intel_connector)
 	if (drm_WARN_ON(dev, encoder->type != INTEL_OUTPUT_DSI))
 		return -EINVAL;
 
-	panel->backlight.setup = dcs_setup_backlight;
-	panel->backlight.enable = dcs_enable_backlight;
-	panel->backlight.disable = dcs_disable_backlight;
-	panel->backlight.set = dcs_set_backlight;
-	panel->backlight.get = dcs_get_backlight;
+	panel->backlight.funcs = &dcs_bl_funcs;
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 9f23bac0d792..f3c97e31929a 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -684,7 +684,7 @@ intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state,
 	drm_dbg_kms(&i915->drm, "set backlight PWM = %d\n", level);
 
 	level = intel_panel_compute_brightness(connector, level);
-	panel->backlight.set(conn_state, level);
+	panel->backlight.funcs->set(conn_state, level);
 }
 
 /* set backlight brightness to level in range [0..max], assuming hw min is
@@ -870,7 +870,7 @@ void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_st
 	if (panel->backlight.device)
 		panel->backlight.device->props.power = FB_BLANK_POWERDOWN;
 	panel->backlight.enabled = false;
-	panel->backlight.disable(old_conn_state);
+	panel->backlight.funcs->disable(old_conn_state);
 
 	mutex_unlock(&dev_priv->backlight_lock);
 }
@@ -1198,7 +1198,7 @@ static void __intel_panel_enable_backlight(const struct intel_crtc_state *crtc_s
 						 panel->backlight.device->props.max_brightness);
 	}
 
-	panel->backlight.enable(crtc_state, conn_state);
+	panel->backlight.funcs->enable(crtc_state, conn_state);
 	panel->backlight.enabled = true;
 	if (panel->backlight.device)
 		panel->backlight.device->props.power = FB_BLANK_UNBLANK;
@@ -1234,7 +1234,7 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
 	mutex_lock(&dev_priv->backlight_lock);
 
 	if (panel->backlight.enabled) {
-		val = panel->backlight.get(connector);
+		val = panel->backlight.funcs->get(connector);
 		val = intel_panel_compute_brightness(connector, val);
 	}
 
@@ -1567,13 +1567,13 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
 	u16 pwm_freq_hz = get_vbt_pwm_freq(dev_priv);
 	u32 pwm;
 
-	if (!panel->backlight.hz_to_pwm) {
+	if (!panel->backlight.funcs->hz_to_pwm) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "backlight frequency conversion not supported\n");
 		return 0;
 	}
 
-	pwm = panel->backlight.hz_to_pwm(connector, pwm_freq_hz);
+	pwm = panel->backlight.funcs->hz_to_pwm(connector, pwm_freq_hz);
 	if (!pwm) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "backlight frequency conversion failed\n");
@@ -1981,12 +1981,12 @@ int intel_panel_setup_backlight(struct drm_connector *connector, enum pipe pipe)
 	}
 
 	/* ensure intel_panel has been initialized first */
-	if (drm_WARN_ON(&dev_priv->drm, !panel->backlight.setup))
+	if (drm_WARN_ON(&dev_priv->drm, !panel->backlight.funcs))
 		return -ENODEV;
 
 	/* set level and max in panel struct */
 	mutex_lock(&dev_priv->backlight_lock);
-	ret = panel->backlight.setup(intel_connector, pipe);
+	ret = panel->backlight.funcs->setup(intel_connector, pipe);
 	mutex_unlock(&dev_priv->backlight_lock);
 
 	if (ret) {
@@ -2016,6 +2016,86 @@ static void intel_panel_destroy_backlight(struct intel_panel *panel)
 	panel->backlight.present = false;
 }
 
+static const struct intel_panel_bl_funcs bxt_funcs = {
+	.setup = bxt_setup_backlight,
+	.enable = bxt_enable_backlight,
+	.disable = bxt_disable_backlight,
+	.set = bxt_set_backlight,
+	.get = bxt_get_backlight,
+	.hz_to_pwm = bxt_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs cnp_funcs = {
+	.setup = cnp_setup_backlight,
+	.enable = cnp_enable_backlight,
+	.disable = cnp_disable_backlight,
+	.set = bxt_set_backlight,
+	.get = bxt_get_backlight,
+	.hz_to_pwm = cnp_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs lpt_funcs = {
+	.setup = lpt_setup_backlight,
+	.enable = lpt_enable_backlight,
+	.disable = lpt_disable_backlight,
+	.set = lpt_set_backlight,
+	.get = lpt_get_backlight,
+	.hz_to_pwm = lpt_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs spt_funcs = {
+	.setup = lpt_setup_backlight,
+	.enable = lpt_enable_backlight,
+	.disable = lpt_disable_backlight,
+	.set = lpt_set_backlight,
+	.get = lpt_get_backlight,
+	.hz_to_pwm = spt_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs pch_funcs = {
+	.setup = pch_setup_backlight,
+	.enable = pch_enable_backlight,
+	.disable = pch_disable_backlight,
+	.set = pch_set_backlight,
+	.get = pch_get_backlight,
+	.hz_to_pwm = pch_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs pwm_funcs = {
+	.setup = pwm_setup_backlight,
+	.enable = pwm_enable_backlight,
+	.disable = pwm_disable_backlight,
+	.set = pwm_set_backlight,
+	.get = pwm_get_backlight,
+};
+
+static const struct intel_panel_bl_funcs vlv_funcs = {
+	.setup = vlv_setup_backlight,
+	.enable = vlv_enable_backlight,
+	.disable = vlv_disable_backlight,
+	.set = vlv_set_backlight,
+	.get = vlv_get_backlight,
+	.hz_to_pwm = vlv_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs i965_funcs = {
+	.setup = i965_setup_backlight,
+	.enable = i965_enable_backlight,
+	.disable = i965_disable_backlight,
+	.set = i9xx_set_backlight,
+	.get = i9xx_get_backlight,
+	.hz_to_pwm = i965_hz_to_pwm,
+};
+
+static const struct intel_panel_bl_funcs i9xx_funcs = {
+	.setup = i9xx_setup_backlight,
+	.enable = i9xx_enable_backlight,
+	.disable = i9xx_disable_backlight,
+	.set = i9xx_set_backlight,
+	.get = i9xx_get_backlight,
+	.hz_to_pwm = i9xx_hz_to_pwm,
+};
+
 /* Set up chip specific backlight functions */
 static void
 intel_panel_init_backlight_funcs(struct intel_panel *panel)
@@ -2033,66 +2113,28 @@ intel_panel_init_backlight_funcs(struct intel_panel *panel)
 		return;
 
 	if (IS_GEN9_LP(dev_priv)) {
-		panel->backlight.setup = bxt_setup_backlight;
-		panel->backlight.enable = bxt_enable_backlight;
-		panel->backlight.disable = bxt_disable_backlight;
-		panel->backlight.set = bxt_set_backlight;
-		panel->backlight.get = bxt_get_backlight;
-		panel->backlight.hz_to_pwm = bxt_hz_to_pwm;
+		panel->backlight.funcs = &bxt_funcs;
 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP) {
-		panel->backlight.setup = cnp_setup_backlight;
-		panel->backlight.enable = cnp_enable_backlight;
-		panel->backlight.disable = cnp_disable_backlight;
-		panel->backlight.set = bxt_set_backlight;
-		panel->backlight.get = bxt_get_backlight;
-		panel->backlight.hz_to_pwm = cnp_hz_to_pwm;
+		panel->backlight.funcs = &cnp_funcs;
 	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_LPT) {
-		panel->backlight.setup = lpt_setup_backlight;
-		panel->backlight.enable = lpt_enable_backlight;
-		panel->backlight.disable = lpt_disable_backlight;
-		panel->backlight.set = lpt_set_backlight;
-		panel->backlight.get = lpt_get_backlight;
 		if (HAS_PCH_LPT(dev_priv))
-			panel->backlight.hz_to_pwm = lpt_hz_to_pwm;
+			panel->backlight.funcs = &lpt_funcs;
 		else
-			panel->backlight.hz_to_pwm = spt_hz_to_pwm;
+			panel->backlight.funcs = &spt_funcs;
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
-		panel->backlight.setup = pch_setup_backlight;
-		panel->backlight.enable = pch_enable_backlight;
-		panel->backlight.disable = pch_disable_backlight;
-		panel->backlight.set = pch_set_backlight;
-		panel->backlight.get = pch_get_backlight;
-		panel->backlight.hz_to_pwm = pch_hz_to_pwm;
+		panel->backlight.funcs = &pch_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
-			panel->backlight.setup = pwm_setup_backlight;
-			panel->backlight.enable = pwm_enable_backlight;
-			panel->backlight.disable = pwm_disable_backlight;
-			panel->backlight.set = pwm_set_backlight;
-			panel->backlight.get = pwm_get_backlight;
+			panel->backlight.funcs = &pwm_funcs;
 		} else {
-			panel->backlight.setup = vlv_setup_backlight;
-			panel->backlight.enable = vlv_enable_backlight;
-			panel->backlight.disable = vlv_disable_backlight;
-			panel->backlight.set = vlv_set_backlight;
-			panel->backlight.get = vlv_get_backlight;
-			panel->backlight.hz_to_pwm = vlv_hz_to_pwm;
+			panel->backlight.funcs = &vlv_funcs;
 		}
 	} else if (IS_GEN(dev_priv, 4)) {
-		panel->backlight.setup = i965_setup_backlight;
-		panel->backlight.enable = i965_enable_backlight;
-		panel->backlight.disable = i965_disable_backlight;
-		panel->backlight.set = i9xx_set_backlight;
-		panel->backlight.get = i9xx_get_backlight;
-		panel->backlight.hz_to_pwm = i965_hz_to_pwm;
+		panel->backlight.funcs = &i965_funcs;
 	} else {
-		panel->backlight.setup = i9xx_setup_backlight;
-		panel->backlight.enable = i9xx_enable_backlight;
-		panel->backlight.disable = i9xx_disable_backlight;
-		panel->backlight.set = i9xx_set_backlight;
-		panel->backlight.get = i9xx_get_backlight;
-		panel->backlight.hz_to_pwm = i9xx_hz_to_pwm;
+		panel->backlight.funcs = &i9xx_funcs;
 	}
+	panel->backlight.power = panel->backlight.funcs->power;
 }
 
 enum drm_connector_status
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
