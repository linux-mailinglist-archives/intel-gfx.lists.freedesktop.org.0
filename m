Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D7137BE41
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B38E76EBFD;
	Wed, 12 May 2021 13:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A0C6EBFB
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 13:31:41 +0000 (UTC)
IronPort-SDR: dmNFNr2/d+23Th9XO72/Gg20cNeBRjy9Naql9Tvyj2CbPgN5fkKTsN9qfFVx5AwLi2HU8DWIdv
 /yVTHB2BvGLQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="196609445"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="196609445"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:31:05 -0700
IronPort-SDR: auYaQuumImTvhB8LNnGNZLnPcNPGb6hWJKg2gMD0Ecar9eQ1VkB/a42wbJXRQLMNBUFRwbJZPW
 jruGwdgEyv9A==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="430745575"
Received: from olovaszi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:31:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 May 2021 16:30:45 +0300
Message-Id: <e2a46a93f37580b4e8243f6563c4533eaeceae32.1620825897.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1620825897.git.jani.nikula@intel.com>
References: <cover.1620825897.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/backlight: mass rename functions
 to have intel_backlight_ prefix
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions. As a drive-by cleanup, also pass
intel_connector instead of drm_connector to intel_backlight_setup(). No
functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  8 +-
 .../gpu/drm/i915/display/intel_backlight.c    | 94 +++++++++----------
 .../gpu/drm/i915/display/intel_backlight.h    | 37 ++++----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +-
 .../drm/i915/display/intel_dp_aux_backlight.c | 10 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     | 10 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  4 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  8 +-
 11 files changed, 91 insertions(+), 92 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 29c0eca647e3..9577f6843f79 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1334,7 +1334,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder->get_config = intel_dp_get_config;
 	intel_encoder->sync_state = intel_dp_sync_state;
 	intel_encoder->initial_fastset_check = intel_dp_initial_fastset_check;
-	intel_encoder->update_pipe = intel_panel_update_backlight;
+	intel_encoder->update_pipe = intel_backlight_update;
 	intel_encoder->suspend = intel_dp_encoder_suspend;
 	intel_encoder->shutdown = intel_dp_encoder_shutdown;
 	if (IS_CHERRYVIEW(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 586f292a883a..da1b00859f3b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1250,7 +1250,7 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	gen11_dsi_enable_transcoder(encoder);
 
 	/* step7: enable backlight */
-	intel_panel_enable_backlight(crtc_state, conn_state);
+	intel_backlight_enable(crtc_state, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
 
 	intel_crtc_vblank_on(crtc_state);
@@ -1402,7 +1402,7 @@ static void gen11_dsi_disable(struct intel_atomic_state *state,
 
 	/* step1: turn off backlight */
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
-	intel_panel_disable_backlight(old_conn_state);
+	intel_backlight_disable(old_conn_state);
 
 	/* step2d,e: disable transcoder and wait */
 	gen11_dsi_disable_transcoder(encoder);
@@ -1950,7 +1950,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	encoder->post_disable = gen11_dsi_post_disable;
 	encoder->port = port;
 	encoder->get_config = gen11_dsi_get_config;
-	encoder->update_pipe = intel_panel_update_backlight;
+	encoder->update_pipe = intel_backlight_update;
 	encoder->compute_config = gen11_dsi_compute_config;
 	encoder->get_hw_state = gen11_dsi_get_hw_state;
 	encoder->initial_fastset_check = gen11_dsi_initial_fastset_check;
@@ -1984,7 +1984,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
-	intel_panel_setup_backlight(connector, INVALID_PIPE);
+	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	if (dev_priv->vbt.dsi.config->dual_link)
 		intel_dsi->ports = BIT(PORT_A) | BIT(PORT_B);
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 4b0086ee4851..9523411cddd8 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -72,7 +72,7 @@ static u32 scale_hw_to_user(struct intel_connector *connector,
 		     0, user_max);
 }
 
-u32 intel_panel_invert_pwm_level(struct intel_connector *connector, u32 val)
+u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 val)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
@@ -90,7 +90,7 @@ u32 intel_panel_invert_pwm_level(struct intel_connector *connector, u32 val)
 	return val;
 }
 
-void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32 val)
+void intel_backlight_set_pwm_level(const struct drm_connector_state *conn_state, u32 val)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -100,7 +100,7 @@ void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32
 	panel->backlight.pwm_funcs->set(conn_state, val);
 }
 
