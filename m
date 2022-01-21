Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 483EB495F5E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B5210EA3D;
	Fri, 21 Jan 2022 13:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9895110EA35
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770085; x=1674306085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QCej7lJCRpfVmQEnPRG+ckOBa4VVT69dlbylXBDky+I=;
 b=CZKM8dN6AUDgSg3uPxpNKwJrrtp3D1AONPCwSQplDjPydxCTCRuZY4d7
 74PGRokZOJvWn6c7Bs7Iv4Hetk/0NRUgc2hMSI5S9adnIL4siegqVmXtA
 AIox0G2+z1qGabVsv2sv6VcHBg9rUBr/N02bFKKaxEMyYgQ2rwLfxFjk4
 2PZbetpzxvoHeJ12Hs99f17bBSTNIws6aQp2QJIRfrCo8EJlJoQctB/ZM
 KnQd/0zLG0U6nTNId1VmeHNeME29V0XONF8DFz8lq7J/t6uhSMMdyndqz
 C9dWjBMGMN3pE5eJR/qld+lHfgWoE643J4MCJqv/oG3M2C8YE9ofJ1oxB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="244467932"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="244467932"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="694630187"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:36 +0200
Message-Id: <8f83a4de60be1a4a964aa4334204db95d2db3689.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/lspcon: convert to drm device
 based logging
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer drm device based logging. Do some related dev_priv->i915 and
dp->intel_dp renames while at it.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 142 +++++++++++---------
 1 file changed, 76 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index e879d36c31ad..3d62a1d79f9c 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -78,11 +78,12 @@ static const char *lspcon_mode_name(enum drm_lspcon_mode mode)
 static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(dp);
 	struct drm_dp_dpcd_ident *ident;
 	u32 vendor_oui;
 
 	if (drm_dp_read_desc(&dp->aux, &dp->desc, drm_dp_is_branch(dp->dpcd))) {
-		DRM_ERROR("Can't read description\n");
+		drm_err(&i915->drm, "Can't read description\n");
 		return false;
 	}
 
@@ -93,16 +94,16 @@ static bool lspcon_detect_vendor(struct intel_lspcon *lspcon)
 	switch (vendor_oui) {
 	case LSPCON_VENDOR_MCA_OUI:
 		lspcon->vendor = LSPCON_VENDOR_MCA;
-		DRM_DEBUG_KMS("Vendor: Mega Chips\n");
+		drm_dbg_kms(&i915->drm, "Vendor: Mega Chips\n");
 		break;
 
 	case LSPCON_VENDOR_PARADE_OUI:
 		lspcon->vendor = LSPCON_VENDOR_PARADE;
-		DRM_DEBUG_KMS("Vendor: Parade Tech\n");
+		drm_dbg_kms(&i915->drm, "Vendor: Parade Tech\n");
 		break;
 
 	default:
-		DRM_ERROR("Invalid/Unknown vendor OUI\n");
+		drm_err(&i915->drm, "Invalid/Unknown vendor OUI\n");
 		return false;
 	}
 
@@ -119,21 +120,19 @@ static u32 get_hdr_status_reg(struct intel_lspcon *lspcon)
 
 void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 {
-	struct intel_digital_port *dig_port =
-		container_of(lspcon, struct intel_digital_port, lspcon);
-	struct drm_device *dev = dig_port->base.base.dev;
-	struct intel_dp *dp = lspcon_to_intel_dp(lspcon);
+	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 hdr_caps;
 	int ret;
 
-	ret = drm_dp_dpcd_read(&dp->aux, get_hdr_status_reg(lspcon),
+	ret = drm_dp_dpcd_read(&intel_dp->aux, get_hdr_status_reg(lspcon),
 			       &hdr_caps, 1);
 
 	if (ret < 0) {
-		drm_dbg_kms(dev, "HDR capability detection failed\n");
+		drm_dbg_kms(&i915->drm, "HDR capability detection failed\n");
 		lspcon->hdr_supported = false;
 	} else if (hdr_caps & 0x1) {
-		drm_dbg_kms(dev, "LSPCON capable of HDR\n");
+		drm_dbg_kms(&i915->drm, "LSPCON capable of HDR\n");
 		lspcon->hdr_supported = true;
 	}
 }
@@ -141,11 +140,12 @@ void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon)
 static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum drm_lspcon_mode current_mode;
 	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
 
 	if (drm_lspcon_get_mode(intel_dp->aux.drm_dev, adapter, &current_mode)) {
-		DRM_DEBUG_KMS("Error reading LSPCON mode\n");
+		drm_dbg_kms(&i915->drm, "Error reading LSPCON mode\n");
 		return DRM_LSPCON_MODE_INVALID;
 	}
 	return current_mode;
