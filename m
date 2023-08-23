Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E30785E3F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:10:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB4010E4BF;
	Wed, 23 Aug 2023 17:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6297B10E47F;
 Wed, 23 Aug 2023 17:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810559; x=1724346559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LRLXwZ8znxbLDhLEfV8F9AvpN5AZsaL1I6l1bOb9YpU=;
 b=bigfOKWwdMTqyZVm37DUQl7sTYmV29/PMvevjh26Wbe1Y+Bg5tQ4iOJ4
 4Jn991RQxeR8gzH6eUKzFXerNvuX5GOGtUDS9cRT2Vc1mcUl7bQ1J/RDN
 8Svm3AqxdNfO3MuP65PWAMaKDsPscc5GLY84BEr9EF9oUnuGtBTlm65oD
 Bp0KYK2IKzNXyWtKDYb221DdM576ubkby/hGwXos2e/TJMP9pEeUeOaRN
 +iCTE3WIFTfBsLevn2chzu7opJpxrnqi1JDI7qZfFbqqlgEIabbF+6Cgy
 f5DSv4mAqtuSpcyDZLROU0j0ByHYBA1GS4F075lR2zERmxNOvCWN6ATlz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147484"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147484"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204816"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204816"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:16 -0700
Message-Id: <20230823170740.1180212-19-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/42] drm/i915/xe2lpd: Move registers to PICA
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some registers for DDI A/B moved to PICA and now follow the same format
as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:

	- Share the implementation between xe2lpd and previous
	  platforms: there are minor layout changes, it's mostly the
	  register location that changed
	- Handle offsets after TC ports

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 81 ++++++++++---------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 71 ++++++++++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++--
 3 files changed, 117 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a5918bf30c31..6533ec417806 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -98,7 +98,7 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
 static void intel_clear_response_ready_flag(struct drm_i915_private *i915,
 					    enum port port, int lane)
 {
-	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+	intel_de_rmw(i915, xelpdp_port_p2m_msgbus_status_reg(i915, port, lane),
 		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
 }
 
@@ -106,10 +106,10 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 {
 	enum phy phy = intel_port_to_phy(i915, port);
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_RESET);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_RESET,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
@@ -125,7 +125,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 	enum phy phy = intel_port_to_phy(i915, port);
 
 	if (__intel_de_wait_for_register(i915,
-					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+					 xelpdp_port_p2m_msgbus_status_reg(i915, port, lane),
 					 XELPDP_PORT_P2M_RESPONSE_READY,
 					 XELPDP_PORT_P2M_RESPONSE_READY,
 					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
@@ -160,7 +160,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -169,7 +169,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       XELPDP_PORT_M2P_COMMAND_READ |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
@@ -220,7 +220,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -229,14 +229,14 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
 				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
 		       XELPDP_PORT_M2P_DATA(data) |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -249,7 +249,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
 		if (ack < 0)
 			return ack;
-	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)) &
+	} else if ((intel_de_read(i915, xelpdp_port_p2m_msgbus_status_reg(i915, port, lane)) &
 		    XELPDP_PORT_P2M_ERROR_SET)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Error occurred during write command.\n", phy_name(phy));
@@ -2431,7 +2431,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 val = 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
+	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
+		     XELPDP_PORT_REVERSAL,
 		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
 
 	if (lane_reversal)
@@ -2451,7 +2452,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
 		     XELPDP_SSC_ENABLE_PLLB, val);
@@ -2484,15 +2485,16 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 						u8 lane_mask, u8 state)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
+	i915_reg_t buf_ctl2_reg = xelpdp_port_buf_ctl2_reg(i915, port);
 	int lane;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, buf_ctl2_reg,
 		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
 		     intel_cx0_get_powerdown_state(lane_mask, state));
 
 	/* Wait for pending transactions.*/
 	for_each_cx0_lane_in_mask(lane_mask, lane)
-		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+		if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
 					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 			drm_dbg_kms(&i915->drm,
@@ -2501,12 +2503,12 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 			intel_cx0_bus_reset(i915, port, lane);
 		}
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, buf_ctl2_reg,
 		     intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_powerdown_update(lane_mask));
 
 	/* Update Timeout Value */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+	if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
 					 intel_cx0_get_powerdown_update(lane_mask), 0,
 					 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
@@ -2515,10 +2517,10 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 
 static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
 {
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port),
 		     XELPDP_POWER_STATE_READY_MASK,
 		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
+	intel_de_rmw(i915, xelpdp_port_buf_ctl3_reg(i915, port),
 		     XELPDP_POWER_STATE_ACTIVE_MASK |
 		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
 		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
@@ -2563,28 +2565,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_buf_ctl1_reg(i915, port),
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
 					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port),
 		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
 		     lane_pipe_reset);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_buf_ctl2_reg(i915, port),
 					 lane_phy_current_status, lane_phy_current_status,
 					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, port),
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, port),
 					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
 					 intel_cx0_get_pclk_refclk_ack(lane_mask),
 					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
@@ -2595,9 +2597,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 					    CX0_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(i915, port);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
+	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port), lane_pipe_reset, 0);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
+	if (intel_de_wait_for_clear(i915, xelpdp_port_buf_ctl2_reg(i915, port),
+				    lane_phy_current_status,
 				    XELPDP_PORT_RESET_END_TIMEOUT))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
@@ -2726,12 +2729,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
 	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
 					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