-u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
+u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 val)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
@@ -111,10 +111,10 @@ u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 va
 	val = scale(val, panel->backlight.min, panel->backlight.max,
 		    panel->backlight.pwm_level_min, panel->backlight.pwm_level_max);
 
-	return intel_panel_invert_pwm_level(connector, val);
+	return intel_backlight_invert_pwm_level(connector, val);
 }
 
-u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
+u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
@@ -283,8 +283,8 @@ intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state,
 /* set backlight brightness to level in range [0..max], assuming hw min is
  * respected.
  */
-void intel_panel_set_backlight_acpi(const struct drm_connector_state *conn_state,
-				    u32 user_level, u32 user_max)
+void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
+			      u32 user_level, u32 user_max)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -325,7 +325,7 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, level);
+	intel_backlight_set_pwm_level(old_conn_state, level);
 
 	/*
 	 * Although we don't support or enable CPU PWM with LPT/SPT based
@@ -353,7 +353,7 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
 	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
@@ -364,7 +364,7 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
 {
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 }
 
 static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -372,7 +372,7 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
 	struct drm_i915_private *dev_priv = to_i915(old_conn_state->connector->dev);
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	tmp = intel_de_read(dev_priv, BLC_PWM_CTL2);
 	intel_de_write(dev_priv, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
@@ -385,7 +385,7 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
 	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	tmp = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
 	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe),
@@ -399,7 +399,7 @@ static void bxt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	tmp = intel_de_read(dev_priv,
 			    BXT_BLC_PWM_CTL(panel->backlight.controller));
@@ -420,7 +420,7 @@ static void cnp_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_panel *panel = &connector->panel;
 	u32 tmp;
 
-	intel_panel_set_pwm_level(old_conn_state, val);
+	intel_backlight_set_pwm_level(old_conn_state, val);
 
 	tmp = intel_de_read(dev_priv,
 			    BXT_BLC_PWM_CTL(panel->backlight.controller));
@@ -437,7 +437,7 @@ static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn
 	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
 }
 
-void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_state)
+void intel_backlight_disable(const struct drm_connector_state *old_conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -516,7 +516,7 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 		       pch_ctl1 | BLM_PCH_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 }
 
 static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -551,7 +551,7 @@ static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
 	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
 	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, pch_ctl2);
@@ -594,7 +594,7 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	intel_de_posting_read(dev_priv, BLC_PWM_CTL);
 
 	/* XXX: combine this into above write? */
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 
 	/*
 	 * Needed to enable backlight on some 855gm models. BLC_HIST_CTL is
@@ -637,7 +637,7 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 	intel_de_posting_read(dev_priv, BLC_PWM_CTL2);
 	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
 
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 }
 
 static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -660,7 +660,7 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 	intel_de_write(dev_priv, VLV_BLC_PWM_CTL(pipe), ctl);
 
 	/* XXX: combine this into above write? */
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 
 	ctl2 = 0;
 	if (panel->backlight.active_low_pwm)
@@ -711,7 +711,7 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 
 	pwm_ctl = 0;
 	if (panel->backlight.active_low_pwm)
@@ -747,7 +747,7 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
 		       panel->backlight.pwm_level_max);
 
-	intel_panel_set_pwm_level(conn_state, level);
+	intel_backlight_set_pwm_level(conn_state, level);
 
 	pwm_ctl = 0;
 	if (panel->backlight.active_low_pwm)
