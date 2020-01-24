Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA31D14860F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 14:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC2672A8C;
	Fri, 24 Jan 2020 13:26:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BF972A8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 13:26:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,357,1574150400"; d="scan'208";a="221896564"
Received: from omarkovx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 05:26:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 15:25:45 +0200
Message-Id: <efd117ff0a63ef6ec1a4514f2ee133ca33b3f0a0.1579871655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [RFC 24/33] drm/i915/panel: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 255 +++++++++++----------
 1 file changed, 140 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7b3ec6eb3382..c03afcef85ae 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -537,14 +537,14 @@ static u32 lpt_get_backlight(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 
-	return I915_READ(BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 pch_get_backlight(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 
-	return I915_READ(BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(dev_priv, BLC_PWM_CPU_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 i9xx_get_backlight(struct intel_connector *connector)
@@ -553,7 +553,7 @@ static u32 i9xx_get_backlight(struct intel_connector *connector)
 	struct intel_panel *panel = &connector->panel;
 	u32 val;
 
-	val = I915_READ(BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
+	val = intel_de_read(dev_priv, BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 	if (INTEL_GEN(dev_priv) < 4)
 		val >>= 1;
 
@@ -572,7 +572,7 @@ static u32 _vlv_get_backlight(struct drm_i915_private *dev_priv, enum pipe pipe)
 	if (WARN_ON(pipe != PIPE_A && pipe != PIPE_B))
 		return 0;
 
-	return I915_READ(VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
+	return intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe)) & BACKLIGHT_DUTY_CYCLE_MASK;
 }
 
 static u32 vlv_get_backlight(struct intel_connector *connector)
@@ -588,7 +588,8 @@ static u32 bxt_get_backlight(struct intel_connector *connector)
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	return I915_READ(BXT_BLC_PWM_DUTY(panel->backlight.controller));
+	return intel_de_read(dev_priv,
+			     BXT_BLC_PWM_DUTY(panel->backlight.controller));
 }
 
 static u32 pwm_get_backlight(struct intel_connector *connector)
@@ -605,8 +606,8 @@ static void lpt_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 
-	u32 val = I915_READ(BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	I915_WRITE(BLC_PWM_PCH_CTL2, val | level);
+	u32 val = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, val | level);
 }
 
 static void pch_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -615,8 +616,8 @@ static void pch_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	u32 tmp;
 
-	tmp = I915_READ(BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	I915_WRITE(BLC_PWM_CPU_CTL, tmp | level);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, BLC_PWM_CPU_CTL, tmp | level);
 }
 
 static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -643,8 +644,8 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
 		mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
 	}
 
-	tmp = I915_READ(BLC_PWM_CTL) & ~mask;
-	I915_WRITE(BLC_PWM_CTL, tmp | level);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CTL) & ~mask;
+	intel_de_write(dev_priv, BLC_PWM_CTL, tmp | level);
 }
 
 static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -654,8 +655,8 @@ static void vlv_set_backlight(const struct drm_connector_state *conn_state, u32
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 tmp;
 
-	tmp = I915_READ(VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
-	I915_WRITE(VLV_BLC_PWM_CTL(pipe), tmp | level);
+	tmp = intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe)) & ~BACKLIGHT_DUTY_CYCLE_MASK;
+	intel_de_write(dev_priv, VLV_BLC_PWM_CTL(pipe), tmp | level);
 }
 
 static void bxt_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -664,7 +665,8 @@ static void bxt_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
-	I915_WRITE(BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
+	intel_de_write(dev_priv,
+		       BXT_BLC_PWM_DUTY(panel->backlight.controller), level);
 }
 
 static void pwm_set_backlight(const struct drm_connector_state *conn_state, u32 level)
@@ -742,14 +744,15 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	 * This needs rework if we need to add support for CPU PWM on PCH split
 	 * platforms.
 	 */
