Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EDDA272B1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 14:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D3410E349;
	Tue,  4 Feb 2025 13:25:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZqtHhGOD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA1310E349;
 Tue,  4 Feb 2025 13:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738675470; x=1770211470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EiLVx6jTKmzhv/Yl+txmznW3fgMowp915CH8/1Iqwlo=;
 b=ZqtHhGODNCyc10CT+wiAdy4SHcjF1lRj5sDpm1yzl2NDLA5eVREdkaBz
 Zj2O2mkWbYMmb5ehUOJmn03Lvc7ryK4vDITOCuZ3L5ZekUIMuTpKv3hiu
 MJog/3T/OAzUH4Cqvrh/Vdz4f1LpC9wnRGpj94mFotBKjgw1sgf3D3MNp
 xpI0FVG1ovbWjAIsyw+grQUWwnsuL+QecfqWUmSd3Mi7xnAU20M1z7noA
 kWIw0Ub0ZW4+8GOZNSMwkp3h+ABfXVIpvNaU0ObD+qT5l0NaxbClp6bwh
 gC8wxSV5wWAnxUY3NHeklm6qx+MyCJ2rcfUVJswTe2VGNET2dOmNG7UQH w==;
X-CSE-ConnectionGUID: XDlJxVmQT12cZNOuU5DrMw==
X-CSE-MsgGUID: 0VJoLg2JRC2aZFGvA+0Pvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39355312"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39355312"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:24:29 -0800
X-CSE-ConnectionGUID: tC8kFBZsQfuazswH2a69Ug==
X-CSE-MsgGUID: +ssyB5PxQN68h5lKeuI+KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="141469885"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 05:24:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/backlight: convert to use struct intel_display
Date: Tue,  4 Feb 2025 15:24:23 +0200
Message-Id: <20250204132423.2910978-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Going forward, struct intel_display will be the main display data
structure. Convert as much as possible of backlight code to use it.