@@ -772,8 +772,8 @@ static void ext_pwm_enable_backlight(const struct intel_crtc_state *crtc_state,
 	pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
 }
 
-static void __intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
-					   const struct drm_connector_state *conn_state)
+static void __intel_backlight_enable(const struct intel_crtc_state *crtc_state,
+				     const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
@@ -795,8 +795,8 @@ static void __intel_panel_enable_backlight(const struct intel_crtc_state *crtc_s
 		panel->backlight.device->props.power = FB_BLANK_UNBLANK;
 }
 
-void intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state)
+void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -810,7 +810,7 @@ void intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	mutex_lock(&dev_priv->backlight_lock);
 
-	__intel_panel_enable_backlight(crtc_state, conn_state);
+	__intel_backlight_enable(crtc_state, conn_state);
 
 	mutex_unlock(&dev_priv->backlight_lock);
 }
@@ -1335,7 +1335,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 	panel->backlight.pwm_level_min = get_backlight_min_vbt(connector);
 
 	val = i9xx_get_backlight(connector, unused);
-	val = intel_panel_invert_pwm_level(connector, val);
+	val = intel_backlight_invert_pwm_level(connector, val);
 	val = clamp(val, panel->backlight.pwm_level_min, panel->backlight.pwm_level_max);
 
 	panel->backlight.pwm_enabled = val != 0;
@@ -1504,7 +1504,7 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 
 		level = pwm_get_relative_duty_cycle(&panel->backlight.pwm_state,
 						    100);
-		level = intel_panel_invert_pwm_level(connector, level);
+		level = intel_backlight_invert_pwm_level(connector, level);
 		panel->backlight.pwm_enabled = true;
 
 		drm_dbg_kms(&dev_priv->drm, "PWM already enabled at freq %ld, VBT freq %d, level %d\n",
@@ -1527,14 +1527,14 @@ static void intel_pwm_set_backlight(const struct drm_connector_state *conn_state
 	struct intel_panel *panel = &connector->panel;
 
 	panel->backlight.pwm_funcs->set(conn_state,
-				       intel_panel_invert_pwm_level(connector, level));
+					intel_backlight_invert_pwm_level(connector, level));
 }
 
 static u32 intel_pwm_get_backlight(struct intel_connector *connector, enum pipe pipe)
 {
 	struct intel_panel *panel = &connector->panel;
 
-	return intel_panel_invert_pwm_level(connector,
+	return intel_backlight_invert_pwm_level(connector,
 					    panel->backlight.pwm_funcs->get(connector, pipe));
 }
 
@@ -1545,7 +1545,7 @@ static void intel_pwm_enable_backlight(const struct intel_crtc_state *crtc_state
 	struct intel_panel *panel = &connector->panel;
 
 	panel->backlight.pwm_funcs->enable(crtc_state, conn_state,
-					   intel_panel_invert_pwm_level(connector, level));
+					   intel_backlight_invert_pwm_level(connector, level));
 }
 
 static void intel_pwm_disable_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -1554,7 +1554,7 @@ static void intel_pwm_disable_backlight(const struct drm_connector_state *conn_s
 	struct intel_panel *panel = &connector->panel;
 
 	panel->backlight.pwm_funcs->disable(conn_state,
-					    intel_panel_invert_pwm_level(connector, level));
+					    intel_backlight_invert_pwm_level(connector, level));
 }
 
 static int intel_pwm_setup_backlight(struct intel_connector *connector, enum pipe pipe)
@@ -1573,10 +1573,10 @@ static int intel_pwm_setup_backlight(struct intel_connector *connector, enum pip
 	return 0;
 }
 