@@ -154,22 +154,24 @@ static enum drm_lspcon_mode lspcon_get_current_mode(struct intel_lspcon *lspcon)
 static enum drm_lspcon_mode lspcon_wait_mode(struct intel_lspcon *lspcon,
 					     enum drm_lspcon_mode mode)
 {
+	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	enum drm_lspcon_mode current_mode;
 
 	current_mode = lspcon_get_current_mode(lspcon);
 	if (current_mode == mode)
 		goto out;
 
-	DRM_DEBUG_KMS("Waiting for LSPCON mode %s to settle\n",
-		      lspcon_mode_name(mode));
+	drm_dbg_kms(&i915->drm, "Waiting for LSPCON mode %s to settle\n",
+		    lspcon_mode_name(mode));
 
 	wait_for((current_mode = lspcon_get_current_mode(lspcon)) == mode, 400);
 	if (current_mode != mode)
-		DRM_ERROR("LSPCON mode hasn't settled\n");
+		drm_err(&i915->drm, "LSPCON mode hasn't settled\n");
 
 out:
-	DRM_DEBUG_KMS("Current LSPCON mode %s\n",
-		      lspcon_mode_name(current_mode));
+	drm_dbg_kms(&i915->drm, "Current LSPCON mode %s\n",
+		    lspcon_mode_name(current_mode));
 
 	return current_mode;
 }
@@ -178,44 +180,47 @@ static int lspcon_change_mode(struct intel_lspcon *lspcon,
 			      enum drm_lspcon_mode mode)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int err;
 	enum drm_lspcon_mode current_mode;
 	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
 
 	err = drm_lspcon_get_mode(intel_dp->aux.drm_dev, adapter, &current_mode);
 	if (err) {
-		DRM_ERROR("Error reading LSPCON mode\n");
+		drm_err(&i915->drm, "Error reading LSPCON mode\n");
 		return err;
 	}
 
 	if (current_mode == mode) {
-		DRM_DEBUG_KMS("Current mode = desired LSPCON mode\n");
+		drm_dbg_kms(&i915->drm, "Current mode = desired LSPCON mode\n");
 		return 0;
 	}
 
 	err = drm_lspcon_set_mode(intel_dp->aux.drm_dev, adapter, mode);
 	if (err < 0) {
-		DRM_ERROR("LSPCON mode change failed\n");
+		drm_err(&i915->drm, "LSPCON mode change failed\n");
 		return err;
 	}
 
 	lspcon->mode = mode;
-	DRM_DEBUG_KMS("LSPCON mode changed done\n");
+	drm_dbg_kms(&i915->drm, "LSPCON mode changed done\n");
 	return 0;
 }
 
 static bool lspcon_wake_native_aux_ch(struct intel_lspcon *lspcon)
 {
+	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 rev;
 
 	if (drm_dp_dpcd_readb(&lspcon_to_intel_dp(lspcon)->aux, DP_DPCD_REV,
 			      &rev) != 1) {
-		DRM_DEBUG_KMS("Native AUX CH down\n");
+		drm_dbg_kms(&i915->drm, "Native AUX CH down\n");
 		return false;
 	}
 
-	DRM_DEBUG_KMS("Native AUX CH up, DPCD version: %d.%d\n",
-		      rev >> 4, rev & 0xf);
+	drm_dbg_kms(&i915->drm, "Native AUX CH up, DPCD version: %d.%d\n",
+		    rev >> 4, rev & 0xf);
 
 	return true;
 }