There are some stragglers mainly around PCH checks.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 494 +++++++++---------
 1 file changed, 260 insertions(+), 234 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 7e6ce905bdaf..477b21af71a4 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -104,20 +104,20 @@ u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 void intel_backlight_set_pwm_level(const struct drm_connector_state *conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight PWM = %d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] set backlight PWM = %d\n",
 		    connector->base.base.id, connector->base.name, val);
 	panel->backlight.pwm_funcs->set(conn_state, val);
 }
 
 u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_WARN_ON_ONCE(&i915->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 panel->backlight.max == 0 || panel->backlight.pwm_level_max == 0);
 
 	val = scale(val, panel->backlight.min, panel->backlight.max,
@@ -145,32 +145,33 @@ u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 
 static u32 lpt_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	return intel_de_read(i915, BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(display, BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 pch_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	return intel_de_read(i915, BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(display, BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 val;
 
-	val = intel_de_read(i915, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
-	if (DISPLAY_VER(i915) < 4)
+	val = intel_de_read(display, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	if (DISPLAY_VER(display) < 4)
 		val >>= 1;
 
 	if (panel->backlight.combination_mode) {
+		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 		u8 lbpc;
 
-		pci_read_config_byte(to_pci_dev(i915->drm.dev), LBPC, &lbpc);
+		pci_read_config_byte(pdev, LBPC, &lbpc);
 		val *= lbpc;
 	}
 
@@ -179,20 +180,20 @@ static u32 i9xx_get_backlight(struct intel_connector *connector, enum pipe unuse
 
 static u32 vlv_get_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(display->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return 0;
 
-	return intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(display, VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 bxt_get_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	return intel_de_read(i915, BXT_BLC_PWM_DUTY(panel->backlight.controller));
+	return intel_de_read(display, BXT_BLC_PWM_DUTY(panel->backlight.controller));
 }
 
 static u32 ext_pwm_get_backlight(struct intel_connector *connector, enum pipe unused)
@@ -207,69 +208,70 @@ static u32 ext_pwm_get_backlight(struct intel_connector *connector, enum pipe un
 static void lpt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u32 val;
 
-	val = intel_de_read(i915, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(i915, BLC_PWM_PCH_CTL2, val | level);
+	val = intel_de_read(display, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(display, BLC_PWM_PCH_CTL2, val | level);
 }
 
 static void pch_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u32 tmp;
 
-	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(i915, BLC_PWM_CPU_CTL, tmp | level);
+	tmp = intel_de_read(display, BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(display, BLC_PWM_CPU_CTL, tmp | level);
 }
 
 static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp, mask;
 
-	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
 
 	if (panel->backlight.combination_mode) {
+		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 		u8 lbpc;
 
 		lbpc = level * 0xfe / panel->backlight.pwm_level_max + 1;
 		level /= lbpc;
-		pci_write_config_byte(to_pci_dev(i915->drm.dev), LBPC, lbpc);
+		pci_write_config_byte(pdev, LBPC, lbpc);
 	}
 
-	if (DISPLAY_VER(i915) == 4) {
+	if (DISPLAY_VER(display) == 4) {
 		mask = BACKLIGHT_DUTY_CYCLE_MASK;
 	} else {
 		level <<= 1;
 		mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
 	}
 
-	tmp = intel_de_read(i915, BLC_PWM_CTL) & ~mask;
-	intel_de_write(i915, BLC_PWM_CTL, tmp | level);
+	tmp = intel_de_read(display, BLC_PWM_CTL) & ~mask;
+	intel_de_write(display, BLC_PWM_CTL, tmp | level);
 }
 
 static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), tmp | level);
+	tmp = intel_de_read(display, VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(display, VLV_BLC_PWM_CTL(pipe), tmp | level);
 }
 
 static void bxt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	intel_de_write(i915, BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
+	intel_de_write(display, BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
 }
 
 static void ext_pwm_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -284,10 +286,10 @@ static void
 intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight level = %d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] set backlight level = %d\n",
 		    connector->base.base.id, connector->base.name, level);
 
 	panel->backlight.funcs->set(conn_state, level);
@@ -300,7 +302,7 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 			      u32 user_level, u32 user_max)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 hw_level;
 
@@ -313,9 +315,9 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (!panel->backlight.present || !conn_state->crtc)
 		return;
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 
-	drm_WARN_ON(&i915->drm, panel->backlight.max == 0);
+	drm_WARN_ON(display->drm, panel->backlight.max == 0);
 
 	hw_level = clamp_user_to_hw(connector, user_level, user_max);
 	panel->backlight.level = hw_level;
@@ -329,13 +331,13 @@ void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 }
 
 static void lpt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, level);
@@ -348,26 +350,26 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	 * This needs rework if we need to add support for CPU PWM on PCH split
 	 * platforms.
 	 */
-	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
+	tmp = intel_de_read(display, BLC_PWM_CPU_CTL2);
 	if (tmp & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight was enabled, disabling\n",
+		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] CPU backlight was enabled, disabling\n",
 			    connector->base.base.id, connector->base.name);
-		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+		intel_de_write(display, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
-	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
+	intel_de_rmw(display, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
+	intel_de_rmw(display, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
 
-	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
+	intel_de_rmw(display, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -377,48 +379,49 @@ static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_st
 
 static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
-	struct drm_i915_private *i915 = to_i915(old_conn_state->connector->dev);
+	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
+	struct intel_display *display = to_intel_display(connector);
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
+	intel_de_rmw(display, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
+	intel_de_rmw(display, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_rmw(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		     BXT_BLC_PWM_ENABLE, 0);
 
 	if (panel->backlight.controller == 1)
-		intel_de_rmw(i915, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
+		intel_de_rmw(display, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
 }
 
 static void cnp_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_rmw(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		     BXT_BLC_PWM_ENABLE, 0);
 }
 
@@ -436,7 +439,7 @@ static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn
 void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
 	if (!panel->backlight.present)
@@ -448,49 +451,51 @@ void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 	 * backlight. This will leave the backlight on unnecessarily when
 	 * another client is not activated.
 	 */
-	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Skipping backlight disable on vga switch\n",
+	if (display->drm->switch_power_state == DRM_SWITCH_POWER_CHANGING) {
+		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Skipping backlight disable on vga switch\n",
 			    connector->base.base.id, connector->base.name);
 		return;
 	}
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 
 	if (panel->backlight.device)
 		panel->backlight.device->props.power = BACKLIGHT_POWER_OFF;
 	panel->backlight.enabled = false;
 	panel->backlight.funcs->disable(old_conn_state, 0);
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 }
 
 static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 pch_ctl1, pch_ctl2;
 
-	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(display, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
 	if (HAS_PCH_LPT(i915))
-		intel_de_rmw(i915, SOUTH_CHICKEN2, LPT_PWM_GRANULARITY,
+		intel_de_rmw(display, SOUTH_CHICKEN2, LPT_PWM_GRANULARITY,
 			     panel->backlight.alternate_pwm_increment ?
 			     LPT_PWM_GRANULARITY : 0);
 	else
-		intel_de_rmw(i915, SOUTH_CHICKEN1, SPT_PWM_GRANULARITY,
+		intel_de_rmw(display, SOUTH_CHICKEN1, SPT_PWM_GRANULARITY,
 			     panel->backlight.alternate_pwm_increment ?
 			     SPT_PWM_GRANULARITY : 0);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
-	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(display, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
@@ -500,9 +505,9 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (HAS_PCH_LPT(i915))
 		pch_ctl1 |= BLM_PCH_OVERRIDE_ENABLE;
 
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
-	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(display, BLC_PWM_PCH_CTL1);
+	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -512,63 +517,66 @@ static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
 
-	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(display, BLC_PWM_CPU_CTL2);
 	if (cpu_ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] CPU backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		cpu_ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
+		intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2);
 	}
 
-	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(display, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] PCH backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
 	if (cpu_transcoder == TRANSCODER_EDP)
 		cpu_ctl2 = BLM_TRANSCODER_EDP;
 	else
 		cpu_ctl2 = BLM_PIPE(cpu_transcoder);
-	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
-	intel_de_posting_read(i915, BLC_PWM_CPU_CTL2);
-	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2);
+	intel_de_posting_read(display, BLC_PWM_CPU_CTL2);
+	intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_backlight_set_pwm_level(conn_state, level);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
-	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(display, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
 		pch_ctl1 |= BLM_PCH_POLARITY;
 
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
-	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(display, BLC_PWM_PCH_CTL1);
+	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
 }
 
 static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, freq;
 
-	ctl = intel_de_read(i915, BLC_PWM_CTL);
+	ctl = intel_de_read(display, BLC_PWM_CTL);
 	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
-		intel_de_write(i915, BLC_PWM_CTL, 0);
+		intel_de_write(display, BLC_PWM_CTL, 0);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -578,11 +586,11 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	ctl = freq << 17;
 	if (panel->backlight.combination_mode)
 		ctl |= BLM_LEGACY_MODE;
-	if (IS_PINEVIEW(i915) && panel->backlight.active_low_pwm)
+	if (display->platform.pineview && panel->backlight.active_low_pwm)
 		ctl |= BLM_POLARITY_PNV;
 
-	intel_de_write(i915, BLC_PWM_CTL, ctl);
-	intel_de_posting_read(i915, BLC_PWM_CTL);
+	intel_de_write(display, BLC_PWM_CTL, ctl);
+	intel_de_posting_read(display, BLC_PWM_CTL);
 
 	/* XXX: combine this into above write? */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -592,25 +600,26 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
 	 * that has backlight.
 	 */
-	if (DISPLAY_VER(i915) == 2)
-		intel_de_write(i915, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
+	if (DISPLAY_VER(display) == 2)
+		intel_de_write(display, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
 }
 
 static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 ctl, ctl2, freq;
 
-	ctl2 = intel_de_read(i915, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(display, BLC_PWM_CTL2);
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(i915, BLC_PWM_CTL2, ctl2);
+		intel_de_write(display, BLC_PWM_CTL2, ctl2);
 	}
 
 	freq = panel->backlight.pwm_level_max;
@@ -618,16 +627,16 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 		freq /= 0xff;
 
 	ctl = freq << 16;
-	intel_de_write(i915, BLC_PWM_CTL, ctl);
+	intel_de_write(display, BLC_PWM_CTL, ctl);
 
 	ctl2 = BLM_PIPE(pipe);
 	if (panel->backlight.combination_mode)
 		ctl2 |= BLM_COMBINATION_MODE;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	intel_de_write(i915, BLC_PWM_CTL2, ctl2);
-	intel_de_posting_read(i915, BLC_PWM_CTL2);
-	intel_de_write(i915, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(display, BLC_PWM_CTL2, ctl2);
+	intel_de_posting_read(display, BLC_PWM_CTL2);
+	intel_de_write(display, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
 
 	intel_backlight_set_pwm_level(conn_state, level);
 }
@@ -636,21 +645,22 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	u32 ctl, ctl2;
 
-	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(display, VLV_BLC_PWM_CTL2(pipe));
 	if (ctl2 & BLM_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		ctl2 &= ~BLM_PWM_ENABLE;
-		intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
+		intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2);
 	}
 
 	ctl = panel->backlight.pwm_level_max << 16;
-	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), ctl);
+	intel_de_write(display, VLV_BLC_PWM_CTL(pipe), ctl);
 
 	/* XXX: combine this into above write? */
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -658,47 +668,49 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 	ctl2 = 0;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
-	intel_de_posting_read(i915, VLV_BLC_PWM_CTL2(pipe));
-	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2);
+	intel_de_posting_read(display, VLV_BLC_PWM_CTL2(pipe));
+	intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2 | BLM_PWM_ENABLE);
 }
 
 static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	u32 pwm_ctl, val;
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = intel_de_read(i915, UTIL_PIN_CTL);
+		val = intel_de_read(display, UTIL_PIN_CTL);
 		if (val & UTIL_PIN_ENABLE) {
-			drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] utility pin already enabled\n",
+			drm_dbg_kms(display->drm,
+				    "[CONNECTOR:%d:%s] utility pin already enabled\n",
 				    connector->base.base.id, connector->base.name);
 			val &= ~UTIL_PIN_ENABLE;
-			intel_de_write(i915, UTIL_PIN_CTL, val);
+			intel_de_write(display, UTIL_PIN_CTL, val);
 		}
 
 		val = 0;
 		if (panel->backlight.util_pin_active_low)
 			val |= UTIL_PIN_POLARITY;
-		intel_de_write(i915, UTIL_PIN_CTL,
+		intel_de_write(display, UTIL_PIN_CTL,
 			       val | UTIL_PIN_PIPE(pipe) | UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
 	}
 
-	pwm_ctl = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(display, BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight already enabled\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] backlight already enabled\n",
 			    connector->base.base.id, connector->base.name);
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 			       pwm_ctl);
 	}
 
-	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller),
+	intel_de_write(display, BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -707,9 +719,9 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
-	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
+	intel_de_posting_read(display, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
@@ -717,19 +729,19 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl;
 
-	pwm_ctl = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(display, BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
-		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
+		drm_dbg_kms(display->drm, "backlight already enabled\n");
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 			       pwm_ctl);
 	}
 
-	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller),
+	intel_de_write(display, BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
 	intel_backlight_set_pwm_level(conn_state, level);
@@ -738,9 +750,9 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
-	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+	intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
+	intel_de_posting_read(display, BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(display, BXT_BLC_PWM_CTL(panel->backlight.controller),
 		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
@@ -782,37 +794,37 @@ void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 
 	if (!panel->backlight.present)
 		return;
 
-	drm_dbg_kms(&i915->drm, "pipe %c\n", pipe_name(pipe));
+	drm_dbg_kms(display->drm, "pipe %c\n", pipe_name(pipe));
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 
 	__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 }
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 static u32 intel_panel_get_backlight(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 val = 0;
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 
 	if (panel->backlight.enabled)
 		val = panel->backlight.funcs->get(connector, intel_connector_get_pipe(connector));
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 
-	drm_dbg_kms(&i915->drm, "get backlight PWM = %d\n", val);
+	drm_dbg_kms(display->drm, "get backlight PWM = %d\n", val);
 	return val;
 }
 
@@ -831,16 +843,16 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 				      u32 user_level, u32 user_max)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 hw_level;
 
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 
-	drm_WARN_ON(&i915->drm, panel->backlight.max == 0);
+	drm_WARN_ON(display->drm, panel->backlight.max == 0);
 
 	hw_level = scale_user_to_hw(connector, user_level, user_max);
 	panel->backlight.level = hw_level;
@@ -848,18 +860,18 @@ static void intel_panel_set_backlight(const struct drm_connector_state *conn_sta
 	if (panel->backlight.enabled)
 		intel_panel_actually_set_backlight(conn_state, hw_level);
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 }
 
 static int intel_backlight_device_update_status(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
-	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
+	drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
 
-	drm_dbg_kms(&i915->drm, "updating intel_backlight, brightness=%d/%d\n",
+	drm_dbg_kms(display->drm, "updating intel_backlight, brightness=%d/%d\n",
 		    bd->props.brightness, bd->props.max_brightness);
 	intel_panel_set_backlight(connector->base.state, bd->props.brightness,
 				  bd->props.max_brightness);
@@ -880,7 +892,7 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 		bd->props.power = BACKLIGHT_POWER_OFF;
 	}
 
-	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 	return 0;
 }
@@ -888,6 +900,7 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 static int intel_backlight_device_get_brightness(struct backlight_device *bd)
 {
 	struct intel_connector *connector = bl_get_data(bd);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
@@ -895,13 +908,13 @@ static int intel_backlight_device_get_brightness(struct backlight_device *bd)
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		u32 hw_level;
 
-		drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
+		drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
 
 		hw_level = intel_panel_get_backlight(connector);
 		ret = scale_hw_to_user(connector,
 				       hw_level, bd->props.max_brightness);
 
-		drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+		drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 	}
 
 	return ret;
@@ -914,7 +927,7 @@ static const struct backlight_ops intel_backlight_device_ops = {
 
 int intel_backlight_device_register(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	struct backlight_properties props;
 	struct backlight_device *bd;
@@ -930,7 +943,8 @@ int intel_backlight_device_register(struct intel_connector *connector)
 	WARN_ON(panel->backlight.max == 0);
 
 	if (!acpi_video_backlight_use_native()) {
-		drm_info(&i915->drm, "Skipping intel_backlight registration\n");
+		drm_info(display->drm,
+			 "Skipping intel_backlight registration\n");
 		return 0;
 	}
 
@@ -967,7 +981,8 @@ int intel_backlight_device_register(struct intel_connector *connector)
 		 */
 		kfree(name);
 		name = kasprintf(GFP_KERNEL, "card%d-%s-backlight",
-				 i915->drm.primary->index, connector->base.name);
+				 display->drm->primary->index,
+				 connector->base.name);
 		if (!name)
 			return -ENOMEM;
 	}
@@ -975,7 +990,7 @@ int intel_backlight_device_register(struct intel_connector *connector)
 				       &intel_backlight_device_ops, &props);
 
 	if (IS_ERR(bd)) {
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"[CONNECTOR:%d:%s] backlight device %s register failed: %ld\n",
 			connector->base.base.id, connector->base.name, name, PTR_ERR(bd));
 		ret = PTR_ERR(bd);
@@ -984,7 +999,7 @@ int intel_backlight_device_register(struct intel_connector *connector)
 
 	panel->backlight.device = bd;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] backlight device %s registered\n",
 		    connector->base.base.id, connector->base.name, name);
 