-void intel_panel_update_backlight(struct intel_atomic_state *state,
-				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state)
+void intel_backlight_update(struct intel_atomic_state *state,
+			    struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
@@ -1587,16 +1587,15 @@ void intel_panel_update_backlight(struct intel_atomic_state *state,
 
 	mutex_lock(&dev_priv->backlight_lock);
 	if (!panel->backlight.enabled)
-		__intel_panel_enable_backlight(crtc_state, conn_state);
+		__intel_backlight_enable(crtc_state, conn_state);
 
 	mutex_unlock(&dev_priv->backlight_lock);
 }
 
-int intel_panel_setup_backlight(struct drm_connector *connector, enum pipe pipe)
+int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_connector *intel_connector = to_intel_connector(connector);
-	struct intel_panel *panel = &intel_connector->panel;
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_panel *panel = &connector->panel;
 	int ret;
 
 	if (!dev_priv->vbt.backlight.present) {
@@ -1616,13 +1615,13 @@ int intel_panel_setup_backlight(struct drm_connector *connector, enum pipe pipe)
 
 	/* set level and max in panel struct */
 	mutex_lock(&dev_priv->backlight_lock);
-	ret = panel->backlight.funcs->setup(intel_connector, pipe);
+	ret = panel->backlight.funcs->setup(connector, pipe);
 	mutex_unlock(&dev_priv->backlight_lock);
 
 	if (ret) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "failed to setup backlight for connector %s\n",
-			    connector->name);
+			    connector->base.name);
 		return ret;
 	}
 
@@ -1630,14 +1629,14 @@ int intel_panel_setup_backlight(struct drm_connector *connector, enum pipe pipe)
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "Connector %s backlight initialized, %s, brightness %u/%u\n",
-		    connector->name,
+		    connector->base.name,
 		    enableddisabled(panel->backlight.enabled),
 		    panel->backlight.level, panel->backlight.max);
 
 	return 0;
 }
 
-void intel_panel_destroy_backlight(struct intel_panel *panel)
+void intel_backlight_destroy(struct intel_panel *panel)
 {
 	/* dispose of the pwm */
 	if (panel->backlight.pwm)
@@ -1735,8 +1734,7 @@ static const struct intel_panel_bl_funcs pwm_bl_funcs = {
 };
 
 /* Set up chip specific backlight functions */
-void
-intel_panel_init_backlight_funcs(struct intel_panel *panel)
+void intel_backlight_init_funcs(struct intel_panel *panel)
 {
 	struct intel_connector *connector =
 		container_of(panel, struct intel_connector, panel);
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.h b/drivers/gpu/drm/i915/display/intel_backlight.h
index 282020cb47d5..339643f63897 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-struct drm_connector;
 struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_connector;
@@ -17,23 +16,25 @@ struct intel_encoder;
 struct intel_panel;
 enum pipe;
 
-void intel_panel_init_backlight_funcs(struct intel_panel *panel);
-void intel_panel_destroy_backlight(struct intel_panel *panel);
-void intel_panel_set_backlight_acpi(const struct drm_connector_state *conn_state,
-				    u32 level, u32 max);
-int intel_panel_setup_backlight(struct drm_connector *connector,
-				enum pipe pipe);
-void intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state);
-void intel_panel_update_backlight(struct intel_atomic_state *state,
-				  struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state,
-				  const struct drm_connector_state *conn_state);
-void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_state);
-void intel_panel_set_pwm_level(const struct drm_connector_state *conn_state, u32 level);
-u32 intel_panel_invert_pwm_level(struct intel_connector *connector, u32 level);
-u32 intel_panel_backlight_level_to_pwm(struct intel_connector *connector, u32 level);
-u32 intel_panel_backlight_level_from_pwm(struct intel_connector *connector, u32 val);
+void intel_backlight_init_funcs(struct intel_panel *panel);
+int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe);
+void intel_backlight_destroy(struct intel_panel *panel);
+
+void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state);
+void intel_backlight_update(struct intel_atomic_state *state,
+			    struct intel_encoder *encoder,
+			    const struct intel_crtc_state *crtc_state,
+			    const struct drm_connector_state *conn_state);
+void intel_backlight_disable(const struct drm_connector_state *old_conn_state);
+
+void intel_backlight_set_acpi(const struct drm_connector_state *conn_state,
+			      u32 level, u32 max);
+void intel_backlight_set_pwm_level(const struct drm_connector_state *conn_state,
+				   u32 level);
+u32 intel_backlight_invert_pwm_level(struct intel_connector *connector, u32 level);
+u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32 level);
+u32 intel_backlight_level_from_pwm(struct intel_connector *connector, u32 val);
 
 #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 int intel_backlight_device_register(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e9638291ac32..c6de868079a8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3256,7 +3256,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
 	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
 	intel_edp_drrs_update(intel_dp, crtc_state);
 
