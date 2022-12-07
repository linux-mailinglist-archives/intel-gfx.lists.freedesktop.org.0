Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 492BA64568F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487DE10E1AC;
	Wed,  7 Dec 2022 09:35:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C918E10E1AC
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405711; x=1701941711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PjPOuQOObQYpe/bIGMYh1niJz7O8Anqz3crj7Rtl2XU=;
 b=UEgbliolGfXW/XRURcZPZhlOBP23jQHzeZ4YS2UUDtVt+yzyXV/8LzaK
 xleozVCY3aeuzN0XLxDbFmEn7s53w6CltLsTgZG5c5ZSkg48UzyKNNfgD
 b5AbTqXcv3udWdnPCnqLgmczBtAQlnAepbQnKm6eiC4JFpkQZsVBzI5nr
 PQnKhQfYZ15uv7ouSxHxMC4GT9/UnmqcFCmGpoiuQDDioiDTyZqrDdrmR
 na8bhBi0wA9qRfNPDwSPGp07HLBtnSIcEZfPXWKzZTkIg0ZxcDrmAbHgr
 DHpn0mRE2+cHrmssOPu5qbFS9xPHSlpaXa3Q1d8l7FW8th2V5fAmRUjmC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="318702680"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318702680"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715125324"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715125324"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:44 +0200
Message-Id: <fc8b260bd8fa338edb312637f18ca7e6550d820d.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/backlight: mass rename dev_priv
 to i915
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

