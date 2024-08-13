Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E540A950A7E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 18:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8272410E398;
	Tue, 13 Aug 2024 16:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EXqKTj34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126DD10E398;
 Tue, 13 Aug 2024 16:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723567308; x=1755103308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ukOWmK/eaNODZqWfWV3waBoSYTnCIPPp7sMxLLcdWTk=;
 b=EXqKTj34I6gktj8A80Kyim2RgAlW+yI2IyQg1lXkVcJF6Nn49hvr3aK2
 3BIiFdqSFPe55BjXchunyaUf7aid20o8yr+ZJfcSOpOUpwefbcMSE/WDl
 R4T0y8o5LVhrSkR2z8m98v4ZjX0pa5Zjd8Amu5j4OW5LbjgMS0210XgT+
 OltQAkY2jKswnDL/wV0r2RtcF3C87AJ34uY5EgqjN6yRFF7F4yKuKXgjl
 CqGoh41MC+0xJwaHkNMIJk5omUnQKSyaOfdBldJx0cy7yV6kVUTti/fMK
 NQI9ywt8ORabbHUFJAlFMgd+6QfRAWsCh87g6rtZNJAaxrJYJFajnAlDb A==;
X-CSE-ConnectionGUID: jZEi9AZ6TAiFqQtD4ElA/g==
X-CSE-MsgGUID: 87ZtErm0TPCWI4eip5RIlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21714832"
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="21714832"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:48 -0700
X-CSE-ConnectionGUID: ETME5hSzT5286vPS+WM3hQ==
X-CSE-MsgGUID: X74GCrFDScmqcArDGuOPTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,286,1716274800"; d="scan'208";a="58611875"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 09:41:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/7] drm/i915/lspcon: convert to struct intel_display
Date: Tue, 13 Aug 2024 19:41:21 +0300
Message-Id: <20240813164123.2674462-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813164123.2674462-1-jani.nikula@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_lspcon.[ch] to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 115 ++++++++++----------
 1 file changed, 57 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 8b26354d6e53..f9db867fae89 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -79,33 +79,33 @@ static const char *lspcon_mode_name(enum drm_lspcon_mode mode)
 
 static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 {
-	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(dp);
+	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_dpcd_ident *ident;
 	u32 vendor_oui;
 
-	if (drm_dp_read_desc(&dp->aux, &dp->desc, drm_dp_is_branch(dp->dpcd))) {
-		drm_err(&i915->drm, "Can't read description\n");
+	if (drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc, drm_dp_is_branch(intel_dp->dpcd))) {
+		drm_err(display->drm, "Can't read description\n");
 		return false;
 	}
 
-	ident = &dp->desc.ident;
+	ident = &intel_dp->desc.ident;
 	vendor_oui = (ident->oui[0] << 16) | (ident->oui[1] << 8) |
 		      ident->oui[2];
 
 	switch (vendor_oui) {
 	case LSPCON_VENDOR_MCA_OUI:
 		lspcon->vendor = LSPCON_VENDOR_MCA;
-		drm_dbg_kms(&i915->drm, "Vendor: Mega Chips\n");
+		drm_dbg_kms(display->drm, "Vendor: Mega Chips\n");
 		break;
 
 	case LSPCON_VENDOR_PARADE_OUI:
 		lspcon->vendor = LSPCON_VENDOR_PARADE;
-		drm_dbg_kms(&i915->drm, "Vendor: Parade Tech\n");
+		drm_dbg_kms(display->drm, "Vendor: Parade Tech\n");
 		break;
 
 	default:
-		drm_err(&i915->drm, "Invalid/Unknown vendor OUI\n");
+		drm_err(display->drm, "Invalid/Unknown vendor OUI\n");
 		return false;
 	}
 
@@ -123,7 +123,7 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 hdr_caps;
 	int ret;
 
@@ -131,10 +131,10 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 			       &hdr_caps, 1);
 
 	if (ret < 0) {
-		drm_dbg_kms(&i915->drm, "HDR capability detection failed\n");
+		drm_dbg_kms(display->drm, "HDR capability detection failed\n");
 		lspcon->hdr_supported = false;
 	} else if (hdr_caps & 0x1) {
-		drm_dbg_kms(&i915->drm, "LSPCON capable of HDR\n");
+		drm_dbg_kms(display->drm, "LSPCON capable of HDR\n");
 		lspcon->hdr_supported = true;
 	}
 }
@@ -142,12 +142,12 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum drm_lspcon_mode current_mode;
 	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 
 	if (drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode)) {
-		drm_dbg_kms(&i915->drm, "Error reading LSPCON mode\n");
+		drm_dbg_kms(display->drm, "Error reading LSPCON mode\n");
 		return DRM_LSPCON_MODE_INVALID;
 	}
 	return current_mode;
