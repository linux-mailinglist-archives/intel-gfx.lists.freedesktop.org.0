Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB01881519
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 17:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C5C10FDB8;
	Wed, 20 Mar 2024 16:01:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzI3bpAu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE16F10FDB8
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 16:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710950491; x=1742486491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dFNmJiXfOX9JGUT8PyENwevQqY8h+9WOu73xri/sz/I=;
 b=bzI3bpAuX9EywHL8+JJsSg5lBxJU+xfwgG+wggl5ddY7osPXJlTiVELv
 W7Q0u31vj7bA5aTWwZn0PEeeZfxIqUnPe4CVjWm4i+MCzC0NH7YUspHQs
 YnKDTn7k5bmrkbH5YbbWOcm2LRu4PzeKDnOoo3i7NoSozn5QsOHFILvhd
 STQTRzuynxBB6C63K9swHEgrVLXPQwsDuty5mqNDMCHYQjbL1Ff8Cm7Mv
 83LSnn6xQl1E47mZ9jF16EZvoYoaoi4BNYYY/DHlubn7gvAyCbQqitYEu
 Ke+Aq8yIimIRPluGlCoKPB8jXur95xhsuIcBanSD/XRlvnSTMVlntXnMZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="31318900"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="31318900"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14847478"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 09:01:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/de: register wait function renames
Date: Wed, 20 Mar 2024 18:01:22 +0200
Message-Id: <20240320160123.2904609-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Do some renames on the register wait functions for clarity and brevity:

intel_de_wait_for_register	-> intel_de_wait
intel_de_wait_for_register_fw	-> intel_de_wait_fw
__intel_de_wait_for_register	-> intel_de_wait_custom

In particular, it seemed odd to have a double-underscored function be
called in a number of places.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Use 'git show -w --color-words' for easy review.
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 68 +++++++++----------
 drivers/gpu/drm/i915/display/intel_de.h       | 20 +++---
 drivers/gpu/drm/i915/display/intel_display.c  |  3 +-
 .../i915/display/intel_display_power_well.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 17 ++---
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  3 +-
 8 files changed, 58 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 64e0f820a789..eedd1b4de943 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -143,12 +143,12 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 {
 	enum phy phy = intel_port_to_phy(i915, port);
 
-	if (__intel_de_wait_for_register(i915,
-					 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
-					 XELPDP_PORT_P2M_RESPONSE_READY,
-					 XELPDP_PORT_P2M_RESPONSE_READY,
-					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
-					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
+	if (intel_de_wait_custom(i915,
+				 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
+				 XELPDP_PORT_P2M_RESPONSE_READY,
+				 XELPDP_PORT_P2M_RESPONSE_READY,
+				 XELPDP_MSGBUS_TIMEOUT_FAST_US,
+				 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
 
@@ -2536,9 +2536,9 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 		     intel_cx0_get_powerdown_update(lane_mask));
 
 	/* Update Timeout Value */
-	if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
-					 intel_cx0_get_powerdown_update(lane_mask), 0,
-					 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, buf_ctl2_reg,
+				 intel_cx0_get_powerdown_update(lane_mask), 0,
+				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 }
@@ -2593,19 +2593,19 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915, port),
-					 XELPDP_PORT_BUF_SOC_PHY_READY,
-					 XELPDP_PORT_BUF_SOC_PHY_READY,
-					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL1(i915, port),
+				 XELPDP_PORT_BUF_SOC_PHY_READY,
+				 XELPDP_PORT_BUF_SOC_PHY_READY,
+				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
 
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset,
 		     lane_pipe_reset);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915, port),
-					 lane_phy_current_status, lane_phy_current_status,
-					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL2(i915, port),
+				 lane_phy_current_status, lane_phy_current_status,
+				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
@@ -2613,10 +2613,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
-					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
-					 intel_cx0_get_pclk_refclk_ack(lane_mask),
-					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
+				 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
+				 intel_cx0_get_pclk_refclk_ack(lane_mask),
+				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
 			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
 
@@ -2767,10 +2767,10 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
 	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
-					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
-					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
-					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
+				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
+				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
 			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
 
@@ -2858,10 +2858,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
-					 XELPDP_TBT_CLOCK_ACK,
-					 XELPDP_TBT_CLOCK_ACK,
-					 100, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+				 XELPDP_TBT_CLOCK_ACK,
+				 XELPDP_TBT_CLOCK_ACK,
+				 100, 0, NULL))
 		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
@@ -2920,10 +2920,10 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
-					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
-					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
-					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
+				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
+				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
 			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
 
@@ -2958,8 +2958,8 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
-					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
+	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
+				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
 		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
 
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 42552d8c151e..ba7a1c6ebc2a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -48,24 +48,24 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
 }
 
 static inline int
-intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
-			   u32 mask, u32 value, unsigned int timeout)
+intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
+	      u32 mask, u32 value, unsigned int timeout)
 {
 	return intel_wait_for_register(&i915->uncore, reg, mask, value, timeout);
 }
 
 static inline int