-	tmp = I915_READ(BLC_PWM_CPU_CTL2);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
 	if (tmp & BLM_PWM_ENABLE) {
 		DRM_DEBUG_KMS("cpu backlight was enabled, disabling\n");
-		I915_WRITE(BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2,
+			       tmp & ~BLM_PWM_ENABLE);
 	}
 
-	tmp = I915_READ(BLC_PWM_PCH_CTL1);
-	I915_WRITE(BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state)
@@ -760,11 +763,11 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_panel_actually_set_backlight(old_conn_state, 0);
 
-	tmp = I915_READ(BLC_PWM_CPU_CTL2);
-	I915_WRITE(BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
+	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 
-	tmp = I915_READ(BLC_PWM_PCH_CTL1);
-	I915_WRITE(BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state)
@@ -779,8 +782,8 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
 
 	intel_panel_actually_set_backlight(old_conn_state, 0);
 
-	tmp = I915_READ(BLC_PWM_CTL2);
-	I915_WRITE(BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, BLC_PWM_CTL2);
+	intel_de_write(dev_priv, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state)
@@ -792,8 +795,9 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_panel_actually_set_backlight(old_conn_state, 0);
 
-	tmp = I915_READ(VLV_BLC_PWM_CTL2(pipe));
-	I915_WRITE(VLV_BLC_PWM_CTL2(pipe), tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
+	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe),
+		       tmp & ~BLM_PWM_ENABLE);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state)
@@ -805,14 +809,15 @@ static void bxt_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_panel_actually_set_backlight(old_conn_state, 0);
 
-	tmp = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-			tmp & ~BXT_BLC_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv,
+			    BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       tmp & ~BXT_BLC_PWM_ENABLE);
 
 	if (panel->backlight.controller == 1) {
-		val = I915_READ(UTIL_PIN_CTL);
+		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
 		val &= ~UTIL_PIN_ENABLE;
-		I915_WRITE(UTIL_PIN_CTL, val);
+		intel_de_write(dev_priv, UTIL_PIN_CTL, val);
 	}
 }
 
@@ -825,9 +830,10 @@ static void cnp_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_panel_actually_set_backlight(old_conn_state, 0);
 
-	tmp = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-		   tmp & ~BXT_BLC_PWM_ENABLE);
+	tmp = intel_de_read(dev_priv,
+			    BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       tmp & ~BXT_BLC_PWM_ENABLE);
 }
 
 static void pwm_disable_backlight(const struct drm_connector_state *old_conn_state)
@@ -879,31 +885,31 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	u32 pch_ctl1, pch_ctl2, schicken;
 
-	pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
 		DRM_DEBUG_KMS("pch backlight already enabled\n");
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
 	if (HAS_PCH_LPT(dev_priv)) {
-		schicken = I915_READ(SOUTH_CHICKEN2);
+		schicken = intel_de_read(dev_priv, SOUTH_CHICKEN2);
 		if (panel->backlight.alternate_pwm_increment)
 			schicken |= LPT_PWM_GRANULARITY;
 		else
 			schicken &= ~LPT_PWM_GRANULARITY;
-		I915_WRITE(SOUTH_CHICKEN2, schicken);
+		intel_de_write(dev_priv, SOUTH_CHICKEN2, schicken);
 	} else {
-		schicken = I915_READ(SOUTH_CHICKEN1);
+		schicken = intel_de_read(dev_priv, SOUTH_CHICKEN1);
 		if (panel->backlight.alternate_pwm_increment)
 			schicken |= SPT_PWM_GRANULARITY;
 		else
 			schicken &= ~SPT_PWM_GRANULARITY;
-		I915_WRITE(SOUTH_CHICKEN1, schicken);
+		intel_de_write(dev_priv, SOUTH_CHICKEN1, schicken);
 	}
 
 	pch_ctl2 = panel->backlight.max << 16;