With the implicit dev_priv usage gone, we can rename dev_priv to i915
throughout. Do some drive-by whitespace cleanups while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
---
 .../gpu/drm/i915/display/intel_backlight.c    | 517 +++++++++---------
 1 file changed, 248 insertions(+), 269 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 71af88a70461..c34bb34ede3e 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -83,16 +83,16 @@ static u32 scale_hw_to_user(struct intel_connector *connector,
 
 u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON(&dev_priv->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
 
-	if (dev_priv->params.invert_brightness < 0)
+	if (i915->params.invert_brightness < 0)
 		return val;
 
-	if (dev_priv->params.invert_brightness > 0 ||
-	    intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)) {
+	if (i915->params.invert_brightness > 0 ||
+	    intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)) {
 		return panel->backlight.pwm_level_max - val + panel->backlight.pwm_level_min;
 	}
 
@@ -111,10 +111,10 @@ void intel_backlight_set_pwm_level(const struct drm_connector_state *conn_state,
 
 u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON_ONCE(&dev_priv->drm,
+	drm_WARN_ON_ONCE(&i915->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
 	val = scale(val, panel->backlight.min, panel->backlight.max,
@@ -125,14 +125,14 @@ u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 
 u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON_ONCE(&dev_priv->drm,
+	drm_WARN_ON_ONCE(&i915->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
-	if (dev_priv->params.invert_brightness > 0 ||
-	    (dev_priv->params.invert_brightness == 0 && intel_has_quirk(dev_priv, QUIRK_INVERT_BRIGHTNESS)))
+	if (i915->params.invert_brightness > 0 ||
+	    (i915->params.invert_brightness == 0 && intel_has_quirk(i915, QUIRK_INVERT_BRIGHTNESS)))
 		val = panel->backlight.pwm_level_max - (val - panel->backlight.pwm_level_min);
 
 	return scale(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max,
@@ -141,32 +141,32 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 
 static u32 lpt_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(i915, BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 pch_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return intel_de_read(dev_priv, BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(i915, BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 val;
 
-	val = intel_de_read(dev_priv, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
-	if (DISPLAY_VER(dev_priv) < 4)
+	val = intel_de_read(i915, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	if (DISPLAY_VER(i915) < 4)
 		val >>= 1;
 
 	if (panel->backlight.combination_mode) {
 		u8 lbpc;
 
-		pci_read_config_byte(to_pci_dev(dev_priv->drm.dev), LBPC, &lbpc);
+		pci_read_config_byte(to_pci_dev(i915->drm.dev), LBPC, &lbpc);
 		val *= lbpc;
 	}
 
@@ -175,21 +175,20 @@ static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unuse
 
 static u32 vlv_get_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return 0;
 
-	return intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 bxt_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	return intel_de_read(dev_priv,
-			     BXT_BLC_PWM_DUTY(panel->backlight.controller));
+	return intel_de_read(i915, BXT_BLC_PWM_DUTY(panel->backlight.controller));
 }
 
 static u32 ext_pwm_get_backlight(struct intel_connector *connector, enum pipe unused)
@@ -204,69 +203,69 @@ static u32 ext_pwm_get_backlight(struct intel_connector *connector, enum pipe un
 static void lpt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	u32 val;
 
-	u32 val = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, val | level);
+	val = intel_de_read(i915, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(i915, BLC_PWM_PCH_CTL2, val | level);
 }
 
 static void pch_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(dev_priv, BLC_PWM_CPU_CTL, tmp | level);
+	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(i915, BLC_PWM_CPU_CTL, tmp | level);
 }
 
 static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp, mask;
 
-	drm_WARN_ON(&dev_priv->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
 
 	if (panel->backlight.combination_mode) {
 		u8 lbpc;
 
 		lbpc = level * 0xfe / panel->backlight.pwm_level_max + 1;
 		level /= lbpc;
-		pci_write_config_byte(to_pci_dev(dev_priv->drm.dev), LBPC, lbpc);
+		pci_write_config_byte(to_pci_dev(i915->drm.dev), LBPC, lbpc);
 	}
 
-	if (DISPLAY_VER(dev_priv) == 4) {
+	if (DISPLAY_VER(i915) == 4) {
 		mask = BACKLIGHT_DUTY_CYCLE_MASK;
 	} else {
 		level <<= 1;
 		mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
 	}
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CTL) & ~mask;
-	intel_de_write(dev_priv, BLC_PWM_CTL, tmp | level);
+	tmp = intel_de_read(i915, BLC_PWM_CTL) & ~mask;
+	intel_de_write(i915, BLC_PWM_CTL, tmp | level);
 }
 
 static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(dev_priv, VLV_BLC_PWM_CTL(pipe), tmp | level);
+	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), tmp | level);
 }
 
 static void bxt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	intel_de_write(dev_priv,
-		       BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
+	intel_de_write(i915, BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
 }
 
 static void ext_pwm_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -296,7 +295,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 			      u32 user_level, u32 user_max)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 hw_level;
 
@@ -309,9 +308,9 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (!panel->backlight.present || !conn_state->crtc)
 		return;
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 
-	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
+	drm_WARN_ON(&i915->drm, panel->backlight.max == 0);
 
 	hw_level = clamp_user_to_hw(connector, user_level, user_max);
 	panel->backlight.level = hw_level;
@@ -325,13 +324,13 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 }
 
 static void lpt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, level);
@@ -344,31 +343,29 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	 * This needs rework if we need to add support for CPU PWM on PCH split
 	 * platforms.
 	 */
-	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
+	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 	if (tmp & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "cpu backlight was enabled, disabling\n");
-		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2,
-			       tmp & ~BLM_PWM_ENABLE);
+		drm_dbg_kms(&i915->drm, "cpu backlight was enabled, disabling\n");
+		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
+	intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -378,62 +375,59 @@ static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_st
 
 static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
-	struct drm_i915_private *dev_priv = to_i915(old_conn_state->connector->dev);
+	struct drm_i915_private *i915 = to_i915(old_conn_state->connector->dev);
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv, BLC_PWM_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(i915, BLC_PWM_CTL2);
+	intel_de_write(i915, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
-	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe),
-		       tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
+	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), tmp & ~BLM_PWM_ENABLE);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv,
-			    BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       tmp & ~BXT_BLC_PWM_ENABLE);
 
 	if (panel->backlight.controller == 1) {
-		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
+		val = intel_de_read(i915, UTIL_PIN_CTL);
 		val &= ~UTIL_PIN_ENABLE;
-		intel_de_write(dev_priv, UTIL_PIN_CTL, val);
+		intel_de_write(i915, UTIL_PIN_CTL, val);
 	}
 }
 
 static void cnp_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(dev_priv,
-			    BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       tmp & ~BXT_BLC_PWM_ENABLE);
 }
 
@@ -451,7 +445,7 @@ static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn
 void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
 	if (!panel->backlight.present)
@@ -463,68 +457,66 @@ void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 	 * backlight. This will leave the backlight on unnecessarily when
 	 * another client is not activated.
 	 */
