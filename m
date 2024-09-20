Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D89B997D509
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8476010E813;
	Fri, 20 Sep 2024 11:57:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7sTbekA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29DF510E80C;
 Fri, 20 Sep 2024 11:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833436; x=1758369436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5BIY2zz1Yi3b5469CKAtrhyfcLJvT2P5YG5lLMItcLQ=;
 b=j7sTbekAsCMjcYlV559jA+kv6UlS544xp0qMNsdOvDrZQOH/iOEqHqqH
 9TwY26oHQq/z28zt92SW+silCj6/KAYh+VPd2QP7nLyEeqsVdkknTbBcM
 AifK9XwUxKnIjvdsJ7hKAv2yIptwSypfWUlT9WBjDtJ12jdjLbc0UT9BP
 cXtjjayzkXNis7Dx4JtbbxQoOTeYVqllSESfYXU228Y6gSsJzyULVnk2D
 elTnGWvMzflV+CAs3vHkuwZV7NMJgBdN+VioPAp4lAM/2EWDVQP3oofo4
 DtBUmWhXrCR9brJ2nz1viM+nvUWT5estnQ1fL0ljry8Y+aQUCA73W9pc+ Q==;
X-CSE-ConnectionGUID: py8PHL9yQGiZeKPZfDpCYg==
X-CSE-MsgGUID: XfiqE0z9TuCpgFCVhCBCTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984559"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984559"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:16 -0700
X-CSE-ConnectionGUID: nMmu8MqWTLeGOVzvdVRarg==
X-CSE-MsgGUID: nMF6NpKCRwmm5bEBMnhHZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519159"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/9] drm/i915/dp: convert intel_dp_test.c struct intel_display
Date: Fri, 20 Sep 2024 14:56:45 +0300
Message-Id: <5b4ae05c6b3f1608bddb09078b616eff6b93efdd.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
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

Prefer struct intel_display over struct drm_i915_private.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_test.c | 123 ++++++++++---------
 1 file changed, 63 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 0a49b15f99e6..efdf25dfef51 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -15,15 +15,13 @@
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
 
-#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
-
 /* Adjust link config limits based on compliance test requests. */
 void
 intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* For DP Compliance we override the computed bpp for the pipe */
 	if (intel_dp->compliance.test_data.bpc != 0) {
@@ -33,7 +31,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 		limits->pipe.max_bpp = bpp;
 		pipe_config->dither_force_disable = bpp == 6 * 3;
 
-		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
+		drm_dbg_kms(display->drm, "Setting pipe_bpp to %d\n", bpp);
 	}
 
 	/* Use values requested by Compliance Test Request */
@@ -65,7 +63,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
 
 static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	int status = 0;
 	int test_link_rate;
 	u8 test_lane_count, test_link_bw;
@@ -77,7 +75,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 				   &test_lane_count);
 
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Lane count read failed\n");
+		drm_dbg_kms(display->drm, "Lane count read failed\n");
 		return DP_TEST_NAK;
 	}
 	test_lane_count &= DP_MAX_LANE_COUNT_MASK;
@@ -85,7 +83,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LINK_RATE,
 				   &test_link_bw);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Link Rate read failed\n");
+		drm_dbg_kms(display->drm, "Link Rate read failed\n");
 		return DP_TEST_NAK;
 	}
 	test_link_rate = drm_dp_bw_code_to_link_rate(test_link_bw);
@@ -103,7 +101,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
 
 static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 test_pattern;
 	u8 test_misc;
 	__be16 h_width, v_height;
@@ -113,7 +111,7 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
 	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_PATTERN,
 				   &test_pattern);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Test pattern read failed\n");
+		drm_dbg_kms(display->drm, "Test pattern read failed\n");
 		return DP_TEST_NAK;
 	}
 	if (test_pattern != DP_COLOR_RAMP)
@@ -122,21 +120,21 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
 	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_H_WIDTH_HI,
 				  &h_width, 2);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "H Width read failed\n");
+		drm_dbg_kms(display->drm, "H Width read failed\n");
 		return DP_TEST_NAK;
 	}
 
 	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_V_HEIGHT_HI,
 				  &v_height, 2);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "V Height read failed\n");
+		drm_dbg_kms(display->drm, "V Height read failed\n");
 		return DP_TEST_NAK;
 	}
 
 	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_MISC0,
 				   &test_misc);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "TEST MISC read failed\n");