-	I915_WRITE(BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
@@ -913,9 +919,10 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (HAS_PCH_LPT(dev_priv))
 		pch_ctl1 |= BLM_PCH_OVERRIDE_ENABLE;
 
-	I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
-	POSTING_READ(BLC_PWM_PCH_CTL1);
-	I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(dev_priv, BLC_PWM_PCH_CTL1);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
+		       pch_ctl1 | BLM_PCH_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
@@ -930,41 +937,42 @@ static void pch_enable_backlight(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
 
-	cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
 	if (cpu_ctl2 & BLM_PWM_ENABLE) {
 		DRM_DEBUG_KMS("cpu backlight already enabled\n");
 		cpu_ctl2 &= ~BLM_PWM_ENABLE;
-		I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2);
+		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2);
 	}
 
-	pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
 		DRM_DEBUG_KMS("pch backlight already enabled\n");
 		pch_ctl1 &= ~BLM_PCH_PWM_ENABLE;
-		I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
+		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
 	if (cpu_transcoder == TRANSCODER_EDP)
 		cpu_ctl2 = BLM_TRANSCODER_EDP;
 	else
 		cpu_ctl2 = BLM_PIPE(cpu_transcoder);
-	I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2);
-	POSTING_READ(BLC_PWM_CPU_CTL2);
-	I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2);
+	intel_de_posting_read(dev_priv, BLC_PWM_CPU_CTL2);
+	intel_de_write(dev_priv, BLC_PWM_CPU_CTL2, cpu_ctl2 | BLM_PWM_ENABLE);
 
 	/* This won't stick until the above enable. */
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
 
 	pch_ctl2 = panel->backlight.max << 16;
-	I915_WRITE(BLC_PWM_PCH_CTL2, pch_ctl2);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL2, pch_ctl2);
 
 	pch_ctl1 = 0;
 	if (panel->backlight.active_low_pwm)
 		pch_ctl1 |= BLM_PCH_POLARITY;
 
-	I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1);
-	POSTING_READ(BLC_PWM_PCH_CTL1);
-	I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_PWM_ENABLE);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1, pch_ctl1);
+	intel_de_posting_read(dev_priv, BLC_PWM_PCH_CTL1);
+	intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
+		       pch_ctl1 | BLM_PCH_PWM_ENABLE);
 }
 
 static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -975,10 +983,10 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, freq;
 
-	ctl = I915_READ(BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
 	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
 		DRM_DEBUG_KMS("backlight already enabled\n");
-		I915_WRITE(BLC_PWM_CTL, 0);
+		intel_de_write(dev_priv, BLC_PWM_CTL, 0);
 	}
 
 	freq = panel->backlight.max;
@@ -991,8 +999,8 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (IS_PINEVIEW(dev_priv) && panel->backlight.active_low_pwm)
 		ctl |= BLM_POLARITY_PNV;
 
-	I915_WRITE(BLC_PWM_CTL, ctl);
-	POSTING_READ(BLC_PWM_CTL);
+	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
+	intel_de_posting_read(dev_priv, BLC_PWM_CTL);
 
 	/* XXX: combine this into above write? */
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
@@ -1003,7 +1011,7 @@ static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_state,
 	 * that has backlight.
 	 */
 	if (IS_GEN(dev_priv, 2))
-		I915_WRITE(BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
+		intel_de_write(dev_priv, BLC_HIST_CTL, BLM_HISTOGRAM_ENABLE);
 }
 
 static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -1015,11 +1023,11 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 	enum pipe pipe = to_intel_crtc(conn_state->crtc)->pipe;
 	u32 ctl, ctl2, freq;
 
-	ctl2 = I915_READ(BLC_PWM_CTL2);
+	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
 	if (ctl2 & BLM_PWM_ENABLE) {
 		DRM_DEBUG_KMS("backlight already enabled\n");
 		ctl2 &= ~BLM_PWM_ENABLE;
-		I915_WRITE(BLC_PWM_CTL2, ctl2);
+		intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
 	}
 
 	freq = panel->backlight.max;