@@ -225,6 +230,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	int retry;
 	enum drm_dp_dual_mode_type adaptor_type;
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct i2c_adapter *adapter = &intel_dp->aux.ddc;
 	enum drm_lspcon_mode expected_mode;
 
@@ -242,13 +248,13 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	}
 
 	if (adaptor_type != DRM_DP_DUAL_MODE_LSPCON) {
-		DRM_DEBUG_KMS("No LSPCON detected, found %s\n",
-			       drm_dp_get_dual_mode_type_name(adaptor_type));
+		drm_dbg_kms(&i915->drm, "No LSPCON detected, found %s\n",
+			    drm_dp_get_dual_mode_type_name(adaptor_type));
 		return false;
 	}
 
 	/* Yay ... got a LSPCON device */
-	DRM_DEBUG_KMS("LSPCON detected\n");
+	drm_dbg_kms(&i915->drm, "LSPCON detected\n");
 	lspcon->mode = lspcon_wait_mode(lspcon, expected_mode);
 
 	/*
@@ -258,7 +264,7 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 	 */
 	if (lspcon->mode != DRM_LSPCON_MODE_PCON) {
 		if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON) < 0) {
-			DRM_ERROR("LSPCON mode change to PCON failed\n");
+			drm_err(&i915->drm, "LSPCON mode change to PCON failed\n");
 			return false;
 		}
 	}
@@ -268,13 +274,14 @@ static bool lspcon_probe(struct intel_lspcon *lspcon)
 static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
 {
 	struct intel_dp *intel_dp = lspcon_to_intel_dp(lspcon);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	unsigned long start = jiffies;
 
 	while (1) {
 		if (intel_digital_port_connected(&dig_port->base)) {
-			DRM_DEBUG_KMS("LSPCON recovering in PCON mode after %u ms\n",
-				      jiffies_to_msecs(jiffies - start));
+			drm_dbg_kms(&i915->drm, "LSPCON recovering in PCON mode after %u ms\n",
+				    jiffies_to_msecs(jiffies - start));
 			return;
 		}
 
@@ -284,7 +291,7 @@ static void lspcon_resume_in_pcon_wa(struct intel_lspcon *lspcon)
 		usleep_range(10000, 15000);
 	}
 
-	DRM_DEBUG_KMS("LSPCON DP descriptor mismatch after resume\n");
+	drm_dbg_kms(&i915->drm, "LSPCON DP descriptor mismatch after resume\n");
 }
 
 static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
@@ -301,7 +308,7 @@ static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
 		ret = drm_dp_dpcd_read(aux, LSPCON_PARADE_AVI_IF_CTRL,
 				       &avi_if_ctrl, 1);
 		if (ret < 0) {
-			DRM_ERROR("Failed to read AVI IF control\n");
+			drm_err(aux->drm_dev, "Failed to read AVI IF control\n");
 			return false;
 		}
 
@@ -309,7 +316,7 @@ static bool lspcon_parade_fw_ready(struct drm_dp_aux *aux)
 			return true;
 	}
 
-	DRM_ERROR("Parade FW not ready to accept AVI IF\n");
+	drm_err(aux->drm_dev, "Parade FW not ready to accept AVI IF\n");
 	return false;
 }
 
