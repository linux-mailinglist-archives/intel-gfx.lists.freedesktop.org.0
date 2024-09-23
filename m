Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A856897D503
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478D610E819;
	Fri, 20 Sep 2024 11:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QvLP6CPX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7879D10E813;
 Fri, 20 Sep 2024 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833426; x=1758369426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RfoQpHuIcIGfa6PjIuFOCIeIOI4rosymatF0z9b4MFc=;
 b=QvLP6CPX83jrn16/lFR4q+PMVyco1VNFfdSYlx78zD8E3sT+I9EK3QYL
 G34QXgny2Dk4FBf60i8dBlVDNp7D4evL9qwH92Ajv7CdeVAtxEV5SJAts
 X0vv0ipIOLYHTRq8qKja/Ic3lTPm1SwtbaAzJ9U0age/YRB912FEfrpdD
 a80J00FmjIaxrnrQeRfiKxJOlgqs72mOl8wi4XmlPtzweWPzXFrZpgJAg
 esT6FrywaesWoFA8fk+8MrtAopo3t5ukp6xXz7UyFvxBXdeKqGwygWSvX
 fPlc3gpiWyctPV8yHqPlodH56RluiphvP6kTRxOucz7fBMf3DHwo6sHvt g==;
X-CSE-ConnectionGUID: 22bnF5ZMTFSyW17uOXO+ww==
X-CSE-MsgGUID: uKUjcBMiTg20HXRtHboH+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25779521"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25779521"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:05 -0700
X-CSE-ConnectionGUID: 7rZ1emuKSBKSEDKVnuHaGw==
X-CSE-MsgGUID: 2VJbju0LTYymsfAaOjhsQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="101013323"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/9] drm/i915/dp: split out intel_dp_test.[ch] to a dedicated
 file
Date: Fri, 20 Sep 2024 14:56:43 +0300
Message-Id: <262d565fe59715ba297702b67d4bcca81c736dc0.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

intel_dp.c has become huge, over 7k lines. Split out the fairly well
isolated chunk of DP test code to a dedicated file intel_dp_test.[ch].

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c        |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c      | 489 +-----------------
 drivers/gpu/drm/i915/display/intel_dp.h      |   9 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |   3 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c | 499 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_test.h |  18 +
 drivers/gpu/drm/xe/Makefile                  |   1 +
 9 files changed, 533 insertions(+), 489 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index bb67bad839ea..70771e521b1c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -327,6 +327,7 @@ i915-y += \
 	display/intel_dp_hdcp.o \
 	display/intel_dp_link_training.o \
 	display/intel_dp_mst.o \
+	display/intel_dp_test.o \
 	display/intel_dsi.o \
 	display/intel_dsi_dcs_backlight.o \
 	display/intel_dsi_vbt.o \
diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 040478048b97..ac9dce8213a3 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -19,6 +19,7 @@
 #include "intel_dp.h"
 #include "intel_dp_aux.h"
 #include "intel_dp_link_training.h"
+#include "intel_dp_test.h"
 #include "intel_dpio_phy.h"
 #include "intel_encoder.h"
 #include "intel_fifo_underrun.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 85e519a21542..c0ade280d816 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -54,6 +54,7 @@
 #include "intel_dp_aux.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_test.h"
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dsi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7008d3624e72..1cc73e2bf1fe 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -67,6 +67,7 @@
 #include "intel_dp_hdcp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_test.h"
 #include "intel_dp_tunnel.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
@@ -103,13 +104,6 @@
 /* DP DSC FEC Overhead factor in ppm = 1/(0.972261) = 1.028530 */
 #define DP_DSC_FEC_OVERHEAD_FACTOR		1028530
 
-/* Compliance test status bits  */
-#define INTEL_DP_RESOLUTION_SHIFT_MASK	0
-#define INTEL_DP_RESOLUTION_PREFERRED	(1 << INTEL_DP_RESOLUTION_SHIFT_MASK)
-#define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
-#define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
-
-
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
@@ -770,8 +764,8 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 	intel_dp_link_config_init(intel_dp);
 }
 