@@ -1027,16 +1035,16 @@ static void i965_enable_backlight(const struct intel_crtc_state *crtc_state,
 		freq /= 0xff;
 
 	ctl = freq << 16;
-	I915_WRITE(BLC_PWM_CTL, ctl);
+	intel_de_write(dev_priv, BLC_PWM_CTL, ctl);
 
 	ctl2 = BLM_PIPE(pipe);
 	if (panel->backlight.combination_mode)
 		ctl2 |= BLM_COMBINATION_MODE;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	I915_WRITE(BLC_PWM_CTL2, ctl2);
-	POSTING_READ(BLC_PWM_CTL2);
-	I915_WRITE(BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2);
+	intel_de_posting_read(dev_priv, BLC_PWM_CTL2);
+	intel_de_write(dev_priv, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
 
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
 }
@@ -1050,15 +1058,15 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	u32 ctl, ctl2;
 
-	ctl2 = I915_READ(VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
 	if (ctl2 & BLM_PWM_ENABLE) {
 		DRM_DEBUG_KMS("backlight already enabled\n");
 		ctl2 &= ~BLM_PWM_ENABLE;
-		I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2);
+		intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe), ctl2);
 	}
 
 	ctl = panel->backlight.max << 16;
-	I915_WRITE(VLV_BLC_PWM_CTL(pipe), ctl);
+	intel_de_write(dev_priv, VLV_BLC_PWM_CTL(pipe), ctl);
 
 	/* XXX: combine this into above write? */
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
@@ -1066,9 +1074,10 @@ static void vlv_enable_backlight(const struct intel_crtc_state *crtc_state,
 	ctl2 = 0;
 	if (panel->backlight.active_low_pwm)
 		ctl2 |= BLM_POLARITY_I965;
-	I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2);
-	POSTING_READ(VLV_BLC_PWM_CTL2(pipe));
-	I915_WRITE(VLV_BLC_PWM_CTL2(pipe), ctl2 | BLM_PWM_ENABLE);
+	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe), ctl2);
+	intel_de_posting_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
+	intel_de_write(dev_priv, VLV_BLC_PWM_CTL2(pipe),
+		       ctl2 | BLM_PWM_ENABLE);
 }
 
 static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -1082,30 +1091,33 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = I915_READ(UTIL_PIN_CTL);
+		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
 		if (val & UTIL_PIN_ENABLE) {
 			DRM_DEBUG_KMS("util pin already enabled\n");
 			val &= ~UTIL_PIN_ENABLE;
-			I915_WRITE(UTIL_PIN_CTL, val);
+			intel_de_write(dev_priv, UTIL_PIN_CTL, val);
 		}
 
 		val = 0;
 		if (panel->backlight.util_pin_active_low)
 			val |= UTIL_PIN_POLARITY;
-		I915_WRITE(UTIL_PIN_CTL, val | UTIL_PIN_PIPE(pipe) |
-				UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
+		intel_de_write(dev_priv, UTIL_PIN_CTL,
+			       val | UTIL_PIN_PIPE(pipe) | UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
 	}
 
-	pwm_ctl = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(dev_priv,
+				BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
 		DRM_DEBUG_KMS("backlight already enabled\n");
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-				pwm_ctl);
+		intel_de_write(dev_priv,
+			       BXT_BLC_PWM_CTL(panel->backlight.controller),
+			       pwm_ctl);
 	}
 
-	I915_WRITE(BXT_BLC_PWM_FREQ(panel->backlight.controller),
-			panel->backlight.max);
+	intel_de_write(dev_priv,
+		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
+		       panel->backlight.max);
 
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
 