-	intel_panel_update_backlight(state, encoder, crtc_state, conn_state);
+	intel_backlight_update(state, encoder, crtc_state, conn_state);
 }
 
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 936eb41e9363..efb7a249393c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1766,7 +1766,7 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 
 	drm_dbg_kms(&i915->drm, "\n");
 
-	intel_panel_enable_backlight(crtc_state, conn_state);
+	intel_backlight_enable(crtc_state, conn_state);
 	intel_pps_backlight_on(intel_dp);
 }
 
@@ -1782,7 +1782,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
 	drm_dbg_kms(&i915->drm, "\n");
 
 	intel_pps_backlight_off(intel_dp);
-	intel_panel_disable_backlight(old_conn_state);
+	intel_backlight_disable(old_conn_state);
 }
 
 static bool downstream_hpd_needs_d0(struct intel_dp *intel_dp)
@@ -5218,7 +5218,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
 	intel_connector->panel.backlight.power = intel_pps_backlight_power;
-	intel_panel_setup_backlight(connector, pipe);
+	intel_backlight_setup(intel_connector, pipe);
 
 	if (fixed_mode) {
 		drm_connector_set_panel_orientation_with_quirk(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4aa48b42583e..e25a8b244c4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -146,7 +146,7 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 		if (!panel->backlight.edp.intel.sdr_uses_aux) {
 			u32 pwm_level = panel->backlight.pwm_funcs->get(connector, pipe);
 
-			return intel_panel_backlight_level_from_pwm(connector, pwm_level);
+			return intel_backlight_level_from_pwm(connector, pwm_level);
 		}
 
 		/* Assume 100% brightness if backlight controls aren't enabled yet */
@@ -185,9 +185,9 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	if (panel->backlight.edp.intel.sdr_uses_aux) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
-		const u32 pwm_level = intel_panel_backlight_level_to_pwm(connector, level);
+		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
 
-		intel_panel_set_pwm_level(conn_state, pwm_level);
+		intel_backlight_set_pwm_level(conn_state, pwm_level);
 	}
 }
 
@@ -213,7 +213,7 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
-		u32 pwm_level = intel_panel_backlight_level_to_pwm(connector, level);
+		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
 
 		panel->backlight.pwm_funcs->enable(crtc_state, conn_state, pwm_level);
 
@@ -236,7 +236,7 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state,
 		return;
 
 	/* Note we want the actual pwm_level to be 0, regardless of pwm_min */
-	panel->backlight.pwm_funcs->disable(conn_state, intel_panel_invert_pwm_level(connector, 0));
+	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6d68ac79b231..0f7b1a6d09d4 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -324,7 +324,7 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power on\n");
 
