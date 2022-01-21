Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217E4495F5B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A97410EA17;
	Fri, 21 Jan 2022 13:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B358C10EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770069; x=1674306069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M5lnkXbjWhSfBOOr7FkRn9jXvSht7GXVrlfReKy19kI=;
 b=bnU7yci8eDqxCORpWU0bpyyoNNii03kLAJtxMhV/PlFowQDAxw8P46nS
 JcV8fTTCGqk64W0IfZrwiwDyBHAu6MwXTMeQucLd6AkHSKeHFapMRiOUP
 esNQyfF8R9gDVwHSzRXggpi3l+mymZafO+QvVbkKOztTfvr6H4fDACn45
 Dzh4Ms542UqoNyxhpKUhlaFDTVwjHsUk7aY9izndQJ+4rEafkNTf7L+wg
 i4697tdzHl6F5tYL+FMktGGT2AP8QQYXN+k4KEIamYuJJYa7WdO0umWFn
 iFNS7V8fSCoVK/AFxegO9rzd/l9Mfvb/uETD68udlzFtnZ2VrWBWgsRJr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="306369042"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="306369042"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="478236917"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:33 +0200
Message-Id: <b1cffaa70fcc614574f2dce4461e28be7a407e30.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/dp: convert to drm device based
 logging
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

Prefer drm device based logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++-----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cb726cee9e1d..9acbf8c59f6b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -704,7 +704,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
 			i915->max_cdclk_freq * 48 /
 			intel_dp_mode_to_fec_clock(mode_clock);
 
-		DRM_DEBUG_KMS("Max big joiner bpp: %u\n", max_bpp_bigjoiner);
+		drm_dbg_kms(&i915->drm, "Max big joiner bpp: %u\n", max_bpp_bigjoiner);
 		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
 	}
 
@@ -2919,7 +2919,8 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 }
 
 static ssize_t
-intel_dp_hdr_metadata_infoframe_sdp_pack(const struct hdmi_drm_infoframe *drm_infoframe,
+intel_dp_hdr_metadata_infoframe_sdp_pack(struct drm_i915_private *i915,
+					 const struct hdmi_drm_infoframe *drm_infoframe,
 					 struct dp_sdp *sdp,
 					 size_t size)
 {
@@ -2935,12 +2936,12 @@ intel_dp_hdr_metadata_infoframe_sdp_pack(const struct hdmi_drm_infoframe *drm_in
 
 	len = hdmi_drm_infoframe_pack_only(drm_infoframe, buf, sizeof(buf));
 	if (len < 0) {
-		DRM_DEBUG_KMS("buffer size is smaller than hdr metadata infoframe\n");
+		drm_dbg_kms(&i915->drm, "buffer size is smaller than hdr metadata infoframe\n");
 		return -ENOSPC;
 	}
 
 	if (len != infoframe_size) {
-		DRM_DEBUG_KMS("wrong static hdr metadata size\n");
+		drm_dbg_kms(&i915->drm, "wrong static hdr metadata size\n");
 		return -ENOSPC;
 	}
 
@@ -3013,7 +3014,8 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 					    sizeof(sdp));
 		break;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
-		len = intel_dp_hdr_metadata_infoframe_sdp_pack(&crtc_state->infoframes.drm.drm,
+		len = intel_dp_hdr_metadata_infoframe_sdp_pack(dev_priv,
+							       &crtc_state->infoframes.drm.drm,
 							       &sdp, sizeof(sdp));
 		break;
 	default:
@@ -3421,22 +3423,22 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 
 	switch (data->phy_pattern) {
 	case DP_PHY_TEST_PATTERN_NONE:
-		DRM_DEBUG_KMS("Disable Phy Test Pattern\n");
+		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
 		break;
 	case DP_PHY_TEST_PATTERN_D10_2:
-		DRM_DEBUG_KMS("Set D10.2 Phy Test Pattern\n");
+		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
 		break;
 	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
-		DRM_DEBUG_KMS("Set Error Count Phy Test Pattern\n");
+		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE |
 			       DDI_DP_COMP_CTL_SCRAMBLED_0);
 		break;
 	case DP_PHY_TEST_PATTERN_PRBS7:
-		DRM_DEBUG_KMS("Set PRBS7 Phy Test Pattern\n");
+		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
 		break;
@@ -3446,7 +3448,8 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		 * current firmware of DPR-100 could not set it, so hardcoding
 		 * now for complaince test.
 		 */
-		DRM_DEBUG_KMS("Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
 		pattern_val = 0x3e0f83e0;
 		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 0), pattern_val);
 		pattern_val = 0x0f83e0f8;
@@ -3463,7 +3466,7 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		 * current firmware of DPR-100 could not set it, so hardcoding
 		 * now for complaince test.
 		 */
-		DRM_DEBUG_KMS("Set HBR2 compliance Phy Test Pattern\n");
+		drm_dbg_kms(&dev_priv->drm, "Set HBR2 compliance Phy Test Pattern\n");
 		pattern_val = 0xFB;
 		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
@@ -3532,13 +3535,14 @@ intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
 static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_dp_phy_test_params *data =
 		&intel_dp->compliance.test_data.phytest;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 					     link_status) < 0) {
-		DRM_DEBUG_KMS("failed to get link status\n");
+		drm_dbg_kms(&i915->drm, "failed to get link status\n");
 		return;
 	}
 
@@ -3563,11 +3567,12 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct drm_dp_phy_test_params *data =
 		&intel_dp->compliance.test_data.phytest;
 
 	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
-		DRM_DEBUG_KMS("DP Phy Test pattern AUX read failure\n");
+		drm_dbg_kms(&i915->drm, "DP Phy Test pattern AUX read failure\n");
 		return DP_TEST_NAK;
 	}
 
@@ -5075,8 +5080,8 @@ static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
 	intel_connector = container_of(work, typeof(*intel_connector),
 				       modeset_retry_work);
 	connector = &intel_connector->base;
-	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n", connector->base.id,
-		      connector->name);
+	drm_dbg_kms(connector->dev, "[CONNECTOR:%d:%s]\n", connector->base.id,
+		    connector->name);
 
 	/* Grab the locks before changing connector property*/
 	mutex_lock(&connector->dev->mode_config.mutex);
-- 
2.30.2