@@ -1113,10 +1125,12 @@ static void bxt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
-	POSTING_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-			pwm_ctl | BXT_BLC_PWM_ENABLE);
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       pwm_ctl);
+	intel_de_posting_read(dev_priv,
+			      BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
 static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -1127,16 +1141,19 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	u32 pwm_ctl;
 
-	pwm_ctl = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(dev_priv,
+				BXT_BLC_PWM_CTL(panel->backlight.controller));
 	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
 		DRM_DEBUG_KMS("backlight already enabled\n");
 		pwm_ctl &= ~BXT_BLC_PWM_ENABLE;
-		I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-			   pwm_ctl);
+		intel_de_write(dev_priv,
+			       BXT_BLC_PWM_CTL(panel->backlight.controller),
+			       pwm_ctl);
 	}
 
-	I915_WRITE(BXT_BLC_PWM_FREQ(panel->backlight.controller),
-		   panel->backlight.max);
+	intel_de_write(dev_priv,
+		       BXT_BLC_PWM_FREQ(panel->backlight.controller),
+		       panel->backlight.max);
 
 	intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
 
@@ -1144,10 +1161,12 @@ static void cnp_enable_backlight(const struct intel_crtc_state *crtc_state,
 	if (panel->backlight.active_low_pwm)
 		pwm_ctl |= BXT_BLC_PWM_POLARITY;
 
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller), pwm_ctl);
-	POSTING_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
-	I915_WRITE(BXT_BLC_PWM_CTL(panel->backlight.controller),
-		   pwm_ctl | BXT_BLC_PWM_ENABLE);
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       pwm_ctl);
+	intel_de_posting_read(dev_priv,
+			      BXT_BLC_PWM_CTL(panel->backlight.controller));
+	intel_de_write(dev_priv, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		       pwm_ctl | BXT_BLC_PWM_ENABLE);
 }
 
 static void pwm_enable_backlight(const struct intel_crtc_state *crtc_state,
@@ -1493,7 +1512,7 @@ static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32 pwm_freq_hz)
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	int mul, clock;
 
