Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 162C91517A1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 10:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8688B6EE0F;
	Tue,  4 Feb 2020 09:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EDDA6EE0F
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 09:19:31 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m16so21950666wrx.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Feb 2020 01:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dnYcLVKIvd6ueAGqMuFsO7/hDtBaHHSvjKuQVV0KtNU=;
 b=cUJ2t7sHN44xVGxtv+rHUT//Zz5Olxmdn4B5l+22HBqDoYBLRbgqzO+Rag4w/GkSbV
 ml+/vIVFlEsDwCucBU0klQ3XcIxQgZDThAk+ly6/Jl3DKTzP2TbfuP/MRCGGm5PC1wKJ
 zwV9WoTadwZe89fa318a9I3TLE3BhSU5wSWc/DcBVsl89+mnWN4/InEdftXHj7UJ6YMb
 jKlFbp3OzvhM5TGOexdapj5EZNtytJ7Pi+pVx2e4HKok2RvuzIe6axhdOgIwuFLQ+5g/
 NM5vc7jrpFP5ElaK7o1O37giO/tq9UzTI8pgnjfU5TvDx+IXK+QYTAP5BvhnDtvopURW
 WMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dnYcLVKIvd6ueAGqMuFsO7/hDtBaHHSvjKuQVV0KtNU=;
 b=FTXgZF0R7Y5PMmd6qfCtiKK448hOPlMy7XNcfrHV4ZJ0zxhplcV1qzQbrmqZSCwEO0
 G7SLg6jQ6PrOOAdsuitzNZX2KBZKgnD9M10z0QiWGKYGo2eVRvHTCmuj7MkURaLLDArv
 vhX+i5VzRtVLhOqJBKUzVOpQemkC5j8mDzfp6tD9DYh9k42xErvsX9dN/i3O412bcS9A
 XUzwYLvsDq7mJTr5zxMCUgfY5XP1TiHbmvrzrRqJlrAdGQeG2DuaCByHcqrMIep7Bo54
 4Q50WeEKw4Svm2mCzhQ8Wsl9xA8TPCOGK+IzRdZBx1o+pb3EX5ZsqceLjkgRLOqbHL0p
 Ch5w==
X-Gm-Message-State: APjAAAVxQAgFVqSuM0ay0rdBh6T/VHjDYeVje0rd1gHywcAbsIye6DPa
 uE+h94eK79Af71NF40Tkepc=
X-Google-Smtp-Source: APXvYqx6jVpuWyfvJCWGN5FwGMAln02SIfYKtS+JH1S+TdcTWD14U11L7f0TqbWtuYSB8hnSaMxiCA==
X-Received: by 2002:a5d:608f:: with SMTP id w15mr16137700wrt.20.1580807969912; 
 Tue, 04 Feb 2020 01:19:29 -0800 (PST)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id f189sm3094968wmf.16.2020.02.04.01.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 01:19:29 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue,  4 Feb 2020 12:18:49 +0300
Message-Id: <20200204091855.24259-7-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204091855.24259-1-wambui.karugax@gmail.com>
References: <20200204091855.24259-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/12] drm/i915/dp_aux_backlight: convert to
 drm_device based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Conversion of the printk based drm logging macros to the struct
drm_device based logging macros in display/intel_dp_aux_backlight.c.
This also involves extracting the drm_i915_private device pointer from
various intel types to use in the macros.

Note that this converts DRM_DEBUG_DRIVER to drm_dbg().

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 72 ++++++++++++-------
 1 file changed, 45 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index e86feebef299..83d9c76e4da9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -35,8 +35,9 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
 			      &reg_val) < 0) {
-		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
-			      DP_EDP_DISPLAY_CONTROL_REGISTER);
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "Failed to read DPCD register 0x%x\n",
+			    DP_EDP_DISPLAY_CONTROL_REGISTER);
 		return;
 	}
 	if (enable)