-intel_de_wait_for_register_fw(struct drm_i915_private *i915, i915_reg_t reg,
-			      u32 mask, u32 value, unsigned int timeout)
+intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
+		 u32 mask, u32 value, unsigned int timeout)
 {
 	return intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
 }
 
 static inline int
-__intel_de_wait_for_register(struct drm_i915_private *i915, i915_reg_t reg,
-			     u32 mask, u32 value,
-			     unsigned int fast_timeout_us,
-			     unsigned int slow_timeout_ms, u32 *out_value)
+intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
+		     u32 mask, u32 value,
+		     unsigned int fast_timeout_us,
+		     unsigned int slow_timeout_ms, u32 *out_value)
 {
 	return __intel_wait_for_register(&i915->uncore, reg, mask, value,
 					 fast_timeout_us, slow_timeout_ms, out_value);
@@ -75,14 +75,14 @@ static inline int
 intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
 		      u32 mask, unsigned int timeout)
 {
-	return intel_de_wait_for_register(i915, reg, mask, mask, timeout);
+	return intel_de_wait(i915, reg, mask, mask, timeout);
 }
 
 static inline int
 intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
 			u32 mask, unsigned int timeout)
 {
-	return intel_de_wait_for_register(i915, reg, mask, 0, timeout);
+	return intel_de_wait(i915, reg, mask, 0, timeout);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d366a103a707..38a711e2e2f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -383,8 +383,7 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	if (intel_de_wait_for_register(dev_priv, dpll_reg,
-				       port_mask, expected_mask, 1000))
+	if (intel_de_wait(dev_priv, dpll_reg, port_mask, expected_mask, 1000))
 		drm_WARN(&dev_priv->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
 			 dig_port->base.base.base.id, dig_port->base.base.name,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 217f82f1da84..6ca92c4d8199 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1390,8 +1390,8 @@ static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
 	 * The PHY may be busy with some initial calibration and whatnot,
 	 * so the power state can take a while to actually change.
 	 */
-	if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
-				       phy_status_mask, phy_status, 10))
+	if (intel_de_wait(dev_priv, DISPLAY_PHY_STATUS,
+			  phy_status_mask, phy_status, 10))
 		drm_err(&dev_priv->drm,
 			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
 			intel_de_read(dev_priv, DISPLAY_PHY_STATUS) & phy_status_mask,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 8a02d9cd2ec1..b8a53bb174da 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -61,9 +61,8 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	u32 status;
 	int ret;
 
-	ret = __intel_de_wait_for_register(i915, ch_ctl,
-					   DP_AUX_CH_CTL_SEND_BUSY, 0,
-					   2, timeout_ms, &status);
+	ret = intel_de_wait_custom(i915, ch_ctl, DP_AUX_CH_CTL_SEND_BUSY, 0,
+				   2, timeout_ms, &status);
 
 	if (ret == -ETIMEDOUT)
 		drm_err(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index b98a87883fef..179e754e5c30 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -766,11 +766,9 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 		return -EINVAL;
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait_for_register(i915,
-				       HDCP_STATUS(i915, cpu_transcoder, port),
-				       stream_enc_status,
-				       enable ? stream_enc_status : 0,
-				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+	if (intel_de_wait(i915, HDCP_STATUS(i915, cpu_transcoder, port),
+			  stream_enc_status, enable ? stream_enc_status : 0,
+			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
 		return -ETIMEDOUT;
@@ -801,11 +799,10 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 		return ret;
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait_for_register(i915,
-				       HDCP2_STREAM_STATUS(i915, cpu_transcoder, pipe),
-				       STREAM_ENCRYPTION_STATUS,
-				       enable ? STREAM_ENCRYPTION_STATUS : 0,
-				       HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+	if (intel_de_wait(i915, HDCP2_STREAM_STATUS(i915, cpu_transcoder, pipe),
+			  STREAM_ENCRYPTION_STATUS,
+			  enable ? STREAM_ENCRYPTION_STATUS : 0,
+			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
 		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
 		return -ETIMEDOUT;
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index d3e03ed5b79c..9c8e1e91ff1c 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -411,7 +411,7 @@ gmbus_wait_idle(struct drm_i915_private *i915)
 	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
 	intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
 
-	ret = intel_de_wait_for_register_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10);
+	ret = intel_de_wait_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10);
 
 	intel_de_write_fw(i915, GMBUS4(i915), 0);
 	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 2d65a538f83e..b5d9920f8341 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -605,8 +605,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
 
-	if (intel_de_wait_for_register(dev_priv, pp_stat_reg,
-				       mask, value, 5000))
+	if (intel_de_wait(dev_priv, pp_stat_reg, mask, value, 5000))
 		drm_err(&dev_priv->drm,
 			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			dig_port->base.base.base.id, dig_port->base.base.name,
-- 
2.39.2