-	if (dev_priv->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Skipping backlight disable on vga switch\n");
+	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
+		drm_dbg_kms(&i915->drm, "Skipping backlight disable on vga switch\n");
 		return;
 	}
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 
 	if (panel->backlight.device)
 		panel->backlight.device->props.power = FB_BLANK_POWERDOWN;
 	panel->backlight.enabled = false;
 	panel->backlight.funcs->disable(old_conn_state, 0);
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 }
 
 static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 pch_ctl1, pch_ctl2, schicken;
 
-	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "pch backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
-	if (HAS_PCH_LPT(dev_priv)) {
-		schicken = intel_de_read(dev_priv, SOUTH_CHICKEN2);
+	if (HAS_PCH_LPT(i915)) {
+		schicken = intel_de_read(i915, SOUTH_CHICKEN2);
 		if (panel->backlight.alternate_pwm_increment)
 			schicken |= LPT_PWM_GRANULARITY;
 		else
 			schicken &= ~LPT_PWM_GRANULARITY;
-		intel_de_write(dev_priv, SOUTH_CHICKEN2, schicken);
+		intel_de_write(i915, SOUTH_CHICKEN2, schicken);
 	} else {
-		schicken = intel_de_read(dev_priv, SOUTH_CHICKEN1);
+		schicken = intel_de_read(i915, SOUTH_CHICKEN1);
 		if (panel->backlight.alternate_pwm_increment)
 			schicken |= SPT_PWM_GRANULARITY;
 		else
 			schicken &= ~SPT_PWM_GRANULARITY;
-		intel_de_write(dev_priv, SOUTH_CHICKEN1, schicken);
+		intel_de_write(i915, SOUTH_CHICKEN1, schicken);
 	}
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
 		pch_ctl1 |= BLM_PCH_POLARITY;
 
 	/* After LPT, override is the default. */
-	if (HAS_PCH_LPT(dev_priv))
+	if (HAS_PCH_LPT(i915))
 		pch_ctl1 |= BLM_PCH_OVERRIDE_ENABLE;
 
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
-	intel_de_posting_read(dev_priv, BLC_PWM_PCH_CTL1);
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
-		       pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -534,61 +526,60 @@ static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
 
-	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 	if (cpu_ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "cpu backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "cpu backlight already enabled\n");
 		cpu_ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2);
+		intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
 	}
 
-	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "pch backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "pch backlight already enabled\n");
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
 	if (cpu_transcoder == TRANSCODER_EDP)
 		cpu_ctl2 = BLM_TRANSCODER_EDP;
 	else
 		cpu_ctl2 = BLM_PIPE(cpu_transcoder);
-	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2);
-	intel_de_posting_read(dev_priv, BLC_PWM_CPU_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
+	intel_de_posting_read(i915, BLC_PWM_CPU_CTL2);
+	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_backlight_set_pwm_level(conn_state, level);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
 		pch_ctl1 |= BLM_PCH_POLARITY;
 
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
-	intel_de_posting_read(dev_priv, BLC_PWM_PCH_CTL1);
-	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
-		       pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
+	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
 }
 
 static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, freq;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(i915, BLC_PWM_CTL);
 	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
-		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
-		intel_de_write(dev_priv, BLC_PWM_CTL, 0);
+		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		intel_de_write(i915, BLC_PWM_CTL, 0);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -598,11 +589,11 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	ctl = freq << 17;
 	if (panel->backlight.combination_mode)
 		ctl |= BLM_LEGACY_MODE;
-	if (IS_PINEVIEW(dev_priv) && panel->backlight.active_low_pwm)
+	if (IS_PINEVIEW(i915) && panel->backlight.active_low_pwm)
 		ctl |= BLM_POLARITY_PNV;
 
-	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
-	intel_de_posting_read(dev_priv, BLC_PWM_CTL);
+	intel_de_write(i915, BLC_PWM_CTL, ctl);
+	intel_de_posting_read(i915, BLC_PWM_CTL);
 
 	/* XXX: combine this into above write? */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -612,24 +603,24 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
 	 * that has backlight.
 	 */