-static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
-				       u8 lane_count)
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count)
 {
 	/*
 	 * FIXME: we need to synchronize the current link parameters with
@@ -1636,45 +1630,6 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	return bpp;
 }
 
-/* Adjust link config limits based on compliance test requests. */
-void
-intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
-				  struct intel_crtc_state *pipe_config,
-				  struct link_config_limits *limits)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
-	/* For DP Compliance we override the computed bpp for the pipe */
-	if (intel_dp->compliance.test_data.bpc != 0) {
-		int bpp = 3 * intel_dp->compliance.test_data.bpc;
-
-		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
-		pipe_config->dither_force_disable = bpp == 6 * 3;
-
-		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
-	}
-
-	/* Use values requested by Compliance Test Request */
-	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
-		int index;
-
-		/* Validate the compliance test data since max values
-		 * might have changed due to link train fallback.
-		 */
-		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
-					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_rate_index(intel_dp->common_rates,
-						    intel_dp->num_common_rates,
-						    intel_dp->compliance.test_link_rate);
-			if (index >= 0)
-				limits->min_rate = limits->max_rate =
-					intel_dp->compliance.test_link_rate;
-			limits->min_lane_count = limits->max_lane_count =
-				intel_dp->compliance.test_lane_count;
-		}
-	}
-}
-
 static bool has_seamless_m_n(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -4786,328 +4741,6 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 	}
 }
 