-	intel_panel_enable_backlight(pipe_config, conn_state);
+	intel_backlight_enable(pipe_config, conn_state);
 }
 
 static void intel_disable_lvds(struct intel_atomic_state *state,
@@ -352,7 +352,7 @@ static void gmch_disable_lvds(struct intel_atomic_state *state,
 			      const struct drm_connector_state *old_conn_state)
 
 {
-	intel_panel_disable_backlight(old_conn_state);
+	intel_backlight_disable(old_conn_state);
 
 	intel_disable_lvds(state, encoder, old_crtc_state, old_conn_state);
 }
@@ -362,7 +362,7 @@ static void pch_disable_lvds(struct intel_atomic_state *state,
 			     const struct intel_crtc_state *old_crtc_state,
 			     const struct drm_connector_state *old_conn_state)
 {
-	intel_panel_disable_backlight(old_conn_state);
+	intel_backlight_disable(old_conn_state);
 }
 
 static void pch_post_disable_lvds(struct intel_atomic_state *state,
@@ -907,7 +907,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	}
 	intel_encoder->get_hw_state = intel_lvds_get_hw_state;
 	intel_encoder->get_config = intel_lvds_get_config;
-	intel_encoder->update_pipe = intel_panel_update_backlight;
+	intel_encoder->update_pipe = intel_backlight_update;
 	intel_encoder->shutdown = intel_lvds_shutdown;
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
 
@@ -1000,7 +1000,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev->mode_config.mutex);
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
-	intel_panel_setup_backlight(connector, INVALID_PIPE);
+	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
 	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 2b445f5ced15..0b9861d4392e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -449,7 +449,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
 		    bclp);
 	drm_connector_list_iter_begin(dev, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter)
-		intel_panel_set_backlight_acpi(connector->base.state, bclp, 255);
+		intel_backlight_set_acpi(connector->base.state, bclp, 255);
 	drm_connector_list_iter_end(&conn_iter);
 	asle->cblv = DIV_ROUND_UP(bclp * 100, 255) | ASLE_CBLV_VALID;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index ad54767440c1..611e32421353 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -467,7 +467,7 @@ int intel_panel_init(struct intel_panel *panel,
 		     struct drm_display_mode *fixed_mode,
 		     struct drm_display_mode *downclock_mode)
 {
-	intel_panel_init_backlight_funcs(panel);
+	intel_backlight_init_funcs(panel);
 
 	panel->fixed_mode = fixed_mode;
 	panel->downclock_mode = downclock_mode;
@@ -480,7 +480,7 @@ void intel_panel_fini(struct intel_panel *panel)
 	struct intel_connector *intel_connector =
 		container_of(panel, struct intel_connector, panel);
 
-	intel_panel_destroy_backlight(panel);
+	intel_backlight_destroy(panel);
 
 	if (panel->fixed_mode)
 		drm_mode_destroy(intel_connector->base.dev, panel->fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index f0156a714a72..af50115fd272 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -885,7 +885,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 		intel_dsi_port_enable(encoder, pipe_config);
 	}
 
-	intel_panel_enable_backlight(pipe_config, conn_state);
+	intel_backlight_enable(pipe_config, conn_state);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_ON);
 }
 
@@ -915,7 +915,7 @@ static void intel_dsi_disable(struct intel_atomic_state *state,
 	drm_dbg_kms(&i915->drm, "\n");
 
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_BACKLIGHT_OFF);
-	intel_panel_disable_backlight(old_conn_state);
+	intel_backlight_disable(old_conn_state);
 
 	/*
 	 * According to the spec we should send SHUTDOWN before
@@ -1878,7 +1878,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	intel_encoder->post_disable = intel_dsi_post_disable;
 	intel_encoder->get_hw_state = intel_dsi_get_hw_state;
 	intel_encoder->get_config = intel_dsi_get_config;
-	intel_encoder->update_pipe = intel_panel_update_backlight;
+	intel_encoder->update_pipe = intel_backlight_update;
 	intel_encoder->shutdown = intel_dsi_shutdown;
 
 	intel_connector->get_hw_state = intel_connector_get_hw_state;
@@ -1966,7 +1966,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	}
 
 	intel_panel_init(&intel_connector->panel, fixed_mode, NULL);
-	intel_panel_setup_backlight(connector, INVALID_PIPE);
+	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
 	vlv_dsi_add_properties(intel_connector);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