@@ -324,8 +331,8 @@ static bool _lspcon_parade_write_infoframe_blocks(struct drm_dp_aux *aux,
 
 	while (block_count < 4) {
 		if (!lspcon_parade_fw_ready(aux)) {
-			DRM_DEBUG_KMS("LSPCON FW not ready, block %d\n",
-				      block_count);
+			drm_dbg_kms(aux->drm_dev, "LSPCON FW not ready, block %d\n",
+				    block_count);
 			return false;
 		}
 
@@ -333,8 +340,8 @@ static bool _lspcon_parade_write_infoframe_blocks(struct drm_dp_aux *aux,
 		data = avi_buf + block_count * 8;
 		ret = drm_dp_dpcd_write(aux, reg, data, 8);
 		if (ret < 0) {
-			DRM_ERROR("Failed to write AVI IF block %d\n",
-				  block_count);
+			drm_err(aux->drm_dev, "Failed to write AVI IF block %d\n",
+				block_count);
 			return false;
 		}
 
@@ -348,15 +355,15 @@ static bool _lspcon_parade_write_infoframe_blocks(struct drm_dp_aux *aux,
 		avi_if_ctrl = LSPCON_PARADE_AVI_IF_KICKOFF | block_count;
 		ret = drm_dp_dpcd_write(aux, reg, &avi_if_ctrl, 1);
 		if (ret < 0) {
-			DRM_ERROR("Failed to update (0x%x), block %d\n",
-				  reg, block_count);
+			drm_err(aux->drm_dev, "Failed to update (0x%x), block %d\n",
+				reg, block_count);
 			return false;
 		}
 
 		block_count++;
 	}
 
-	DRM_DEBUG_KMS("Wrote AVI IF blocks successfully\n");
+	drm_dbg_kms(aux->drm_dev, "Wrote AVI IF blocks successfully\n");
 	return true;
 }
 
@@ -378,14 +385,14 @@ static bool _lspcon_write_avi_infoframe_parade(struct drm_dp_aux *aux,
 	 */
 
 	if (len > LSPCON_PARADE_AVI_IF_DATA_SIZE - 1) {
-		DRM_ERROR("Invalid length of infoframes\n");
+		drm_err(aux->drm_dev, "Invalid length of infoframes\n");
 		return false;
 	}
 
 	memcpy(&avi_if[1], frame, len);
 
 	if (!_lspcon_parade_write_infoframe_blocks(aux, avi_if)) {
-		DRM_DEBUG_KMS("Failed to write infoframe blocks\n");
+		drm_dbg_kms(aux->drm_dev, "Failed to write infoframe blocks\n");
 		return false;
 	}
 
@@ -412,7 +419,7 @@ static bool _lspcon_write_avi_infoframe_mca(struct drm_dp_aux *aux,
 				mdelay(50);
 				continue;
 			} else {
-				DRM_ERROR("DPCD write failed at:0x%x\n", reg);
+				drm_err(aux->drm_dev, "DPCD write failed at:0x%x\n", reg);
 				return false;
 			}
 		}
@@ -423,7 +430,7 @@ static bool _lspcon_write_avi_infoframe_mca(struct drm_dp_aux *aux,
 	reg = LSPCON_MCA_AVI_IF_CTRL;
 	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 	if (ret < 0) {
-		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		drm_err(aux->drm_dev, "DPCD read failed, address 0x%x\n", reg);
 		return false;
 	}
 
@@ -433,19 +440,19 @@ static bool _lspcon_write_avi_infoframe_mca(struct drm_dp_aux *aux,
 
 	ret = drm_dp_dpcd_write(aux, reg, &val, 1);
 	if (ret < 0) {
-		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		drm_err(aux->drm_dev, "DPCD read failed, address 0x%x\n", reg);
 		return false;
 	}
 
 	val = 0;
 	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 	if (ret < 0) {
-		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		drm_err(aux->drm_dev, "DPCD read failed, address 0x%x\n", reg);
 		return false;
 	}
 
 	if (val == LSPCON_MCA_AVI_IF_HANDLED)
-		DRM_DEBUG_KMS("AVI IF handled by FW\n");
+		drm_dbg_kms(aux->drm_dev, "AVI IF handled by FW\n");
 
 	return true;
 }
@@ -457,6 +464,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 {
 	bool ret = true;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
 
 	switch (type) {
@@ -469,7 +477,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 								 frame, len);
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		drm_dbg_kms(encoder->base.dev, "Update HDR metadata for lspcon\n");
+		drm_dbg_kms(&i915->drm, "Update HDR metadata for lspcon\n");
 		/* It uses the legacy hsw implementation for the same */
 		hsw_write_infoframe(encoder, crtc_state, type, frame, len);
 		break;
@@ -478,7 +486,7 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
 	}
 
 	if (!ret) {
-		DRM_ERROR("Failed to write infoframes\n");
+		drm_err(&i915->drm, "Failed to write infoframes\n");
 		return;
 	}
 }
@@ -504,11 +512,12 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 	u8 buf[VIDEO_DIP_DATA_SIZE];
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
 	if (!lspcon->active) {
-		DRM_ERROR("Writing infoframes while LSPCON disabled ?\n");
+		drm_err(&i915->drm, "Writing infoframes while LSPCON disabled ?\n");
 		return;
 	}
 
@@ -518,7 +527,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 						       conn_state->connector,
 						       adjusted_mode);
 	if (ret < 0) {
-		DRM_ERROR("couldn't fill AVI infoframe\n");
+		drm_err(&i915->drm, "couldn't fill AVI infoframe\n");
 		return;
 	}
 
@@ -559,7 +568,7 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
-		DRM_ERROR("Failed to pack AVI IF\n");
+		drm_err(&i915->drm, "Failed to pack AVI IF\n");
 		return;
 	}
 