-static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	int status = 0;
-	int test_link_rate;
-	u8 test_lane_count, test_link_bw;
-	/* (DP CTS 1.2)
-	 * 4.3.1.11
-	 */
-	/* Read the TEST_LANE_COUNT and TEST_LINK_RTAE fields (DP CTS 3.1.4) */
-	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LANE_COUNT,
-				   &test_lane_count);
-
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Lane count read failed\n");
-		return DP_TEST_NAK;
-	}
-	test_lane_count &= DP_MAX_LANE_COUNT_MASK;
-
-	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LINK_RATE,
-				   &test_link_bw);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Link Rate read failed\n");
-		return DP_TEST_NAK;
-	}
-	test_link_rate = drm_dp_bw_code_to_link_rate(test_link_bw);
-
-	/* Validate the requested link rate and lane count */
-	if (!intel_dp_link_params_valid(intel_dp, test_link_rate,
-					test_lane_count))
-		return DP_TEST_NAK;
-
-	intel_dp->compliance.test_lane_count = test_lane_count;
-	intel_dp->compliance.test_link_rate = test_link_rate;
-
-	return DP_TEST_ACK;
-}
-
-static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 test_pattern;
-	u8 test_misc;
-	__be16 h_width, v_height;
-	int status = 0;
-
-	/* Read the TEST_PATTERN (DP CTS 3.1.5) */
-	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_PATTERN,
-				   &test_pattern);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "Test pattern read failed\n");
-		return DP_TEST_NAK;
-	}
-	if (test_pattern != DP_COLOR_RAMP)
-		return DP_TEST_NAK;
-
-	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_H_WIDTH_HI,
-				  &h_width, 2);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "H Width read failed\n");
-		return DP_TEST_NAK;
-	}
-
-	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_V_HEIGHT_HI,
-				  &v_height, 2);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "V Height read failed\n");
-		return DP_TEST_NAK;
-	}
-
-	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_MISC0,
-				   &test_misc);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm, "TEST MISC read failed\n");
-		return DP_TEST_NAK;
-	}
-	if ((test_misc & DP_TEST_COLOR_FORMAT_MASK) != DP_COLOR_FORMAT_RGB)
-		return DP_TEST_NAK;
-	if (test_misc & DP_TEST_DYNAMIC_RANGE_CEA)
-		return DP_TEST_NAK;
-	switch (test_misc & DP_TEST_BIT_DEPTH_MASK) {
-	case DP_TEST_BIT_DEPTH_6:
-		intel_dp->compliance.test_data.bpc = 6;
-		break;
-	case DP_TEST_BIT_DEPTH_8:
-		intel_dp->compliance.test_data.bpc = 8;
-		break;
-	default:
-		return DP_TEST_NAK;
-	}
-
-	intel_dp->compliance.test_data.video_pattern = test_pattern;
-	intel_dp->compliance.test_data.hdisplay = be16_to_cpu(h_width);
-	intel_dp->compliance.test_data.vdisplay = be16_to_cpu(v_height);
-	/* Set test active flag here so userspace doesn't interrupt things */
-	intel_dp->compliance.test_active = true;
-
-	return DP_TEST_ACK;
-}
-
-static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 test_result = DP_TEST_ACK;
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
-	struct drm_connector *connector = &intel_connector->base;
-
-	if (intel_connector->detect_edid == NULL ||
-	    connector->edid_corrupt ||
-	    intel_dp->aux.i2c_defer_count > 6) {
-		/* Check EDID read for NACKs, DEFERs and corruption
-		 * (DP CTS 1.2 Core r1.1)
-		 *    4.2.2.4 : Failed EDID read, I2C_NAK
-		 *    4.2.2.5 : Failed EDID read, I2C_DEFER
-		 *    4.2.2.6 : EDID corruption detected
-		 * Use failsafe mode for all cases
-		 */
-		if (intel_dp->aux.i2c_nack_count > 0 ||
-			intel_dp->aux.i2c_defer_count > 0)
-			drm_dbg_kms(&i915->drm,
-				    "EDID read had %d NACKs, %d DEFERs\n",
-				    intel_dp->aux.i2c_nack_count,
-				    intel_dp->aux.i2c_defer_count);
-		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_FAILSAFE;
-	} else {
-		/* FIXME: Get rid of drm_edid_raw() */
-		const struct edid *block = drm_edid_raw(intel_connector->detect_edid);
-
-		/* We have to write the checksum of the last block read */
-		block += block->extensions;
-
-		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
-				       block->checksum) <= 0)
-			drm_dbg_kms(&i915->drm,
-				    "Failed to write EDID checksum\n");
-
-		test_result = DP_TEST_ACK | DP_TEST_EDID_CHECKSUM_WRITE;
-		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_PREFERRED;
-	}
-
-	/* Set test active flag here so userspace doesn't interrupt things */
-	intel_dp->compliance.test_active = true;
-
-	return test_result;
-}
-
-static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
-					const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv =
-			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
-	struct drm_dp_phy_test_params *data =
-			&intel_dp->compliance.test_data.phytest;
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	enum pipe pipe = crtc->pipe;
-	u32 pattern_val;
-
-	switch (data->phy_pattern) {
-	case DP_LINK_QUAL_PATTERN_DISABLE:
-		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
-		if (DISPLAY_VER(dev_priv) >= 10)
-			intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
-				     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
-				     DP_TP_CTL_LINK_TRAIN_NORMAL);
-		break;
-	case DP_LINK_QUAL_PATTERN_D10_2:
-		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
-			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
-		break;
-	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
-		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
-			       DDI_DP_COMP_CTL_ENABLE |
-			       DDI_DP_COMP_CTL_SCRAMBLED_0);
-		break;
-	case DP_LINK_QUAL_PATTERN_PRBS7:
-		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
-			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
-		break;
-	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
-		/*
-		 * FIXME: Ideally pattern should come from DPCD 0x250. As
-		 * current firmware of DPR-100 could not set it, so hardcoding
-		 * now for complaince test.
-		 */
-		drm_dbg_kms(&dev_priv->drm,
-			    "Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
-		pattern_val = 0x3e0f83e0;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 0), pattern_val);
-		pattern_val = 0x0f83e0f8;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 1), pattern_val);
-		pattern_val = 0x0000f83e;
-		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 2), pattern_val);
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
-			       DDI_DP_COMP_CTL_ENABLE |
-			       DDI_DP_COMP_CTL_CUSTOM80);
-		break;
-	case DP_LINK_QUAL_PATTERN_CP2520_PAT_1:
-		/*
-		 * FIXME: Ideally pattern should come from DPCD 0x24A. As
-		 * current firmware of DPR-100 could not set it, so hardcoding
-		 * now for complaince test.
-		 */
-		drm_dbg_kms(&dev_priv->drm, "Set HBR2 compliance Phy Test Pattern\n");
-		pattern_val = 0xFB;
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
-			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
-			       pattern_val);
-		break;
-	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
-		if (DISPLAY_VER(dev_priv) < 10)  {
-			drm_warn(&dev_priv->drm, "Platform does not support TPS4\n");
-			break;
-		}
-		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
-		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
-		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
-			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
-			     DP_TP_CTL_TRAIN_PAT4_SEL_TP4A | DP_TP_CTL_LINK_TRAIN_PAT4);
-		break;
-	default:
-		drm_warn(&dev_priv->drm, "Invalid Phy Test Pattern\n");
-	}
-}
-
-static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
-					 const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct drm_dp_phy_test_params *data =
-		&intel_dp->compliance.test_data.phytest;
-	u8 link_status[DP_LINK_STATUS_SIZE];
-
-	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-					     link_status) < 0) {
-		drm_dbg_kms(&i915->drm, "failed to get link status\n");
-		return;
-	}
-
-	/* retrieve vswing & pre-emphasis setting */
-	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
-				  link_status);
-
-	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
-
-	intel_dp_phy_pattern_update(intel_dp, crtc_state);
-
-	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
-			  intel_dp->train_set, crtc_state->lane_count);
-
-	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
-				    intel_dp->dpcd[DP_DPCD_REV]);
-}
-
-static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct drm_dp_phy_test_params *data =
-		&intel_dp->compliance.test_data.phytest;
-
-	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
-		drm_dbg_kms(&i915->drm, "DP Phy Test pattern AUX read failure\n");
-		return DP_TEST_NAK;
-	}
-
-	/* Set test active flag here so userspace doesn't interrupt things */
-	intel_dp->compliance.test_active = true;
-
-	return DP_TEST_ACK;
-}
-
-static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	u8 response = DP_TEST_NAK;
-	u8 request = 0;
-	int status;
-
-	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_REQUEST, &request);
-	if (status <= 0) {
-		drm_dbg_kms(&i915->drm,
-			    "Could not read test request from sink\n");
-		goto update_status;
-	}
-
-	switch (request) {
-	case DP_TEST_LINK_TRAINING:
-		drm_dbg_kms(&i915->drm, "LINK_TRAINING test requested\n");
-		response = intel_dp_autotest_link_training(intel_dp);
-		break;
-	case DP_TEST_LINK_VIDEO_PATTERN:
-		drm_dbg_kms(&i915->drm, "TEST_PATTERN test requested\n");
-		response = intel_dp_autotest_video_pattern(intel_dp);
-		break;
-	case DP_TEST_LINK_EDID_READ:
-		drm_dbg_kms(&i915->drm, "EDID test requested\n");
-		response = intel_dp_autotest_edid(intel_dp);
-		break;
-	case DP_TEST_LINK_PHY_TEST_PATTERN:
-		drm_dbg_kms(&i915->drm, "PHY_PATTERN test requested\n");
-		response = intel_dp_autotest_phy_pattern(intel_dp);
-		break;
-	default:
-		drm_dbg_kms(&i915->drm, "Invalid test request '%02x'\n",
-			    request);
-		break;
-	}
-
-	if (response & DP_TEST_ACK)
-		intel_dp->compliance.test_type = request;
-
-update_status:
-	status = drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_RESPONSE, response);
-	if (status <= 0)
-		drm_dbg_kms(&i915->drm,
-			    "Could not write test response to sink\n");
-}
-
 static bool intel_dp_link_ok(struct intel_dp *intel_dp,
 			     u8 link_status[DP_LINK_STATUS_SIZE])
 {
@@ -5308,8 +4941,8 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	return !intel_dp_link_ok(intel_dp, link_status);
 }
 