@@ -2751,7 +2754,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 clock;
-	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	u32 val = intel_de_read(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port));
 
 	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
@@ -2804,11 +2807,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 */
 	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
 
 	/* 2. Read back PORT_CLOCK_CTL REGISTER */
-	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	val = intel_de_read(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port));
 
 	/*
 	 * 3. Follow the Display Voltage Frequency Switching - Sequence
@@ -2819,10 +2822,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
 	 */
 	val |= XELPDP_TBT_CLOCK_REQUEST;
-	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
+	intel_de_write(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 					 XELPDP_TBT_CLOCK_ACK,
 					 XELPDP_TBT_CLOCK_ACK,
 					 100, 0, NULL))
@@ -2874,7 +2877,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
 	 * to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
 		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
 
@@ -2884,7 +2887,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
 					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
 					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
@@ -2897,9 +2900,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
@@ -2918,11 +2921,11 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
 		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
@@ -2935,7 +2938,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK |
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index cb5d1be2ba19..4b5b9a97142d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -6,13 +6,15 @@
 #ifndef __INTEL_CX0_PHY_REGS_H__
 #define __INTEL_CX0_PHY_REGS_H__
 
+#include "i915_drv.h"
 #include "i915_reg_defs.h"
+#include "intel_display_limits.h"
 
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
-#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
@@ -27,7 +29,7 @@
 #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
 #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
 #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
-#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
@@ -54,7 +56,7 @@
 #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
 #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
 #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
-#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
@@ -75,7 +77,7 @@
 #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
 #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
 
-#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
@@ -95,7 +97,7 @@
 #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
 #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
 
-#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
@@ -114,7 +116,7 @@
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
 #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
 #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
-#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_CLOCK_CTL_A, \
 										 _XELPDP_PORT_CLOCK_CTL_B, \
 										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
@@ -271,4 +273,61 @@
 #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
 #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
 
+/*
+ * All registers are in the same IP, with a single range.  However the registers
+ * for TC_PORT come first.
+ */
+static inline enum port xe2lpd_port_idx(enum port port)
+{
+	return port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A;
+}
+
+static inline i915_reg_t xelpdp_port_clock_ctl_reg(struct drm_i915_private *i915,
+						   enum port port)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_CLOCK_CTL(xe2lpd_port_idx(port)) :
+		XELPDP_PORT_CLOCK_CTL(port);
+}
+
+static inline i915_reg_t xelpdp_port_buf_ctl3_reg(struct drm_i915_private *i915,
+						  enum port port)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_BUF_CTL3(xe2lpd_port_idx(port)) :
+		XELPDP_PORT_BUF_CTL3(port);
+}
+
+static inline i915_reg_t xelpdp_port_buf_ctl2_reg(struct drm_i915_private *i915,
+						  enum port port)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_BUF_CTL2(xe2lpd_port_idx(port)) :
+		XELPDP_PORT_BUF_CTL2(port);
+}
+
+static inline i915_reg_t xelpdp_port_buf_ctl1_reg(struct drm_i915_private *i915,
+						  enum port port)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_BUF_CTL1(xe2lpd_port_idx(port)) :
+		XELPDP_PORT_BUF_CTL1(port);
+}
+
+static inline i915_reg_t xelpdp_port_m2p_msgbus_ctl_reg(struct drm_i915_private *i915,
+							enum port port, int lane)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_M2P_MSGBUS_CTL(xe2lpd_port_idx(port), lane) :
+		XELPDP_PORT_M2P_MSGBUS_CTL(port, lane);
+}
+
+static inline i915_reg_t xelpdp_port_p2m_msgbus_status_reg(struct drm_i915_private *i915,
+							   enum port port, int lane)
+{
+	return DISPLAY_VER(i915) >= 20 ?
+		XELPDP_PORT_P2M_MSGBUS_STATUS(xe2lpd_port_idx(port), lane) :
+		XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane);
+}
+
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3147ed174d83..3587ddc6d8ed 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -176,7 +176,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
 	int ret;
 
 	/* FIXME: find out why Bspec's 100us timeout is too short */
-	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
+	ret = wait_for_us((intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port)) &
 			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
 	if (ret)
 		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
@@ -224,7 +224,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 14)
-		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
+		ret = _wait_for(!(intel_de_read(dev_priv,
+						xelpdp_port_buf_ctl1_reg(dev_priv, port)) &
+				  XELPDP_PORT_BUF_PHY_IDLE),
 				timeout_us, 10, 10);
 	else
 		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
@@ -2365,7 +2367,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(port);
+		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
 		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
@@ -2385,7 +2387,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 val;
 
-	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	val = intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port));
 	val &= ~XELPDP_PORT_WIDTH_MASK;
 	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
 
@@ -2398,7 +2400,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
 		val |= XELPDP_PORT_REVERSAL;
 
-	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+	intel_de_write(i915, xelpdp_port_buf_ctl1_reg(i915, port), val);
 }
 
 static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
@@ -2409,7 +2411,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
 
 	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
 	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
+	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
 		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
 }
 
@@ -2829,7 +2831,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(port);
+		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
 		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
@@ -2967,7 +2969,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 
 	/* De-select Thunderbolt */
 	if (DISPLAY_VER(dev_priv) >= 14)
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
+		intel_de_rmw(dev_priv, xelpdp_port_buf_ctl1_reg(dev_priv, encoder->port),
 			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
 }
 
-- 
2.40.1