-	if (DISPLAY_VER(dev_priv) == 2)
-		intel_de_write(dev_priv, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
+	if (DISPLAY_VER(i915) == 2)
+		intel_de_write(i915, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
 }
 
 static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 ctl, ctl2, freq;
 
-	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(i915, BLC_PWM_CTL2);
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
 		ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
+		intel_de_write(i915, BLC_PWM_CTL2, ctl2);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -637,16 +628,16 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 		freq /= 0xff;
 
 	ctl = freq << 16;
-	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
+	intel_de_write(i915, BLC_PWM_CTL, ctl);
 
 	ctl2 = BLM_PIPE(pipe);
 	if (panel->backlight.combination_mode)
 		ctl2 |= BLM_COMBINATION_MODE;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
-	intel_de_posting_read(dev_priv, BLC_PWM_CTL2);
-	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(i915, BLC_PWM_CTL2, ctl2);
+	intel_de_posting_read(i915, BLC_PWM_CTL2);
+	intel_de_write(i915, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
 
 	intel_backlight_set_pwm_level(conn_state, level);
 }
@@ -655,20 +646,20 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	u32 ctl, ctl2;
 
-	ctl2 = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
 		ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe), ctl2);
+		intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
 	}
 
 	ctl = panel->backlight.pwm_level_max << 16;
-	intel_de_write(dev_priv, VLV_BLC_PWM_CTL(pipe), ctl);
+	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), ctl);
 
 	/* XXX: combine this into above write? */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -676,50 +667,45 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 	ctl2 = 0;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe), ctl2);
-	intel_de_posting_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
-	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe),
-		       ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
+	intel_de_posting_read(i915, VLV_BLC_PWM_CTL2(pipe));
+	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2 | BLM_PWM_ENABLE);
 }
 
 static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	u32 pwm_ctl, val;
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
+		val = intel_de_read(i915, UTIL_PIN_CTL);
 		if (val & UTIL_PIN_ENABLE) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "util pin already enabled\n");
+			drm_dbg_kms(&i915->drm, "util pin already enabled\n");
 			val &= ~UTIL_PIN_ENABLE;
-			intel_de_write(dev_priv, UTIL_PIN_CTL, val);
+			intel_de_write(i915, UTIL_PIN_CTL, val);
 		}
 
 		val = 0;
 		if (panel->backlight.util_pin_active_low)
 			val |= UTIL_PIN_POLARITY;
-		intel_de_write(dev_priv, UTIL_PIN_CTL,
+		intel_de_write(i915, UTIL_PIN_CTL,
 			       val | UTIL_PIN_PIPE(pipe) | UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
 	}
 
-	pwm_ctl = intel_de_read(dev_priv,
-				BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		intel_de_write(dev_priv,
-			       BXT_BLC_PWM_CTL(panel->backlight.controller),
+		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 			       pwm_ctl);
 	}
 
-	intel_de_write(dev_priv,
-		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
+	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -728,11 +714,9 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       pwm_ctl);
-	intel_de_posting_read(dev_priv,
-			      BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
+	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
@@ -740,22 +724,19 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl;
 
-	pwm_ctl = intel_de_read(dev_priv,
-				BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
-		drm_dbg_kms(&dev_priv->drm, "backlight already enabled\n");
+		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		intel_de_write(dev_priv,
-			       BXT_BLC_PWM_CTL(panel->backlight.controller),
+		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 			       pwm_ctl);
 	}
 
-	intel_de_write(dev_priv,
-		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
+	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -764,11 +745,9 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       pwm_ctl);
-	intel_de_posting_read(dev_priv,
-			      BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
+	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
@@ -810,37 +789,37 @@ void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 
 	if (!panel->backlight.present)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(&i915->drm, "pipe %c\n", pipe_name(pipe));
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 
 	__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 }
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 static u32 intel_panel_get_backlight(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 val = 0;
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 
 	if (panel->backlight.enabled)
 		val = panel->backlight.funcs->get(connector, intel_connector_get_pipe(connector));
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 
-	drm_dbg_kms(&dev_priv->drm, "get backlight PWM = %d\n", val);
+	drm_dbg_kms(&i915->drm, "get backlight PWM = %d\n", val);
 	return val;
 }
 
@@ -859,16 +838,16 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 				      u32 user_level, u32 user_max)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 hw_level;
 
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 
-	drm_WARN_ON(&dev_priv->drm, panel->backlight.max == 0);
+	drm_WARN_ON(&i915->drm, panel->backlight.max == 0);
 
 	hw_level = scale_user_to_hw(connector, user_level, user_max);
 	panel->backlight.level = hw_level;
@@ -876,7 +855,7 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 }
 
 static int intel_backlight_device_update_status(struct backlight_device *bd)