-static bool intel_dp_has_connector(struct intel_dp *intel_dp,
-				   const struct drm_connector_state *conn_state)
+bool intel_dp_has_connector(struct intel_dp *intel_dp,
+			    const struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_encoder *encoder;
@@ -5460,118 +5093,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
-				  struct drm_modeset_acquire_ctx *ctx,
-				  u8 *pipe_mask)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct drm_connector_list_iter conn_iter;
-	struct intel_connector *connector;
-	int ret = 0;
-
-	*pipe_mask = 0;
-
-	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
-	for_each_intel_connector_iter(connector, &conn_iter) {
-		struct drm_connector_state *conn_state =
-			connector->base.state;
-		struct intel_crtc_state *crtc_state;
-		struct intel_crtc *crtc;
-
-		if (!intel_dp_has_connector(intel_dp, conn_state))
-			continue;
-
-		crtc = to_intel_crtc(conn_state->crtc);
-		if (!crtc)
-			continue;
-
-		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
-		if (ret)
-			break;
-
-		crtc_state = to_intel_crtc_state(crtc->base.state);
-
-		drm_WARN_ON(&i915->drm, !intel_crtc_has_dp_encoder(crtc_state));
-
-		if (!crtc_state->hw.active)
-			continue;
-
-		if (conn_state->commit &&
-		    !try_wait_for_completion(&conn_state->commit->hw_done))
-			continue;
-
-		*pipe_mask |= BIT(crtc->pipe);
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	return ret;
-}
-
-static int intel_dp_do_phy_test(struct intel_encoder *encoder,
-				struct drm_modeset_acquire_ctx *ctx)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	struct intel_crtc *crtc;
-	u8 pipe_mask;
-	int ret;
-
-	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
-			       ctx);
-	if (ret)
-		return ret;
-
-	ret = intel_dp_prep_phy_test(intel_dp, ctx, &pipe_mask);
-	if (ret)
-		return ret;
-
-	if (pipe_mask == 0)
-		return 0;
-
-	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
-		    encoder->base.base.id, encoder->base.name);
-
-	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
-		const struct intel_crtc_state *crtc_state =
-			to_intel_crtc_state(crtc->base.state);
-
-		/* test on the MST master transcoder */
-		if (DISPLAY_VER(dev_priv) >= 12 &&
-		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
-		    !intel_dp_mst_is_master_trans(crtc_state))
-			continue;
-
-		intel_dp_process_phy_request(intel_dp, crtc_state);
-		break;
-	}
-
-	return 0;
-}
-
-void intel_dp_phy_test(struct intel_encoder *encoder)
-{
-	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-
-	drm_modeset_acquire_init(&ctx, 0);
-
-	for (;;) {
-		ret = intel_dp_do_phy_test(encoder, &ctx);
-
-		if (ret == -EDEADLK) {
-			drm_modeset_backoff(&ctx);
-			continue;
-		}
-
-		break;
-	}
-
-	drm_modeset_drop_locks(&ctx);
-	drm_modeset_acquire_fini(&ctx);
-	drm_WARN(encoder->base.dev, ret,
-		 "Acquiring modeset locks failed with %i\n", ret);
-}
-
 static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a0a31fb64716..3b869429e575 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -37,9 +37,6 @@ struct link_config_limits {
 };
 
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
-void intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
-				       struct intel_crtc_state *pipe_config,
-				       struct link_config_limits *limits);
 bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state);
 int intel_dp_min_bpp(enum intel_output_format output_format);