@@ -46,8 +47,9 @@ static void set_aux_backlight_enable(struct intel_dp *intel_dp, bool enable)
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_EDP_DISPLAY_CONTROL_REGISTER,
 			       reg_val) != 1) {
-		DRM_DEBUG_KMS("Failed to %s aux backlight\n",
-			      enable ? "enable" : "disable");
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "Failed to %s aux backlight\n",
+			    enable ? "enable" : "disable");
 	}
 }
 
@@ -65,8 +67,9 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER,
 			      &mode_reg) != 1) {
-		DRM_DEBUG_KMS("Failed to read the DPCD register 0x%x\n",
-			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "Failed to read the DPCD register 0x%x\n",
+			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
 		return 0;
 	}
 
@@ -80,8 +83,9 @@ static u32 intel_dp_aux_get_backlight(struct intel_connector *connector)
 
 	if (drm_dp_dpcd_read(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
 			     &read_val, sizeof(read_val)) < 0) {
-		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
-			      DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "Failed to read DPCD register 0x%x\n",
+			    DP_EDP_BACKLIGHT_BRIGHTNESS_MSB);
 		return 0;
 	}
 	level = read_val[0];
@@ -111,7 +115,8 @@ intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 lev
 	}
 	if (drm_dp_dpcd_write(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
 			      vals, sizeof(vals)) < 0) {
-		DRM_DEBUG_KMS("Failed to write aux backlight level\n");
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "Failed to write aux backlight level\n");
 		return;
 	}
 }
@@ -133,7 +138,8 @@ static bool intel_dp_aux_set_pwm_freq(struct intel_connector *connector)
 
 	freq = dev_priv->vbt.backlight.pwm_freq_hz;
 	if (!freq) {
-		DRM_DEBUG_KMS("Use panel default backlight frequency\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Use panel default backlight frequency\n");
 		return false;
 	}
 
@@ -146,13 +152,14 @@ static bool intel_dp_aux_set_pwm_freq(struct intel_connector *connector)
 	fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
 
 	if (fxp_min > fxp_actual || fxp_actual > fxp_max) {
-		DRM_DEBUG_KMS("Actual frequency out of range\n");
+		drm_dbg_kms(&dev_priv->drm, "Actual frequency out of range\n");
 		return false;
 	}
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_EDP_BACKLIGHT_FREQ_SET, (u8) f) < 0) {
-		DRM_DEBUG_KMS("Failed to write aux backlight freq\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Failed to write aux backlight freq\n");
 		return false;
 	}
 	return true;
@@ -162,14 +169,16 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
 					  const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_panel *panel = &connector->panel;
 	u8 dpcd_buf, new_dpcd_buf, edp_backlight_mode;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, &dpcd_buf) != 1) {
-		DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
-			      DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
+		drm_dbg_kms(&i915->drm,
+			    "Failed to read DPCD register 0x%x\n",
+			    DP_EDP_BACKLIGHT_MODE_SET_REGISTER);
 		return;
 	}
 
@@ -186,7 +195,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
 		if (drm_dp_dpcd_writeb(&intel_dp->aux,
 				       DP_EDP_PWMGEN_BIT_COUNT,
 				       panel->backlight.pwmgen_bit_count) < 0)
-			DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
+			drm_dbg_kms(&i915->drm,
+				    "Failed to write aux pwmgen bit count\n");
 
 		break;
 
@@ -203,7 +213,8 @@ static void intel_dp_aux_enable_backlight(const struct intel_crtc_state *crtc_st
 	if (new_dpcd_buf != dpcd_buf) {
 		if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			DP_EDP_BACKLIGHT_MODE_SET_REGISTER, new_dpcd_buf) < 0) {
-			DRM_DEBUG_KMS("Failed to write aux backlight mode\n");
+			drm_dbg_kms(&i915->drm,
+				    "Failed to write aux backlight mode\n");
 		}
 	}
 