@@ -575,7 +584,7 @@ static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux *aux)
 
 	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 	if (ret < 0) {
-		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		drm_err(aux->drm_dev, "DPCD read failed, address 0x%x\n", reg);
 		return false;
 	}
 
@@ -590,7 +599,7 @@ static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_aux *aux)
 
 	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
 	if (ret < 0) {
-		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		drm_err(aux->drm_dev, "DPCD read failed, address 0x%x\n", reg);
 		return false;
 	}
 
@@ -634,31 +643,32 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 
 bool lspcon_init(struct intel_digital_port *dig_port)
 {
-	struct intel_dp *dp = &dig_port->dp;
+	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
-	struct drm_connector *connector = &dp->attached_connector->base;
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_connector *connector = &intel_dp->attached_connector->base;
 
 	lspcon->active = false;
 	lspcon->mode = DRM_LSPCON_MODE_INVALID;
 
 	if (!lspcon_probe(lspcon)) {
-		DRM_ERROR("Failed to probe lspcon\n");
+		drm_err(&i915->drm, "Failed to probe lspcon\n");
 		return false;
 	}
 
-	if (drm_dp_read_dpcd_caps(&dp->aux, dp->dpcd) != 0) {
-		DRM_ERROR("LSPCON DPCD read failed\n");
+	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
+		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
 		return false;
 	}
 
 	if (!lspcon_detect_vendor(lspcon)) {
-		DRM_ERROR("LSPCON vendor detection failed\n");
+		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
 		return false;
 	}
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
-	DRM_DEBUG_KMS("Success: LSPCON init\n");
+	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
 	return true;
 }
 
@@ -674,15 +684,15 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 {
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	struct drm_device *dev = dig_port->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *i915 = to_i915(dev);
 	enum drm_lspcon_mode expected_mode;
 
-	if (!intel_bios_is_lspcon_present(dev_priv, dig_port->base.port))
+	if (!intel_bios_is_lspcon_present(i915, dig_port->base.port))
 		return;
 
 	if (!lspcon->active) {
 		if (!lspcon_init(dig_port)) {
-			DRM_ERROR("LSPCON init failed on port %c\n",
+			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
 				  port_name(dig_port->base.port));
 			return;
 		}
@@ -699,7 +709,7 @@ void lspcon_resume(struct intel_digital_port *dig_port)
 		return;
 
 	if (lspcon_change_mode(lspcon, DRM_LSPCON_MODE_PCON))
-		DRM_ERROR("LSPCON resume failed\n");
+		drm_err(&i915->drm, "LSPCON resume failed\n");
 	else
-		DRM_DEBUG_KMS("LSPCON resume success\n");
+		drm_dbg_kms(&i915->drm, "LSPCON resume success\n");
 }
-- 
2.30.2