+		drm_dbg_kms(display->drm, "TEST MISC read failed\n");
 		return DP_TEST_NAK;
 	}
 	if ((test_misc & DP_TEST_COLOR_FORMAT_MASK) != DP_COLOR_FORMAT_RGB)
@@ -165,7 +163,7 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
 
 static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 test_result = DP_TEST_ACK;
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
 	struct drm_connector *connector = &intel_connector->base;
@@ -181,7 +179,7 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 		 */
 		if (intel_dp->aux.i2c_nack_count > 0 ||
 		    intel_dp->aux.i2c_defer_count > 0)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "EDID read had %d NACKs, %d DEFERs\n",
 				    intel_dp->aux.i2c_nack_count,
 				    intel_dp->aux.i2c_defer_count);
@@ -195,7 +193,7 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 
 		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
 				       block->checksum) <= 0)
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Failed to write EDID checksum\n");
 
 		test_result = DP_TEST_ACK | DP_TEST_EDID_CHECKSUM_WRITE;
@@ -211,8 +209,7 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
 static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 					const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv =
-			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_phy_test_params *data =
 			&intel_dp->compliance.test_data.phytest;
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -222,27 +219,28 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 
 	switch (data->phy_pattern) {
 	case DP_LINK_QUAL_PATTERN_DISABLE:
-		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
-		if (DISPLAY_VER(dev_priv) >= 10)
-			intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		drm_dbg_kms(display->drm, "Disable Phy Test Pattern\n");
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe), 0x0);
+		if (DISPLAY_VER(display) >= 10)
+			intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 				     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
 				     DP_TP_CTL_LINK_TRAIN_NORMAL);
 		break;
 	case DP_LINK_QUAL_PATTERN_D10_2:
-		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+		drm_dbg_kms(display->drm, "Set D10.2 Phy Test Pattern\n");
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
 		break;
 	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
-		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+		drm_dbg_kms(display->drm,
+			    "Set Error Count Phy Test Pattern\n");
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE |
 			       DDI_DP_COMP_CTL_SCRAMBLED_0);
 		break;
 	case DP_LINK_QUAL_PATTERN_PRBS7:
-		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+		drm_dbg_kms(display->drm, "Set PRBS7 Phy Test Pattern\n");
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
 		break;
 	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
@@ -251,15 +249,15 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		 * current firmware of DPR-100 could not set it, so hardcoding
 		 * now for complaince test.
 		 */
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
 		pattern_val = 0x3e0f83e0;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 0), pattern_val);
+		intel_de_write(display, DDI_DP_COMP_PAT(pipe, 0), pattern_val);
 		pattern_val = 0x0f83e0f8;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 1), pattern_val);
+		intel_de_write(display, DDI_DP_COMP_PAT(pipe, 1), pattern_val);
 		pattern_val = 0x0000f83e;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 2), pattern_val);
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+		intel_de_write(display, DDI_DP_COMP_PAT(pipe, 2), pattern_val);
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE |
 			       DDI_DP_COMP_CTL_CUSTOM80);
 		break;
@@ -269,39 +267,42 @@ static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
 		 * current firmware of DPR-100 could not set it, so hardcoding
 		 * now for complaince test.
 		 */
-		drm_dbg_kms(&dev_priv->drm, "Set HBR2 compliance Phy Test Pattern\n");
+		drm_dbg_kms(display->drm,
+			    "Set HBR2 compliance Phy Test Pattern\n");
 		pattern_val = 0xFB;
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe),
 			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
 			       pattern_val);
 		break;
 	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
-		if (DISPLAY_VER(dev_priv) < 10)  {
-			drm_warn(&dev_priv->drm, "Platform does not support TPS4\n");
+		if (DISPLAY_VER(display) < 10)  {
+			drm_warn(display->drm,
+				 "Platform does not support TPS4\n");
 			break;
 		}
-		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
-		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+		drm_dbg_kms(display->drm,
+			    "Set TPS4 compliance Phy Test Pattern\n");
+		intel_de_write(display, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
 			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
 			     DP_TP_CTL_TRAIN_PAT4_SEL_TP4A | DP_TP_CTL_LINK_TRAIN_PAT4);
 		break;
 	default:
-		drm_warn(&dev_priv->drm, "Invalid Phy Test Pattern\n");
+		drm_warn(display->drm, "Invalid Phy Test Pattern\n");
 	}
 }
 
 static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_phy_test_params *data =
 		&intel_dp->compliance.test_data.phytest;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
 	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 					     link_status) < 0) {
-		drm_dbg_kms(&i915->drm, "failed to get link status\n");
+		drm_dbg_kms(display->drm, "failed to get link status\n");
 		return;
 	}
 