@@ -915,11 +894,11 @@ static int intel_backlight_device_get_brightness(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
 	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		u32 hw_level;
 
 		drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
@@ -1038,9 +1017,9 @@ void intel_backlight_device_unregister(struct intel_connector *connector)
  */
 static u32 cnp_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(dev_priv)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(i915)->rawclk_freq),
 				 pwm_freq_hz);
 }
 
@@ -1077,7 +1056,7 @@ static u32 spt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 lpt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 mul, clock;
 
@@ -1086,7 +1065,7 @@ static u32 lpt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	else
 		mul = 128;
 
-	if (HAS_PCH_LPT_H(dev_priv))
+	if (HAS_PCH_LPT_H(i915))
 		clock = MHz(135); /* LPT:H */
 	else
 		clock = MHz(24); /* LPT:LP */
@@ -1100,9 +1079,9 @@ static u32 lpt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(dev_priv)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(RUNTIME_INFO(i915)->rawclk_freq),
 				 pwm_freq_hz * 128);
 }
 
@@ -1116,13 +1095,13 @@ static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int clock;
 
-	if (IS_PINEVIEW(dev_priv))
-		clock = KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
+	if (IS_PINEVIEW(i915))
+		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
 	else
-		clock = KHz(dev_priv->display.cdclk.hw.cdclk);
+		clock = KHz(i915->display.cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 32);
 }
@@ -1134,13 +1113,13 @@ static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int clock;
 
-	if (IS_G4X(dev_priv))
-		clock = KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
+	if (IS_G4X(i915))
+		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
 	else
-		clock = KHz(dev_priv->display.cdclk.hw.cdclk);
+		clock = KHz(i915->display.cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
 }
@@ -1152,17 +1131,17 @@ static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int mul, clock;
 
-	if ((intel_de_read(dev_priv, CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
-		if (IS_CHERRYVIEW(dev_priv))
+	if ((intel_de_read(i915, CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
+		if (IS_CHERRYVIEW(i915))
 			clock = KHz(19200);
 		else
 			clock = MHz(25);
 		mul = 16;
 	} else {
-		clock = KHz(RUNTIME_INFO(dev_priv)->rawclk_freq);
+		clock = KHz(RUNTIME_INFO(i915)->rawclk_freq);
 		mul = 128;
 	}
 
@@ -1171,16 +1150,16 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 
 static u16 get_vbt_pwm_freq(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	u16 pwm_freq_hz = connector->panel.vbt.backlight.pwm_freq_hz;
 
 	if (pwm_freq_hz) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "VBT defined backlight frequency %u Hz\n",
 			    pwm_freq_hz);
 	} else {
 		pwm_freq_hz = 200;
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "default backlight frequency %u Hz\n",
 			    pwm_freq_hz);
 	}
@@ -1190,20 +1169,20 @@ static u16 get_vbt_pwm_freq(struct intel_connector *connector)
 
 static u32 get_backlight_max_vbt(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u16 pwm_freq_hz = get_vbt_pwm_freq(connector);
 	u32 pwm;
 
 	if (!panel->backlight.pwm_funcs->hz_to_pwm) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "backlight frequency conversion not supported\n");
 		return 0;
 	}
 
 	pwm = panel->backlight.pwm_funcs->hz_to_pwm(connector, pwm_freq_hz);
 	if (!pwm) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "backlight frequency conversion failed\n");
 		return 0;
 	}
@@ -1216,11 +1195,11 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
  */
 static u32 get_backlight_min_vbt(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	int min;
 
-	drm_WARN_ON(&dev_priv->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
 
 	/*
 	 * XXX: If the vbt value is 255, it makes min equal to max, which leads
@@ -1231,7 +1210,7 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 	 */
 	min = clamp_t(int, connector->panel.vbt.backlight.min_brightness, 0, 64);
 	if (min != connector->panel.vbt.backlight.min_brightness) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "clamping VBT min backlight %d/255 to %d/255\n",
 			    connector->panel.vbt.backlight.min_brightness, min);
 	}
@@ -1242,24 +1221,24 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 
 static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
 	bool alt, cpu_mode;
 