@@ -191,7 +188,6 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 void intel_dp_check_frl_training(struct intel_dp *intel_dp);
 void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
-void intel_dp_phy_test(struct intel_encoder *encoder);
 
 void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
@@ -205,4 +201,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count);
+bool intel_dp_has_connector(struct intel_dp *intel_dp,
+			    const struct drm_connector_state *conn_state);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7debefd4a0d6..c91e1e241a67 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -41,9 +41,10 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
+#include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_test.h"
 #include "intel_dp_tunnel.h"
-#include "intel_dp_link_training.h"
 #include "intel_dpio_phy.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
new file mode 100644
index 000000000000..41cb05f44670
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -0,0 +1,499 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include <drm/display/drm_dp.h>
+#include <drm/display/drm_dp_helper.h>
+#include <drm/drm_edid.h>
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "intel_ddi.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
+#include "intel_dp_link_training.h"
+#include "intel_dp_mst.h"
+#include "intel_dp_test.h"
+
+#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
+
+/* Adjust link config limits based on compliance test requests. */
+void
+intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
+				  struct intel_crtc_state *pipe_config,
+				  struct link_config_limits *limits)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	/* For DP Compliance we override the computed bpp for the pipe */
+	if (intel_dp->compliance.test_data.bpc != 0) {
+		int bpp = 3 * intel_dp->compliance.test_data.bpc;
+
+		limits->pipe.min_bpp = limits->pipe.max_bpp = bpp;
+		pipe_config->dither_force_disable = bpp == 6 * 3;
+
+		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
+	}
+
+	/* Use values requested by Compliance Test Request */
+	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
+		int index;
+
+		/* Validate the compliance test data since max values
+		 * might have changed due to link train fallback.
+		 */
+		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
+					       intel_dp->compliance.test_lane_count)) {
+			index = intel_dp_rate_index(intel_dp->common_rates,
+						    intel_dp->num_common_rates,
+						    intel_dp->compliance.test_link_rate);
+			if (index >= 0)
+				limits->min_rate = limits->max_rate =
+					intel_dp->compliance.test_link_rate;
+			limits->min_lane_count = limits->max_lane_count =
+				intel_dp->compliance.test_lane_count;
+		}
+	}
+}
+
+/* Compliance test status bits  */
+#define INTEL_DP_RESOLUTION_SHIFT_MASK	0
+#define INTEL_DP_RESOLUTION_PREFERRED	(1 << INTEL_DP_RESOLUTION_SHIFT_MASK)
+#define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
+#define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
+
+static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	int status = 0;
+	int test_link_rate;
+	u8 test_lane_count, test_link_bw;
+	/* (DP CTS 1.2)
+	 * 4.3.1.11
+	 */
+	/* Read the TEST_LANE_COUNT and TEST_LINK_RTAE fields (DP CTS 3.1.4) */
+	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LANE_COUNT,
+				   &test_lane_count);
+
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "Lane count read failed\n");
+		return DP_TEST_NAK;
+	}
+	test_lane_count &= DP_MAX_LANE_COUNT_MASK;
+
+	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LINK_RATE,
+				   &test_link_bw);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "Link Rate read failed\n");
+		return DP_TEST_NAK;
+	}
+	test_link_rate = drm_dp_bw_code_to_link_rate(test_link_bw);
+
+	/* Validate the requested link rate and lane count */
+	if (!intel_dp_link_params_valid(intel_dp, test_link_rate,
+					test_lane_count))
+		return DP_TEST_NAK;
+
+	intel_dp->compliance.test_lane_count = test_lane_count;
+	intel_dp->compliance.test_link_rate = test_link_rate;
+
+	return DP_TEST_ACK;
+}
+
+static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 test_pattern;
+	u8 test_misc;
+	__be16 h_width, v_height;
+	int status = 0;
+
+	/* Read the TEST_PATTERN (DP CTS 3.1.5) */
+	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_PATTERN,
+				   &test_pattern);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "Test pattern read failed\n");
+		return DP_TEST_NAK;
+	}
+	if (test_pattern != DP_COLOR_RAMP)
+		return DP_TEST_NAK;
+
+	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_H_WIDTH_HI,
+				  &h_width, 2);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "H Width read failed\n");
+		return DP_TEST_NAK;
+	}
+
+	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_V_HEIGHT_HI,
+				  &v_height, 2);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "V Height read failed\n");
+		return DP_TEST_NAK;
+	}
+
+	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_MISC0,
+				   &test_misc);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm, "TEST MISC read failed\n");
+		return DP_TEST_NAK;
+	}
+	if ((test_misc & DP_TEST_COLOR_FORMAT_MASK) != DP_COLOR_FORMAT_RGB)
+		return DP_TEST_NAK;
+	if (test_misc & DP_TEST_DYNAMIC_RANGE_CEA)
+		return DP_TEST_NAK;
+	switch (test_misc & DP_TEST_BIT_DEPTH_MASK) {
+	case DP_TEST_BIT_DEPTH_6:
+		intel_dp->compliance.test_data.bpc = 6;
+		break;
+	case DP_TEST_BIT_DEPTH_8:
+		intel_dp->compliance.test_data.bpc = 8;
+		break;
+	default:
+		return DP_TEST_NAK;
+	}
+
+	intel_dp->compliance.test_data.video_pattern = test_pattern;
+	intel_dp->compliance.test_data.hdisplay = be16_to_cpu(h_width);
+	intel_dp->compliance.test_data.vdisplay = be16_to_cpu(v_height);
+	/* Set test active flag here so userspace doesn't interrupt things */
+	intel_dp->compliance.test_active = true;
+
+	return DP_TEST_ACK;
+}
+
+static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 test_result = DP_TEST_ACK;
+	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct drm_connector *connector = &intel_connector->base;
+
+	if (intel_connector->detect_edid == NULL ||
+	    connector->edid_corrupt ||
+	    intel_dp->aux.i2c_defer_count > 6) {
+		/* Check EDID read for NACKs, DEFERs and corruption
+		 * (DP CTS 1.2 Core r1.1)
+		 *    4.2.2.4 : Failed EDID read, I2C_NAK
+		 *    4.2.2.5 : Failed EDID read, I2C_DEFER
+		 *    4.2.2.6 : EDID corruption detected
+		 * Use failsafe mode for all cases
+		 */
+		if (intel_dp->aux.i2c_nack_count > 0 ||
+			intel_dp->aux.i2c_defer_count > 0)
+			drm_dbg_kms(&i915->drm,
+				    "EDID read had %d NACKs, %d DEFERs\n",
+				    intel_dp->aux.i2c_nack_count,
+				    intel_dp->aux.i2c_defer_count);
+		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_FAILSAFE;
+	} else {
+		/* FIXME: Get rid of drm_edid_raw() */
+		const struct edid *block = drm_edid_raw(intel_connector->detect_edid);
+
+		/* We have to write the checksum of the last block read */
+		block += block->extensions;
+
+		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
+				       block->checksum) <= 0)
+			drm_dbg_kms(&i915->drm,
+				    "Failed to write EDID checksum\n");
+
+		test_result = DP_TEST_ACK | DP_TEST_EDID_CHECKSUM_WRITE;
+		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_PREFERRED;
+	}
+
+	/* Set test active flag here so userspace doesn't interrupt things */
+	intel_dp->compliance.test_active = true;
+
+	return test_result;
+}
+
+static void intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
+					const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv =
+			to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
+	struct drm_dp_phy_test_params *data =
+			&intel_dp->compliance.test_data.phytest;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	enum pipe pipe = crtc->pipe;
+	u32 pattern_val;
+
+	switch (data->phy_pattern) {
+	case DP_LINK_QUAL_PATTERN_DISABLE:
+		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		if (DISPLAY_VER(dev_priv) >= 10)
+			intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+				     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+				     DP_TP_CTL_LINK_TRAIN_NORMAL);
+		break;
+	case DP_LINK_QUAL_PATTERN_D10_2:
+		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_D10_2);
+		break;
+	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
+		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+			       DDI_DP_COMP_CTL_ENABLE |
+			       DDI_DP_COMP_CTL_SCRAMBLED_0);
+		break;
+	case DP_LINK_QUAL_PATTERN_PRBS7:
+		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_PRBS7);
+		break;
+	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
+		/*
+		 * FIXME: Ideally pattern should come from DPCD 0x250. As
+		 * current firmware of DPR-100 could not set it, so hardcoding
+		 * now for complaince test.
+		 */
+		drm_dbg_kms(&dev_priv->drm,
+			    "Set 80Bit Custom Phy Test Pattern 0x3e0f83e0 0x0f83e0f8 0x0000f83e\n");
+		pattern_val = 0x3e0f83e0;
+		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 0), pattern_val);
+		pattern_val = 0x0f83e0f8;
+		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 1), pattern_val);
+		pattern_val = 0x0000f83e;
+		intel_de_write(dev_priv, DDI_DP_COMP_PAT(pipe, 2), pattern_val);
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+			       DDI_DP_COMP_CTL_ENABLE |
+			       DDI_DP_COMP_CTL_CUSTOM80);
+		break;
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_1:
+		/*
+		 * FIXME: Ideally pattern should come from DPCD 0x24A. As
+		 * current firmware of DPR-100 could not set it, so hardcoding
+		 * now for complaince test.
+		 */
+		drm_dbg_kms(&dev_priv->drm, "Set HBR2 compliance Phy Test Pattern\n");
+		pattern_val = 0xFB;
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
+			       DDI_DP_COMP_CTL_ENABLE | DDI_DP_COMP_CTL_HBR2 |
+			       pattern_val);
+		break;
+	case DP_LINK_QUAL_PATTERN_CP2520_PAT_3:
+		if (DISPLAY_VER(dev_priv) < 10)  {
+			drm_warn(&dev_priv->drm, "Platform does not support TPS4\n");
+			break;
+		}
+		drm_dbg_kms(&dev_priv->drm, "Set TPS4 compliance Phy Test Pattern\n");
+		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
+		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
+			     DP_TP_CTL_TRAIN_PAT4_SEL_MASK | DP_TP_CTL_LINK_TRAIN_MASK,
+			     DP_TP_CTL_TRAIN_PAT4_SEL_TP4A | DP_TP_CTL_LINK_TRAIN_PAT4);
+		break;
+	default:
+		drm_warn(&dev_priv->drm, "Invalid Phy Test Pattern\n");
+	}
+}
+
+static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
+					 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_dp_phy_test_params *data =
+		&intel_dp->compliance.test_data.phytest;
+	u8 link_status[DP_LINK_STATUS_SIZE];
+
+	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+					     link_status) < 0) {
+		drm_dbg_kms(&i915->drm, "failed to get link status\n");
+		return;
+	}
+
+	/* retrieve vswing & pre-emphasis setting */
+	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
+				  link_status);
+
+	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
+
+	intel_dp_phy_pattern_update(intel_dp, crtc_state);
+
+	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
+			  intel_dp->train_set, crtc_state->lane_count);
+
+	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
+				    intel_dp->dpcd[DP_DPCD_REV]);
+}
+
+static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_dp_phy_test_params *data =
+		&intel_dp->compliance.test_data.phytest;
+
+	if (drm_dp_get_phy_test_pattern(&intel_dp->aux, data)) {
+		drm_dbg_kms(&i915->drm, "DP Phy Test pattern AUX read failure\n");
+		return DP_TEST_NAK;
+	}
+
+	/* Set test active flag here so userspace doesn't interrupt things */
+	intel_dp->compliance.test_active = true;
+
+	return DP_TEST_ACK;
+}
+
+void intel_dp_handle_test_request(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	u8 response = DP_TEST_NAK;
+	u8 request = 0;
+	int status;
+
+	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_REQUEST, &request);
+	if (status <= 0) {
+		drm_dbg_kms(&i915->drm,
+			    "Could not read test request from sink\n");
+		goto update_status;
+	}
+
+	switch (request) {
+	case DP_TEST_LINK_TRAINING:
+		drm_dbg_kms(&i915->drm, "LINK_TRAINING test requested\n");
+		response = intel_dp_autotest_link_training(intel_dp);
+		break;
+	case DP_TEST_LINK_VIDEO_PATTERN:
+		drm_dbg_kms(&i915->drm, "TEST_PATTERN test requested\n");
+		response = intel_dp_autotest_video_pattern(intel_dp);
+		break;
+	case DP_TEST_LINK_EDID_READ:
+		drm_dbg_kms(&i915->drm, "EDID test requested\n");
+		response = intel_dp_autotest_edid(intel_dp);
+		break;
+	case DP_TEST_LINK_PHY_TEST_PATTERN:
+		drm_dbg_kms(&i915->drm, "PHY_PATTERN test requested\n");
+		response = intel_dp_autotest_phy_pattern(intel_dp);
+		break;
+	default:
+		drm_dbg_kms(&i915->drm, "Invalid test request '%02x'\n",
+			    request);
+		break;
+	}
+
+	if (response & DP_TEST_ACK)
+		intel_dp->compliance.test_type = request;
+
+update_status:
+	status = drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_RESPONSE, response);
+	if (status <= 0)
+		drm_dbg_kms(&i915->drm,
+			    "Could not write test response to sink\n");
+}
+
+/* phy test */
+
+static int intel_dp_prep_phy_test(struct intel_dp *intel_dp,
+				  struct drm_modeset_acquire_ctx *ctx,
+				  u8 *pipe_mask)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_connector_list_iter conn_iter;
+	struct intel_connector *connector;
+	int ret = 0;
+
+	*pipe_mask = 0;
+
+	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
+	for_each_intel_connector_iter(connector, &conn_iter) {
+		struct drm_connector_state *conn_state =
+			connector->base.state;
+		struct intel_crtc_state *crtc_state;
+		struct intel_crtc *crtc;
+
+		if (!intel_dp_has_connector(intel_dp, conn_state))
+			continue;
+
+		crtc = to_intel_crtc(conn_state->crtc);
+		if (!crtc)
+			continue;
+
+		ret = drm_modeset_lock(&crtc->base.mutex, ctx);
+		if (ret)
+			break;
+
+		crtc_state = to_intel_crtc_state(crtc->base.state);
+
+		drm_WARN_ON(&i915->drm, !intel_crtc_has_dp_encoder(crtc_state));
+
+		if (!crtc_state->hw.active)
+			continue;
+
+		if (conn_state->commit &&
+		    !try_wait_for_completion(&conn_state->commit->hw_done))
+			continue;
+
+		*pipe_mask |= BIT(crtc->pipe);
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return ret;
+}
+
+static int intel_dp_do_phy_test(struct intel_encoder *encoder,
+				struct drm_modeset_acquire_ctx *ctx)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_crtc *crtc;
+	u8 pipe_mask;
+	int ret;
+
+	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
+			       ctx);
+	if (ret)
+		return ret;
+
+	ret = intel_dp_prep_phy_test(intel_dp, ctx, &pipe_mask);
+	if (ret)
+		return ret;
+
+	if (pipe_mask == 0)
+		return 0;
+
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] PHY test\n",
+		    encoder->base.base.id, encoder->base.name);
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask) {
+		const struct intel_crtc_state *crtc_state =
+			to_intel_crtc_state(crtc->base.state);
+
+		/* test on the MST master transcoder */
+		if (DISPLAY_VER(dev_priv) >= 12 &&
+		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) &&
+		    !intel_dp_mst_is_master_trans(crtc_state))
+			continue;
+
+		intel_dp_process_phy_request(intel_dp, crtc_state);
+		break;
+	}
+
+	return 0;
+}
+
+void intel_dp_phy_test(struct intel_encoder *encoder)
+{
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	drm_modeset_acquire_init(&ctx, 0);
+
+	for (;;) {
+		ret = intel_dp_do_phy_test(encoder, &ctx);
+
+		if (ret == -EDEADLK) {
+			drm_modeset_backoff(&ctx);
+			continue;
+		}
+
+		break;
+	}
+
+	drm_modeset_drop_locks(&ctx);
+	drm_modeset_acquire_fini(&ctx);
+	drm_WARN(encoder->base.dev, ret,
+		 "Acquiring modeset locks failed with %i\n", ret);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/drm/i915/display/intel_dp_test.h
new file mode 100644
index 000000000000..e865e6a3aaa3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2024 Intel Corporation */
+
+#ifndef __INTEL_DP_TEST_H__
+#define __INTEL_DP_TEST_H__
+
+struct intel_crtc_state;
+struct intel_dp;
+struct intel_encoder;
+struct link_config_limits;
+
+void intel_dp_handle_test_request(struct intel_dp *intel_dp);
+void intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *pipe_config,
+				       struct link_config_limits *limits);
+void intel_dp_phy_test(struct intel_encoder *encoder);
+
+#endif /* __INTEL_DP_TEST_H__ */
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index ae245fbd91ee..1122765c711d 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_dp_hdcp.o \
 	i915-display/intel_dp_link_training.o \
 	i915-display/intel_dp_mst.o \
+	i915-display/intel_dp_test.o \
 	i915-display/intel_dpll.o \
 	i915-display/intel_dpll_mgr.o \
 	i915-display/intel_dpt_common.o \
-- 
2.39.2