@@ -169,23 +169,23 @@ static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 					     enum drm_lspcon_mode mode)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	enum drm_lspcon_mode current_mode;
 
 	current_mode = lspcon_get_current_mode(lspcon);
 	if (current_mode == mode)
 		goto out;
 
-	drm_dbg_kms(&i915->drm, "Waiting for LSPCON mode %s to settle\n",
+	drm_dbg_kms(display->drm, "Waiting for LSPCON mode %s to settle\n",
 		    lspcon_mode_name(mode));
 
 	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode,
 		 lspcon_get_mode_settle_timeout(lspcon));
 	if (current_mode != mode)
-		drm_err(&i915->drm, "LSPCON mode hasn't settled\n");
+		drm_err(display->drm, "LSPCON mode hasn't settled\n");
 
 out:
-	drm_dbg_kms(&i915->drm, "Current LSPCON mode %s\n",
+	drm_dbg_kms(display->drm, "Current LSPCON mode %s\n",
 		    lspcon_mode_name(current_mode));
 
 	return current_mode;
@@ -195,46 +195,46 @@ static int lspcon_change_mode(struct intel_lspcon *lspcon,
 			      enum drm_lspcon_mode mode)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int err;
 	enum drm_lspcon_mode current_mode;
 	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
 
 	err = drm_lspcon_get_mode(intel_dp->aux.drm_dev, ddc, &current_mode);
 	if (err) {
-		drm_err(&i915->drm, "Error reading LSPCON mode\n");
+		drm_err(display->drm, "Error reading LSPCON mode\n");
 		return err;
 	}
 
 	if (current_mode == mode) {
-		drm_dbg_kms(&i915->drm, "Current mode = desired LSPCON mode\n");
+		drm_dbg_kms(display->drm, "Current mode = desired LSPCON mode\n");
 		return 0;
 	}
 
 	err = drm_lspcon_set_mode(intel_dp->aux.drm_dev, ddc, mode);
 	if (err < 0) {
-		drm_err(&i915->drm, "LSPCON mode change failed\n");
+		drm_err(display->drm, "LSPCON mode change failed\n");
 		return err;
 	}
 
 	lspcon->mode = mode;
-	drm_dbg_kms(&i915->drm, "LSPCON mode changed done\n");
+	drm_dbg_kms(display->drm, "LSPCON mode changed done\n");
 	return 0;
 }
 
 static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 rev;
 
 	if (drm_dp_dpcd_readb(&lspcon_to_intel_dp(lspcon)->aux, DP_DPCD_REV,
 			      &rev) != 1) {
-		drm_dbg_kms(&i915->drm, "Native AUX CH down\n");
+		drm_dbg_kms(display->drm, "Native AUX CH down\n");
 		return false;
 	}
 
-	drm_dbg_kms(&i915->drm, "Native AUX CH up, DPCD version: %d.%d\n",
+	drm_dbg_kms(display->drm, "Native AUX CH up, DPCD version: %d.%d\n",
 		    rev >> 4, rev & 0xf);
 
 	return true;
@@ -242,12 +242,12 @@ static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
 
 static bool lspcon_probe(struct intel_lspcon *lspcon)
 {
-	int retry;
-	enum drm_dp_dual_mode_type adaptor_type;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct i2c_adapter *ddc = &intel_dp->aux.ddc;
+	enum drm_dp_dual_mode_type adaptor_type;
 	enum drm_lspcon_mode expected_mode;
+	int retry;
 
 	expected_mode = lspcon_wake_native_aux_ch(lspcon) ?
 			DRM_LSPCON_MODE_PCON : DRM_LSPCON_MODE_LS;
@@ -263,13 +263,13 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	}
 
 	if (adaptor_type != DRM_DP_DUAL_MODE_LSPCON) {
-		drm_dbg_kms(&i915->drm, "No LSPCON detected, found %s\n",
+		drm_dbg_kms(display->drm, "No LSPCON detected, found %s\n",
 			    drm_dp_get_dual_mode_type_name(adaptor_type));
 		return false;
 	}
 
 	/* Yay ... got a LSPCON device */
-	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
+	drm_dbg_kms(display->drm, "LSPCON detected\n");
 	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
 
 	/*
@@ -279,7 +279,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	 */
 	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
 		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
-			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
+			drm_err(display->drm, "LSPCON mode change to PCON failed\n");
 			return false;
 		}
 	}