@@ -237,9 +248,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
 	 * minimum value will applied automatically. So no need to check that.
 	 */
 	freq = i915->vbt.backlight.pwm_freq_hz;
-	DRM_DEBUG_KMS("VBT defined backlight frequency %u Hz\n", freq);
+	drm_dbg_kms(&i915->drm, "VBT defined backlight frequency %u Hz\n",
+		    freq);
 	if (!freq) {
-		DRM_DEBUG_KMS("Use panel default backlight frequency\n");
+		drm_dbg_kms(&i915->drm,
+			    "Use panel default backlight frequency\n");
 		return max_backlight;
 	}
 
@@ -254,12 +267,14 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
 	 */
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &pn_min) != 1) {
-		DRM_DEBUG_KMS("Failed to read pwmgen bit count cap min\n");
+		drm_dbg_kms(&i915->drm,
+			    "Failed to read pwmgen bit count cap min\n");
 		return max_backlight;
 	}
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &pn_max) != 1) {
-		DRM_DEBUG_KMS("Failed to read pwmgen bit count cap max\n");
+		drm_dbg_kms(&i915->drm,
+			    "Failed to read pwmgen bit count cap max\n");
 		return max_backlight;
 	}
 	pn_min &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
@@ -268,7 +283,8 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
 	fxp_min = DIV_ROUND_CLOSEST(fxp * 3, 4);
 	fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
 	if (fxp_min < (1 << pn_min) || (255 << pn_max) < fxp_max) {
-		DRM_DEBUG_KMS("VBT defined backlight frequency out of range\n");
+		drm_dbg_kms(&i915->drm,
+			    "VBT defined backlight frequency out of range\n");
 		return max_backlight;
 	}
 
@@ -279,10 +295,11 @@ static u32 intel_dp_aux_calc_max_backlight(struct intel_connector *connector)
 			break;
 	}
 
-	DRM_DEBUG_KMS("Using eDP pwmgen bit count of %d\n", pn);
+	drm_dbg_kms(&i915->drm, "Using eDP pwmgen bit count of %d\n", pn);
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_EDP_PWMGEN_BIT_COUNT, pn) < 0) {
-		DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
+		drm_dbg_kms(&i915->drm,
+			    "Failed to write aux pwmgen bit count\n");
 		return max_backlight;
 	}
 	panel->backlight.pwmgen_bit_count = pn;
@@ -319,7 +336,8 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 	if (intel_dp->edp_dpcd[1] & DP_EDP_TCON_BACKLIGHT_ADJUSTMENT_CAP &&
 	    (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_AUX_SET_CAP) &&
 	    !(intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_PWM_PIN_CAP)) {
-		DRM_DEBUG_KMS("AUX Backlight Control Supported!\n");
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			    "AUX Backlight Control Supported!\n");
 		return true;
 	}
 	return false;
@@ -328,8 +346,8 @@ intel_dp_aux_display_control_capable(struct intel_connector *connector)
 int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 {
 	struct intel_panel *panel = &intel_connector->panel;
-	enum intel_backlight_type type =
-		to_i915(intel_connector->base.dev)->vbt.backlight.type;
+	struct drm_i915_private *i915 = to_i915(intel_connector->base.dev);
+	enum intel_backlight_type type = i915->vbt.backlight.type;
 
 	if (i915_modparams.enable_dpcd_backlight == 0 ||
 	    (i915_modparams.enable_dpcd_backlight == -1 &&
@@ -337,7 +355,7 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *intel_connector)
 		return -ENODEV;
 
 	if (type != INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE)
-		DRM_DEBUG_DRIVER("Ignoring VBT backlight type\n");
+		drm_dbg(&i915->drm, "Ignoring VBT backlight type\n");
 
 	panel->backlight.setup = intel_dp_aux_setup_backlight;
 	panel->backlight.enable = intel_dp_aux_enable_backlight;
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