@@ -1011,9 +1026,9 @@ void intel_backlight_device_unregister(struct intel_connector *connector)
  */
 static u32 cnp_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq),
 				 pwm_freq_hz);
 }
 
@@ -1073,9 +1088,9 @@ static u32 lpt_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
-	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq),
+	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq),
 				 pwm_freq_hz * 128);
 }
 
@@ -1089,13 +1104,13 @@ static u32 pch_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int clock;
 
-	if (IS_PINEVIEW(i915))
-		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
+	if (display->platform.pineview)
+		clock = KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
 	else
-		clock = KHz(i915->display.cdclk.hw.cdclk);
+		clock = KHz(display->cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 32);
 }
@@ -1107,13 +1122,13 @@ static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int clock;
 
-	if (IS_G4X(i915))
-		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
+	if (display->platform.g4x)
+		clock = KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
 	else
-		clock = KHz(i915->display.cdclk.hw.cdclk);
+		clock = KHz(display->cdclk.hw.cdclk);
 
 	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
 }
@@ -1125,17 +1140,17 @@ static u32 i965_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
  */
 static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int mul, clock;
 
-	if ((intel_de_read(i915, CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
-		if (IS_CHERRYVIEW(i915))
+	if ((intel_de_read(display, CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
+		if (display->platform.cherryview)
 			clock = KHz(19200);
 		else
 			clock = MHz(25);
 		mul = 16;
 	} else {
-		clock = KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
+		clock = KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
 		mul = 128;
 	}
 
@@ -1144,16 +1159,16 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 
 static u16 get_vbt_pwm_freq(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	u16 pwm_freq_hz = connector->panel.vbt.backlight.pwm_freq_hz;
 
 	if (pwm_freq_hz) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "VBT defined backlight frequency %u Hz\n",
 			    pwm_freq_hz);
 	} else {
 		pwm_freq_hz = 200;
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "default backlight frequency %u Hz\n",
 			    pwm_freq_hz);
 	}
@@ -1163,20 +1178,20 @@ static u16 get_vbt_pwm_freq(struct intel_connector *connector)
 
 static u32 get_backlight_max_vbt(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u16 pwm_freq_hz = get_vbt_pwm_freq(connector);
 	u32 pwm;
 
 	if (!panel->backlight.pwm_funcs->hz_to_pwm) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "backlight frequency conversion not supported\n");
 		return 0;
 	}
 
 	pwm = panel->backlight.pwm_funcs->hz_to_pwm(connector, pwm_freq_hz);
 	if (!pwm) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "backlight frequency conversion failed\n");
 		return 0;
 	}