-	if (HAS_PCH_LPT(dev_priv))
-		alt = intel_de_read(dev_priv, SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
+	if (HAS_PCH_LPT(i915))
+		alt = intel_de_read(i915, SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
 	else
-		alt = intel_de_read(dev_priv, SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
+		alt = intel_de_read(i915, SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
 	panel->backlight.alternate_pwm_increment = alt;
 
-	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(i915, BLC_PWM_PCH_CTL2);
 	panel->backlight.pwm_level_max = pch_ctl2 >> 16;
 
-	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1271,22 +1250,22 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 	panel->backlight.pwm_enabled = pch_ctl1 & BLM_PCH_PWM_ENABLE;
 
-	cpu_mode = panel->backlight.pwm_enabled && HAS_PCH_LPT(dev_priv) &&
+	cpu_mode = panel->backlight.pwm_enabled && HAS_PCH_LPT(i915) &&
 		   !(pch_ctl1 & BLM_PCH_OVERRIDE_ENABLE) &&
 		   (cpu_ctl2 & BLM_PWM_ENABLE);
 
 	if (cpu_mode) {
 		val = pch_get_backlight(connector, unused);
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "CPU backlight register was enabled, switching to PCH override\n");
 
 		/* Write converted CPU PWM value to PCH override register */
 		lpt_set_backlight(connector->base.state, val);
-		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
+		intel_de_write(i915, BLC_PWM_PCH_CTL1,
 			       pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);
 
-		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2,
+		intel_de_write(i915, BLC_PWM_CPU_CTL2,
 			       cpu_ctl2 & ~BLM_PWM_ENABLE);
 	}
 
@@ -1295,14 +1274,14 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 static int pch_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
 
-	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(i915, BLC_PWM_PCH_CTL2);
 	panel->backlight.pwm_level_max = pch_ctl2 >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1313,7 +1292,7 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 	panel->backlight.pwm_level_min = get_backlight_min_vbt(connector);
 
-	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
 	panel->backlight.pwm_enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
 		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
 
@@ -1322,16 +1301,16 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, val;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(i915, BLC_PWM_CTL);
 
-	if (DISPLAY_VER(dev_priv) == 2 || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
+	if (DISPLAY_VER(i915) == 2 || IS_I915GM(i915) || IS_I945GM(i915))
 		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
 
-	if (IS_PINEVIEW(dev_priv))
+	if (IS_PINEVIEW(i915))
 		panel->backlight.active_low_pwm = ctl & BLM_POLARITY_PNV;
 
 	panel->backlight.pwm_level_max = ctl >> 17;
@@ -1360,15 +1339,15 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 static int i965_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2;
 
-	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(i915, BLC_PWM_CTL2);
 	panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
+	ctl = intel_de_read(i915, BLC_PWM_CTL);
 	panel->backlight.pwm_level_max = ctl >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1389,17 +1368,17 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2;
 
-	if (drm_WARN_ON(&dev_priv->drm, pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return -ENODEV;
 
-	ctl2 = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe));
+	ctl = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
 	panel->backlight.pwm_level_max = ctl >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1418,25 +1397,25 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 static int
 bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl, val;
 
 	panel->backlight.controller = connector->panel.vbt.backlight.controller;
 
-	pwm_ctl = intel_de_read(dev_priv,
+	pwm_ctl = intel_de_read(i915,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
+		val = intel_de_read(i915, UTIL_PIN_CTL);
 		panel->backlight.util_pin_active_low =
 					val & UTIL_PIN_POLARITY;
 	}
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.pwm_level_max =
-		intel_de_read(dev_priv, BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1454,7 +1433,7 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 static int
 cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl;
 
@@ -1465,12 +1444,12 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	 */
 	panel->backlight.controller = 0;
 
-	pwm_ctl = intel_de_read(dev_priv,
+	pwm_ctl = intel_de_read(i915,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.pwm_level_max =
-		intel_de_read(dev_priv, BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1489,7 +1468,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 				   enum pipe pipe)
 {
 	struct drm_device *dev = connector->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_panel *panel = &connector->panel;
 	const char *desc;
 	u32 level;
@@ -1504,7 +1483,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 	}
 
 	if (IS_ERR(panel->backlight.pwm)) {
-		drm_err(&dev_priv->drm, "Failed to get the %s PWM chip\n",
+		drm_err(&i915->drm, "Failed to get the %s PWM chip\n",
 			desc);
 		panel->backlight.pwm = NULL;
 		return -ENODEV;
@@ -1522,7 +1501,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 		level = intel_backlight_invert_pwm_level(connector, level);
 		panel->backlight.pwm_enabled = true;
 
-		drm_dbg_kms(&dev_priv->drm, "PWM already enabled at freq %ld, VBT freq %d, level %d\n",
+		drm_dbg_kms(&i915->drm, "PWM already enabled at freq %ld, VBT freq %d, level %d\n",
 			    NSEC_PER_SEC / (unsigned long)panel->backlight.pwm_state.period,
 			    get_vbt_pwm_freq(connector), level);
 	} else {
@@ -1531,7 +1510,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
 	}
 
-	drm_info(&dev_priv->drm, "Using %s PWM for LCD backlight control\n",
+	drm_info(&i915->drm, "Using %s PWM for LCD backlight control\n",
 		 desc);
 	return 0;
 }
@@ -1594,47 +1573,47 @@ void intel_backlight_update(struct intel_atomic_state *state,
 			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 	if (!panel->backlight.enabled)
 		__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 }
 
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	int ret;
 
 	if (!connector->panel.vbt.backlight.present) {
-		if (intel_has_quirk(dev_priv, QUIRK_BACKLIGHT_PRESENT)) {
-			drm_dbg_kms(&dev_priv->drm,
+		if (intel_has_quirk(i915, QUIRK_BACKLIGHT_PRESENT)) {
+			drm_dbg_kms(&i915->drm,
 				    "no backlight present per VBT, but present per quirk\n");
 		} else {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(&i915->drm,
 				    "no backlight present per VBT\n");
 			return 0;
 		}
 	}
 
 	/* ensure intel_panel has been initialized first */
-	if (drm_WARN_ON(&dev_priv->drm, !panel->backlight.funcs))
+	if (drm_WARN_ON(&i915->drm, !panel->backlight.funcs))
 		return -ENODEV;
 
 	/* set level and max in panel struct */
-	mutex_lock(&dev_priv->display.backlight.lock);
+	mutex_lock(&i915->display.backlight.lock);
 	ret = panel->backlight.funcs->setup(connector, pipe);
-	mutex_unlock(&dev_priv->display.backlight.lock);
+	mutex_unlock(&i915->display.backlight.lock);
 
 	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(&i915->drm,
 			    "failed to setup backlight for connector %s\n",
 			    connector->base.name);
 		return ret;
@@ -1642,7 +1621,7 @@ int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 
 	panel->backlight.present = true;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(&i915->drm,
 		    "Connector %s backlight initialized, %s, brightness %u/%u\n",
 		    connector->base.name,
 		    str_enabled_disabled(panel->backlight.enabled),
@@ -1753,30 +1732,30 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 {
 	struct intel_connector *connector =
 		container_of(panel, struct intel_connector, panel);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI &&
 	    intel_dsi_dcs_init_backlight_funcs(connector) == 0)
 		return;
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		panel->backlight.pwm_funcs = &bxt_pwm_funcs;
-	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP) {
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_CNP) {
 		panel->backlight.pwm_funcs = &cnp_pwm_funcs;
-	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_LPT) {
-		if (HAS_PCH_LPT(dev_priv))
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_LPT) {
+		if (HAS_PCH_LPT(i915))
 			panel->backlight.pwm_funcs = &lpt_pwm_funcs;
 		else
 			panel->backlight.pwm_funcs = &spt_pwm_funcs;
-	} else if (HAS_PCH_SPLIT(dev_priv)) {
+	} else if (HAS_PCH_SPLIT(i915)) {
 		panel->backlight.pwm_funcs = &pch_pwm_funcs;
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
 			panel->backlight.pwm_funcs = &ext_pwm_funcs;
 		} else {
 			panel->backlight.pwm_funcs = &vlv_pwm_funcs;
 		}
-	} else if (DISPLAY_VER(dev_priv) == 4) {
+	} else if (DISPLAY_VER(i915) == 4) {
 		panel->backlight.pwm_funcs = &i965_pwm_funcs;
 	} else {
 		panel->backlight.pwm_funcs = &i9xx_pwm_funcs;
@@ -1786,7 +1765,7 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
 			return;
 
-		if (!intel_has_quirk(dev_priv, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+		if (!intel_has_quirk(i915, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
 			connector->panel.backlight.power = intel_pps_backlight_power;
 	}
 
-- 
2.34.1