@@ -289,13 +289,13 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	unsigned long start = jiffies;
 
 	while (1) {
 		if (intel_digital_port_connected(&dig_port->base)) {
-			drm_dbg_kms(&i915->drm, "LSPCON recovering in PCON mode after %u ms\n",
+			drm_dbg_kms(display->drm, "LSPCON recovering in PCON mode after %u ms\n",
 				    jiffies_to_msecs(jiffies - start));
 			return;
 		}
@@ -306,7 +306,7 @@ static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
 		usleep_range(10000, 15000);
 	}
 
-	drm_dbg_kms(&i915->drm, "LSPCON DP descriptor mismatch after resume\n");
+	drm_dbg_kms(display->drm, "LSPCON DP descriptor mismatch after resume\n");
 }
 
 static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
@@ -477,10 +477,10 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 			    unsigned int type,
 			    const void *frame, ssize_t len)
 {
-	bool ret = true;
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
+	bool ret = true;
 
 	switch (type) {
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -492,7 +492,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 								 frame, len);
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		drm_dbg_kms(&i915->drm, "Update HDR metadata for lspcon\n");
+		drm_dbg_kms(display->drm, "Update HDR metadata for lspcon\n");
 		/* It uses the legacy hsw implementation for the same */
 		hsw_write_infoframe(encoder, crtc_state, type, frame, len);
 		break;
@@ -501,7 +501,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 	}
 
 	if (!ret) {
-		drm_err(&i915->drm, "Failed to write infoframes\n");
+		drm_err(display->drm, "Failed to write infoframes\n");
 		return;
 	}
 }
@@ -522,17 +522,17 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
-	ssize_t ret;
-	union hdmi_infoframe frame;
-	u8 buf[VIDEO_DIP_DATA_SIZE];
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	union hdmi_infoframe frame;
+	u8 buf[VIDEO_DIP_DATA_SIZE];
+	ssize_t ret;
 
 	if (!lspcon->active) {
-		drm_err(&i915->drm, "Writing infoframes while LSPCON disabled ?\n");
+		drm_err(display->drm, "Writing infoframes while LSPCON disabled ?\n");
 		return;
 	}
 
@@ -542,7 +542,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 						       conn_state->connector,
 						       adjusted_mode);
 	if (ret < 0) {
-		drm_err(&i915->drm, "couldn't fill AVI infoframe\n");
+		drm_err(display->drm, "couldn't fill AVI infoframe\n");
 		return;
 	}
 
@@ -583,7 +583,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
-		drm_err(&i915->drm, "Failed to pack AVI IF\n");
+		drm_err(display->drm, "Failed to pack AVI IF\n");
 		return;
 	}
 
@@ -624,9 +624,9 @@ static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_aux *aux)
 u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	bool infoframes_enabled;
 	u32 val = 0;
 	u32 mask, tmp;
@@ -640,8 +640,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 		val |= intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
 
 	if (lspcon->hdr_supported) {
-		tmp = intel_de_read(dev_priv,
-				    HSW_TVIDEO_DIP_CTL(dev_priv, pipe_config->cpu_transcoder));
+		tmp = intel_de_read(display,
+				    HSW_TVIDEO_DIP_CTL(display, pipe_config->cpu_transcoder));
 		mask = VIDEO_DIP_ENABLE_GMP_HSW;
 
 		if (tmp & mask)
@@ -658,32 +658,32 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 
 bool lspcon_init(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_connector *connector = &intel_dp->attached_connector->base;
 
 	lspcon->active = false;
 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
 
 	if (!lspcon_probe(lspcon)) {
-		drm_err(&i915->drm, "Failed to probe lspcon\n");
+		drm_err(display->drm, "Failed to probe lspcon\n");
 		return false;
 	}
 
 	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
-		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
+		drm_err(display->drm, "LSPCON DPCD read failed\n");
 		return false;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
-		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
+		drm_err(display->drm, "LSPCON vendor detection failed\n");
 		return false;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
-	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
+	drm_dbg_kms(display->drm, "Success: LSPCON init\n");
 	return true;
 }
 
@@ -697,9 +697,8 @@ u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
 
 void lspcon_resume(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
-	struct drm_device *dev = dig_port->base.base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
 	enum drm_lspcon_mode expected_mode;
 
 	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
@@ -707,7 +706,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 
 	if (!lspcon->active) {
 		if (!lspcon_init(dig_port)) {
-			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
+			drm_err(display->drm, "LSPCON init failed on port %c\n",
 				port_name(dig_port->base.port));
 			return;
 		}
@@ -724,7 +723,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 		return;
 
 	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
-		drm_err(&i915->drm, "LSPCON resume failed\n");
+		drm_err(display->drm, "LSPCON resume failed\n");
 	else
-		drm_dbg_kms(&i915->drm, "LSPCON resume success\n");
+		drm_dbg_kms(display->drm, "LSPCON resume success\n");
 }
-- 
2.39.2