-	if ((I915_READ(CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
+	if ((intel_de_read(dev_priv, CBR1_VLV) & CBR_PWM_CLOCK_MUX_SELECT) == 0) {
 		if (IS_CHERRYVIEW(dev_priv))
 			clock = KHz(19200);
 		else
@@ -1573,18 +1592,18 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 	bool alt, cpu_mode;
 
 	if (HAS_PCH_LPT(dev_priv))
-		alt = I915_READ(SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
+		alt = intel_de_read(dev_priv, SOUTH_CHICKEN2) & LPT_PWM_GRANULARITY;
 	else
-		alt = I915_READ(SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
+		alt = intel_de_read(dev_priv, SOUTH_CHICKEN1) & SPT_PWM_GRANULARITY;
 	panel->backlight.alternate_pwm_increment = alt;
 
-	pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = I915_READ(BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2);
 	panel->backlight.max = pch_ctl2 >> 16;
 
-	cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
 
 	if (!panel->backlight.max)
 		panel->backlight.max = get_backlight_max_vbt(connector);
@@ -1612,9 +1631,11 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 
 		/* Write converted CPU PWM value to PCH override register */
 		lpt_set_backlight(connector->base.state, panel->backlight.level);
-		I915_WRITE(BLC_PWM_PCH_CTL1, pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);
+		intel_de_write(dev_priv, BLC_PWM_PCH_CTL1,
+			       pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);
 
-		I915_WRITE(BLC_PWM_CPU_CTL2, cpu_ctl2 & ~BLM_PWM_ENABLE);
+		intel_de_write(dev_priv, BLC_PWM_CPU_CTL2,
+			       cpu_ctl2 & ~BLM_PWM_ENABLE);
 	}
 
 	return 0;
@@ -1626,10 +1647,10 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 	struct intel_panel *panel = &connector->panel;
 	u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
 
-	pch_ctl1 = I915_READ(BLC_PWM_PCH_CTL1);
+	pch_ctl1 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL1);
 	panel->backlight.active_low_pwm = pch_ctl1 & BLM_PCH_POLARITY;
 
-	pch_ctl2 = I915_READ(BLC_PWM_PCH_CTL2);
+	pch_ctl2 = intel_de_read(dev_priv, BLC_PWM_PCH_CTL2);
 	panel->backlight.max = pch_ctl2 >> 16;
 
 	if (!panel->backlight.max)
@@ -1645,7 +1666,7 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 	panel->backlight.level = clamp(val, panel->backlight.min,
 				       panel->backlight.max);
 
-	cpu_ctl2 = I915_READ(BLC_PWM_CPU_CTL2);
+	cpu_ctl2 = intel_de_read(dev_priv, BLC_PWM_CPU_CTL2);
 	panel->backlight.enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
 		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
 
@@ -1658,7 +1679,7 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, val;
 
-	ctl = I915_READ(BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
 
 	if (IS_GEN(dev_priv, 2) || IS_I915GM(dev_priv) || IS_I945GM(dev_priv))
 		panel->backlight.combination_mode = ctl & BLM_LEGACY_MODE;
@@ -1697,11 +1718,11 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 	struct intel_panel *panel = &connector->panel;
 	u32 ctl, ctl2, val;
 
-	ctl2 = I915_READ(BLC_PWM_CTL2);
+	ctl2 = intel_de_read(dev_priv, BLC_PWM_CTL2);
 	panel->backlight.combination_mode = ctl2 & BLM_COMBINATION_MODE;
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = I915_READ(BLC_PWM_CTL);
+	ctl = intel_de_read(dev_priv, BLC_PWM_CTL);
 	panel->backlight.max = ctl >> 16;
 
 	if (!panel->backlight.max)
@@ -1734,10 +1755,10 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 	if (WARN_ON(pipe != PIPE_A && pipe != PIPE_B))
 		return -ENODEV;
 
-	ctl2 = I915_READ(VLV_BLC_PWM_CTL2(pipe));
+	ctl2 = intel_de_read(dev_priv, VLV_BLC_PWM_CTL2(pipe));
 	panel->backlight.active_low_pwm = ctl2 & BLM_POLARITY_I965;
 
-	ctl = I915_READ(VLV_BLC_PWM_CTL(pipe));
+	ctl = intel_de_read(dev_priv, VLV_BLC_PWM_CTL(pipe));
 	panel->backlight.max = ctl >> 16;
 
 	if (!panel->backlight.max)
@@ -1767,18 +1788,20 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.controller = dev_priv->vbt.backlight.controller;
 
-	pwm_ctl = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(dev_priv,
+				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	/* Controller 1 uses the utility pin. */
 	if (panel->backlight.controller == 1) {
-		val = I915_READ(UTIL_PIN_CTL);
+		val = intel_de_read(dev_priv, UTIL_PIN_CTL);
 		panel->backlight.util_pin_active_low =
 					val & UTIL_PIN_POLARITY;
 	}
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.max =
-		I915_READ(BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(dev_priv,
+			      BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.max)
 		panel->backlight.max = get_backlight_max_vbt(connector);
@@ -1812,11 +1835,13 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 	 */
 	panel->backlight.controller = 0;
 
-	pwm_ctl = I915_READ(BXT_BLC_PWM_CTL(panel->backlight.controller));
+	pwm_ctl = intel_de_read(dev_priv,
+				BXT_BLC_PWM_CTL(panel->backlight.controller));
 
 	panel->backlight.active_low_pwm = pwm_ctl & BXT_BLC_PWM_POLARITY;
 	panel->backlight.max =
-		I915_READ(BXT_BLC_PWM_FREQ(panel->backlight.controller));
+		intel_de_read(dev_priv,
+			      BXT_BLC_PWM_FREQ(panel->backlight.controller));
 
 	if (!panel->backlight.max)
 		panel->backlight.max = get_backlight_max_vbt(connector);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