@@ -1189,11 +1204,11 @@ static u32 get_backlight_max_vbt(struct intel_connector *connector)
  */
 static u32 get_backlight_min_vbt(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	int min;
 
-	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max == 0);
+	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
 
 	/*
 	 * XXX: If the vbt value is 255, it makes min equal to max, which leads
@@ -1204,7 +1219,7 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 	 */
 	min = clamp_t(int, connector->panel.vbt.backlight.min_brightness, 0, 64);
 	if (min != connector->panel.vbt.backlight.min_brightness) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "clamping VBT min backlight %d/255 to %d/255\n",
 			    connector->panel.vbt.backlight.min_brightness, min);
 	}
@@ -1215,24 +1230,25 @@ static u32 get_backlight_min_vbt(struct intel_connector *connector)
 
 static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
 	bool alt, cpu_mode;
 
 	if (HAS_PCH_LPT(i915))
-		alt = intel_de_read(i915, SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
+		alt = intel_de_read(display, SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
 	else
-		alt = intel_de_read(i915, SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
+		alt = intel_de_read(display, SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
 	panel->backlight.alternate_pwm_increment = alt;
 
-	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(display, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = intel_de_read(i915, BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(display, BLC_PWM_PCH_CTL2);
 	panel->backlight.pwm_level_max = pch_ctl2 >> 16;
 
-	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(display, BLC_PWM_CPU_CTL2);
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1251,19 +1267,19 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 	if (cpu_mode) {
 		val = pch_get_backlight(connector, unused);
 
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "CPU backlight register was enabled, switching to PCH override\n");
 
 		/* Write converted CPU PWM value to PCH override register */
 		lpt_set_backlight(connector->base.state, val);
-		intel_de_write(i915, BLC_PWM_PCH_CTL1,
+		intel_de_write(display, BLC_PWM_PCH_CTL1,
 			       pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);
 
-		intel_de_write(i915, BLC_PWM_CPU_CTL2,
+		intel_de_write(display, BLC_PWM_CPU_CTL2,
 			       cpu_ctl2 & ~BLM_PWM_ENABLE);
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
 		    connector->base.base.id, connector->base.name);
 
@@ -1272,14 +1288,14 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 static int pch_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
 
-	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(display, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = intel_de_read(i915, BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(display, BLC_PWM_PCH_CTL2);
 	panel->backlight.pwm_level_max = pch_ctl2 >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1290,11 +1306,11 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 	panel->backlight.pwm_level_min = get_backlight_min_vbt(connector);
 
-	cpu_ctl2 = intel_de_read(i915, BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(display, BLC_PWM_CPU_CTL2);
 	panel->backlight.pwm_enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
 		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
 		    connector->base.base.id, connector->base.name);
 
@@ -1303,16 +1319,16 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, val;
 
-	ctl = intel_de_read(i915, BLC_PWM_CTL);
+	ctl = intel_de_read(display, BLC_PWM_CTL);
 
-	if (DISPLAY_VER(i915) == 2 || IS_I915GM(i915) || IS_I945GM(i915))
+	if (DISPLAY_VER(display) == 2 || display->platform.i915gm || display->platform.i945gm)
 		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
 
-	if (IS_PINEVIEW(i915))
+	if (display->platform.pineview)
 		panel->backlight.active_low_pwm = ctl & BLM_POLARITY_PNV;
 
 	panel->backlight.pwm_level_max = ctl >> 17;
@@ -1336,7 +1352,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = val != 0;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
 		    connector->base.base.id, connector->base.name);
 
@@ -1345,15 +1361,15 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 static int i965_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2;
 
-	ctl2 = intel_de_read(i915, BLC_PWM_CTL2);
+	ctl2 = intel_de_read(display, BLC_PWM_CTL2);
 	panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = intel_de_read(i915, BLC_PWM_CTL);
+	ctl = intel_de_read(display, BLC_PWM_CTL);
 	panel->backlight.pwm_level_max = ctl >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1369,7 +1385,7 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
 		    connector->base.base.id, connector->base.name);
 
@@ -1378,17 +1394,17 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2;
 
-	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A && pipe != PIPE_B))
+	if (drm_WARN_ON(display->drm, pipe != PIPE_A && pipe != PIPE_B))
 		return -ENODEV;
 
-	ctl2 = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(display, VLV_BLC_PWM_CTL2(pipe));
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
+	ctl = intel_de_read(display, VLV_BLC_PWM_CTL(pipe));
 	panel->backlight.pwm_level_max = ctl >> 16;
 
 	if (!panel->backlight.pwm_level_max)
@@ -1401,7 +1417,7 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (on pipe %c)\n",
 		    connector->base.base.id, connector->base.name, pipe_name(pipe));
 
@@ -1411,25 +1427,25 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 static int
 bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl, val;
 
 	panel->backlight.controller = connector->panel.vbt.backlight.controller;
 
-	pwm_ctl = intel_de_read(i915,
+	pwm_ctl = intel_de_read(display,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = intel_de_read(i915, UTIL_PIN_CTL);
+		val = intel_de_read(display, UTIL_PIN_CTL);
 		panel->backlight.util_pin_active_low =
 					val & UTIL_PIN_POLARITY;
 	}
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.pwm_level_max =
-		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(display, BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1441,7 +1457,7 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (controller=%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.controller);
@@ -1449,8 +1465,10 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	return 0;
 }
 
-static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
+static int cnp_num_backlight_controllers(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
 		return 2;
 
@@ -1463,15 +1481,17 @@ static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
 	return 1;
 }
 
-static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int controller)
+static bool cnp_backlight_controller_is_valid(struct intel_display *display, int controller)
 {
-	if (controller < 0 || controller >= cnp_num_backlight_controllers(i915))
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (controller < 0 || controller >= cnp_num_backlight_controllers(display))
 		return false;
 
 	if (controller == 1 &&
 	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
 	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
-		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
+		return intel_de_read(display, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
 
 	return true;
 }
@@ -1479,7 +1499,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
 static int
 cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl;
 
@@ -1488,19 +1508,20 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	 * controller. ICP+ can have two controllers, depending on pin muxing.
 	 */
 	panel->backlight.controller = connector->panel.vbt.backlight.controller;
-	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controller)) {
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Invalid backlight controller %d, assuming 0\n",
+	if (!cnp_backlight_controller_is_valid(display, panel->backlight.controller)) {
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] Invalid backlight controller %d, assuming 0\n",
 			    connector->base.base.id, connector->base.name,
 			    panel->backlight.controller);
 		panel->backlight.controller = 0;
 	}
 
-	pwm_ctl = intel_de_read(i915,
+	pwm_ctl = intel_de_read(display,
 				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.pwm_level_max =
-		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(display, BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.pwm_level_max)
 		panel->backlight.pwm_level_max = get_backlight_max_vbt(connector);
@@ -1512,7 +1533,7 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control (controller=%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.controller);
@@ -1523,22 +1544,25 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 static int ext_pwm_setup_backlight(struct intel_connector *connector,
 				   enum pipe pipe)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 	const char *desc;
 	u32 level;
 
 	/* Get the right PWM chip for DSI backlight according to VBT */
 	if (connector->panel.vbt.dsi.config->pwm_blc == PPS_BLC_PMIC) {
-		panel->backlight.pwm = pwm_get(i915->drm.dev, "pwm_pmic_backlight");
+		panel->backlight.pwm = pwm_get(display->drm->dev,
+					       "pwm_pmic_backlight");
 		desc = "PMIC";
 	} else {
-		panel->backlight.pwm = pwm_get(i915->drm.dev, "pwm_soc_backlight");
+		panel->backlight.pwm = pwm_get(display->drm->dev,
+					       "pwm_soc_backlight");
 		desc = "SoC";
 	}
 
 	if (IS_ERR(panel->backlight.pwm)) {
-		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to get the %s PWM chip\n",
+		drm_err(display->drm,
+			"[CONNECTOR:%d:%s] Failed to get the %s PWM chip\n",
 			connector->base.base.id, connector->base.name, desc);
 		panel->backlight.pwm = NULL;
 		return -ENODEV;
@@ -1556,7 +1580,8 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 		level = intel_backlight_invert_pwm_level(connector, level);
 		panel->backlight.pwm_enabled = true;
 
-		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PWM already enabled at freq %ld, VBT freq %d, level %d\n",
+		drm_dbg_kms(display->drm,
+			    "[CONNECTOR:%d:%s] PWM already enabled at freq %ld, VBT freq %d, level %d\n",
 			    connector->base.base.id, connector->base.name,
 			    NSEC_PER_SEC / (unsigned long)panel->backlight.pwm_state.period,
 			    get_vbt_pwm_freq(connector), level);
@@ -1566,7 +1591,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
 	}
 
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "[CONNECTOR:%d:%s] Using %s PWM for backlight control\n",
 		    connector->base.base.id, connector->base.name, desc);
 
@@ -1632,17 +1657,17 @@ void intel_backlight_update(struct intel_atomic_state *state,
 			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_panel *panel = &connector->panel;
 
 	if (!panel->backlight.present)
 		return;
 
-	mutex_lock(&i915->display.backlight.lock);
+	mutex_lock(&display->backlight.lock);
 	if (!panel->backlight.enabled)
 		__intel_backlight_enable(crtc_state, conn_state);
 
-	mutex_unlock(&i915->display.backlight.lock);
+	mutex_unlock(&display->backlight.lock);
 }
 
 int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
@@ -1793,13 +1818,14 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 {
 	struct intel_connector *connector =
 		container_of(panel, struct intel_connector, panel);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI &&
 	    intel_dsi_dcs_init_backlight_funcs(connector) == 0)
 		return;
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
+	if (display->platform.geminilake || display->platform.broxton) {
 		panel->backlight.pwm_funcs = &bxt_pwm_funcs;
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_CNP) {
 		panel->backlight.pwm_funcs = &cnp_pwm_funcs;
@@ -1810,13 +1836,13 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 			panel->backlight.pwm_funcs = &spt_pwm_funcs;
 	} else if (HAS_PCH_SPLIT(i915)) {
 		panel->backlight.pwm_funcs = &pch_pwm_funcs;
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	} else if (display->platform.valleyview || display->platform.cherryview) {
 		if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
 			panel->backlight.pwm_funcs = &ext_pwm_funcs;
 		} else {
 			panel->backlight.pwm_funcs = &vlv_pwm_funcs;
 		}
-	} else if (DISPLAY_VER(i915) == 4) {
+	} else if (DISPLAY_VER(display) == 4) {
 		panel->backlight.pwm_funcs = &i965_pwm_funcs;
 	} else {
 		panel->backlight.pwm_funcs = &i9xx_pwm_funcs;
@@ -1826,7 +1852,7 @@ void intel_backlight_init_funcs(struct intel_panel *panel)
 		if (intel_dp_aux_init_backlight_funcs(connector) == 0)
 			return;
 
-		if (!intel_has_quirk(&i915->display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
+		if (!intel_has_quirk(display, QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
 			connector->panel.backlight.power = intel_pps_backlight_power;
 	}
 
-- 
2.39.5