@@ -322,12 +323,13 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
 
 static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_phy_test_params *data =
 		&intel_dp->compliance.test_data.phytest;
 
 	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
-		drm_dbg_kms(&i915->drm, "DP Phy Test pattern AUX read failure\n");
+		drm_dbg_kms(display->drm,
+			    "DP Phy Test pattern AUX read failure\n");
 		return DP_TEST_NAK;
 	}
 
@@ -339,37 +341,37 @@ static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
 
 void intel_dp_handle_test_request(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	u8 response = DP_TEST_NAK;
 	u8 request = 0;
 	int status;
 
 	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_REQUEST, &request);
 	if (status <= 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Could not read test request from sink\n");
 		goto update_status;
 	}
 
 	switch (request) {
 	case DP_TEST_LINK_TRAINING:
-		drm_dbg_kms(&i915->drm, "LINK_TRAINING test requested\n");
+		drm_dbg_kms(display->drm, "LINK_TRAINING test requested\n");
 		response = intel_dp_autotest_link_training(intel_dp);
 		break;
 	case DP_TEST_LINK_VIDEO_PATTERN:
-		drm_dbg_kms(&i915->drm, "TEST_PATTERN test requested\n");
+		drm_dbg_kms(display->drm, "TEST_PATTERN test requested\n");
 		response = intel_dp_autotest_video_pattern(intel_dp);
 		break;
 	case DP_TEST_LINK_EDID_READ:
-		drm_dbg_kms(&i915->drm, "EDID test requested\n");
+		drm_dbg_kms(display->drm, "EDID test requested\n");
 		response = intel_dp_autotest_edid(intel_dp);
 		break;
 	case DP_TEST_LINK_PHY_TEST_PATTERN:
-		drm_dbg_kms(&i915->drm, "PHY_PATTERN test requested\n");
+		drm_dbg_kms(display->drm, "PHY_PATTERN test requested\n");
 		response = intel_dp_autotest_phy_pattern(intel_dp);
 		break;
 	default:
-		drm_dbg_kms(&i915->drm, "Invalid test request '%02x'\n",
+		drm_dbg_kms(display->drm, "Invalid test request '%02x'\n",
 			    request);
 		break;
 	}
@@ -380,7 +382,7 @@ void intel_dp_handle_test_request(struct intel_dp *intel_dp)
 update_status:
 	status = drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_RESPONSE, response);
 	if (status <= 0)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Could not write test response to sink\n");
 }
 
@@ -390,14 +392,14 @@ static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 				  struct drm_modeset_acquire_ctx *ctx,
 				  u8 *pipe_mask)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	int ret = 0;
 
 	*pipe_mask = 0;
 
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state =
 			connector->base.state;
@@ -417,7 +419,8 @@ static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
-		drm_WARN_ON(&i915->drm, !intel_crtc_has_dp_encoder(crtc_state));
+		drm_WARN_ON(display->drm,
+			    !intel_crtc_has_dp_encoder(crtc_state));
 
 		if (!crtc_state->hw.active)
 			continue;
@@ -436,13 +439,13 @@ static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
 static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 				struct drm_modeset_acquire_ctx *ctx)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc;
 	u8 pipe_mask;
 	int ret;
 
-	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
 			       ctx);
 	if (ret)
 		return ret;
@@ -454,15 +457,15 @@ static int intel_dp_do_phy_test(struct intel_encoder *encoder,
 	if (pipe_mask == 0)
 		return 0;
 
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
+	drm_dbg_kms(display->drm, "[ENCODER:%d:%s] PHY test\n",
 		    encoder->base.base.id, encoder->base.name);
 
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 
 		/* test on the MST master transcoder */
-		if (DISPLAY_VER(dev_priv) >= 12 &&
+		if (DISPLAY_VER(display) >= 12 &&
 		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
 		    !intel_dp_mst_is_master_trans(crtc_state))
 			continue;
-- 
2.39.2

