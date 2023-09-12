Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA579C4E5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF2610E3AE;
	Tue, 12 Sep 2023 04:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F08A10E265;
 Tue, 12 Sep 2023 04:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494114; x=1726030114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/fQ9c/6thXDzHqLVxn7hpy7GVu+2yEo66wsEu1j5KN8=;
 b=XfAEC8pKFqfmzjaeo1r3G+Usclc+fRdUJZkV9Xrb2IFM3YtkNaF0j0E1
 YudCrHPe5hHpeoOr7AbBkQN1EGAKfF+I8tnE3dSLWk53Jp7O/ApKuxFOP
 ndVnMLefAqpaJI+SrKIRgdRcyBxzaFOH/4tEMEmmBRezjrpz0m96gZyLa
 IVVEHAYlLMImiPd/FCORSz7N0xF8+Lh35YdtnhjMDyJCYS4b53JNejEJu
 qnE3E/rxSR3a9wuIVkw+eBLogI92RVmrbZ3uEoEeM6FIG3F4coEDIYw7Q
 2WqZM2AHR2NhRgRCC9Ygge3TODUzGjlPZL/RYWvN5atu12QLbBO8mIRc6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182318"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182318"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419938"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419938"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:18 -0700
Message-Id: <20230912044837.1672060-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 10/29] drm/i915/xe2lpd: Move registers to PICA
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some registers for DDI A/B moved to PICA and now follow the same format
as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:

	- Share the implementation between xe2lpd and previous
	  platforms: there are minor layout changes, it's mostly the
	  register location that changed
	- Handle offsets after TC ports

v2:
  - Explain better the trick to use just the second range (Matt Roper)
  - Add missing conversions after rebase (Matt Roper)
  - Use macro instead of inline function, avoiding includes in the
    header (Jani)
  - Prefix old macros with underscore so they don't get used by mistake,
    and name the new ones using the previous names
v2: Use the same logic for the recently-introduced XELPDP_PORT_MSGBUS_TIMER
    (Gustavo)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 85 ++++++++++---------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 63 ++++++++++++--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 20 +++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 16 ++--
 4 files changed, 120 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e6d3027c821d..33dd67332a4e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -100,7 +100,7 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
 static void intel_clear_response_ready_flag(struct drm_i915_private *i915,
 					    enum port port, int lane)
 {
-	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
 		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
 }
 
@@ -108,10 +108,10 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 {
 	enum phy phy = intel_port_to_phy(i915, port);
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_RESET);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_RESET,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
@@ -133,7 +133,7 @@ static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private *i915,
 	u32 val;
 	u32 timer_val;
 
-	reg = XELPDP_PORT_MSGBUS_TIMER(port, lane);
+	reg = XELPDP_PORT_MSGBUS_TIMER(i915, port, lane);
 	val = intel_de_read(i915, reg);
 
 	if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
@@ -163,7 +163,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 	enum phy phy = intel_port_to_phy(i915, port);
 
 	if (__intel_de_wait_for_register(i915,
-					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
+					 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
 					 XELPDP_PORT_P2M_RESPONSE_READY,
 					 XELPDP_PORT_P2M_RESPONSE_READY,
 					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
@@ -199,7 +199,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -208,7 +208,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       XELPDP_PORT_M2P_COMMAND_READ |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
@@ -259,7 +259,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 	int ack;
 	u32 val;
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -268,14 +268,14 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 		return -ETIMEDOUT;
 	}
 
-	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
 		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
 				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
 		       XELPDP_PORT_M2P_DATA(data) |
 		       XELPDP_PORT_M2P_ADDRESS(addr));
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 		drm_dbg_kms(&i915->drm,
@@ -288,7 +288,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
 		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
 		if (ack < 0)
 			return ack;
-	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)) &
+	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane)) &
 		    XELPDP_PORT_P2M_ERROR_SET)) {
 		drm_dbg_kms(&i915->drm,
 			    "PHY %c Error occurred during write command.\n", phy_name(phy));
@@ -2470,7 +2470,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 val = 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
+		     XELPDP_PORT_REVERSAL,
 		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
 
 	if (lane_reversal)
@@ -2490,7 +2491,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	else
 		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
 		     XELPDP_SSC_ENABLE_PLLB, val);
@@ -2523,15 +2524,16 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 						u8 lane_mask, u8 state)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
+	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(i915, port);
 	int lane;
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, buf_ctl2_reg,
 		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
 		     intel_cx0_get_powerdown_state(lane_mask, state));
 
 	/* Wait for pending transactions.*/
 	for_each_cx0_lane_in_mask(lane_mask, lane)
-		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
+		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
 					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
 					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
 			drm_dbg_kms(&i915->drm,
@@ -2540,12 +2542,12 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
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
@@ -2554,10 +2556,10 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 
 static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
 {
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
 		     XELPDP_POWER_STATE_READY_MASK,
 		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
 		     XELPDP_POWER_STATE_ACTIVE_MASK |
 		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
 		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
@@ -2602,28 +2604,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
 					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915, port),
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
 					 XELPDP_PORT_BUF_SOC_PHY_READY,
 					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
 		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
 		     lane_pipe_reset);
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915, port),
 					 lane_phy_current_status, lane_phy_current_status,
 					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
 		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
 		     intel_cx0_get_pclk_refclk_request(lane_mask));
 
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
 					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
 					 intel_cx0_get_pclk_refclk_ack(lane_mask),
 					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
@@ -2634,9 +2636,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 					    CX0_P2_STATE_RESET);
 	intel_cx0_setup_powerdown(i915, port);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset, 0);
 
-	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port),
+				    lane_phy_current_status,
 				    XELPDP_PORT_RESET_END_TIMEOUT))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
@@ -2765,12 +2768,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
 	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
 					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
@@ -2790,7 +2793,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 clock;
-	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
 
 	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
@@ -2843,11 +2846,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 */
 	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
 
 	/* 2. Read back PORT_CLOCK_CTL REGISTER */
-	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
 
 	/*
 	 * 3. Follow the Display Voltage Frequency Switching - Sequence
@@ -2858,10 +2861,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
 	 */
 	val |= XELPDP_TBT_CLOCK_REQUEST;
-	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
+	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), val);
 
 	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 					 XELPDP_TBT_CLOCK_ACK,
 					 XELPDP_TBT_CLOCK_ACK,
 					 100, 0, NULL))
@@ -2913,7 +2916,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
 	 * to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
 		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
 
@@ -2923,7 +2926,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
 					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
 					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
@@ -2936,9 +2939,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 	 */
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
@@ -2957,11 +2960,11 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_TBT_CLOCK_REQUEST, 0);
 
 	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
-	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
 		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
 			 encoder->base.base.id, encoder->base.name, phy_name(phy));
@@ -2974,7 +2977,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	/*
 	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
 		     XELPDP_DDI_CLOCK_SELECT_MASK |
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
@@ -3001,7 +3004,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 	 * TODO: Determine the PLL type from the SW state, once MTL PLL
 	 * handling is done via the standard shared DPLL framework.
 	 */
-	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
+	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
 	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
 
 	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index b2db4cc366d6..ff7f10d91e50 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -7,16 +7,39 @@
 #define __INTEL_CX0_PHY_REGS_H__
 
 #include "i915_reg_defs.h"
+#include "intel_display_limits.h"
+
+/*
+ * Wrapper macro to convert from port number to the index used in some of the
+ * registers. For Display version 20 and above it converts the port number to a
+ * single range, starting with the TC offsets. When used together with
+ * _PICK_EVEN_2RANGES(idx, PORT_TC1, ...), this single range will be the second
+ * range. Example:
+ *
+ * PORT_TC1 -> PORT_TC1
+ * PORT_TC2 -> PORT_TC2
+ * PORT_TC3 -> PORT_TC3
+ * PORT_TC4 -> PORT_TC4
+ * PORT_A   -> PORT_TC4 + 1
+ * PORT_B   -> PORT_TC4 + 2
+ * ...
+ */
+#define __xe2lpd_port_idx(port)						\
+	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)
 
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
 #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
-#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)
+#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
 #define   XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
 #define   XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
 #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
@@ -27,11 +50,16 @@
 #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
 #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
 #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
-#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+
+#define _XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
 										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
+	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))
 #define   XELPDP_PORT_P2M_RESPONSE_READY		REG_BIT(31)
 #define   XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
 #define   XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
@@ -54,11 +82,15 @@
 #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
 #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
 #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
-#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
+#define XELPDP_PORT_BUF_CTL1(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL1(port))
 #define   XELPDP_PORT_BUF_D2D_LINK_ENABLE		REG_BIT(29)
 #define   XELPDP_PORT_BUF_D2D_LINK_STATE		REG_BIT(28)
 #define   XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
@@ -75,12 +107,15 @@
 #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
 #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
 
-#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)
-
+#define XELPDP_PORT_BUF_CTL2(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL2(port))
 #define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
 #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
 #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
@@ -95,11 +130,15 @@
 #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
 #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
 
-#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
 										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)
+#define XELPDP_PORT_BUF_CTL3(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_BUF_CTL3(port))
 #define   XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
 #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
 #define   XELPDP_POWER_STATE_ACTIVE_MASK		REG_GENMASK(3, 0)
@@ -114,11 +153,15 @@
 #define _XELPDP_PORT_MSGBUS_TIMER_LN0_B			0x641d8
 #define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1		0x16f258
 #define _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2		0x16f458
-#define XELPDP_PORT_MSGBUS_TIMER(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_MSGBUS_TIMER(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_A, \
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_B, \
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC1, \
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
+#define XELPDP_PORT_MSGBUS_TIMER(i915__, port, lane)				\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_MSGBUS_TIMER(__xe2lpd_port_idx(port), lane) :		\
+	 _XELPDP_PORT_MSGBUS_TIMER(port, lane))
 #define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT		REG_BIT(31)
 #define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK		REG_GENMASK(23, 0)
 #define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)		REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)
@@ -127,11 +170,15 @@
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
 #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
 #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
-#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
+#define _XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
 										 _XELPDP_PORT_CLOCK_CTL_A, \
 										 _XELPDP_PORT_CLOCK_CTL_B, \
 										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
 										 _XELPDP_PORT_CLOCK_CTL_USBC2))
+#define XELPDP_PORT_CLOCK_CTL(i915__, port)					\
+	(DISPLAY_VER(i915__) >= 20 ?						\
+	 _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :			\
+	 _XELPDP_PORT_CLOCK_CTL(port))
 #define   XELPDP_LANE_PCLK_PLL_REQUEST(lane)		REG_BIT(31 - ((lane) * 4))
 #define   XELPDP_LANE_PCLK_PLL_ACK(lane)		REG_BIT(30 - ((lane) * 4))
 #define   XELPDP_LANE_PCLK_REFCLK_REQUEST(lane)		REG_BIT(29 - ((lane) * 4))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 53d8f13f8471..2509785daf7b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -177,7 +177,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
 	int ret;
 
 	/* FIXME: find out why Bspec's 100us timeout is too short */
-	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
+	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port)) &
 			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
 	if (ret)
 		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
@@ -225,7 +225,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 14)
-		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
+		ret = _wait_for(!(intel_de_read(dev_priv,
+						XELPDP_PORT_BUF_CTL1(dev_priv, port)) &
+				  XELPDP_PORT_BUF_PHY_IDLE),
 				timeout_us, 10, 10);
 	else
 		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
@@ -2366,7 +2368,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(port);
+		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
 		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
@@ -2386,7 +2388,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 val;
 
-	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
 	val &= ~XELPDP_PORT_WIDTH_MASK;
 	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
 
@@ -2399,7 +2401,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
 		val |= XELPDP_PORT_REVERSAL;
 
-	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
 }
 
 static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
@@ -2410,7 +2412,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
 
 	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
 	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
 		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
 }
 
@@ -2830,7 +2832,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
 		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 	} else {
-		reg = XELPDP_PORT_BUF_CTL1(port);
+		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
 		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
 		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
 	}
@@ -2968,7 +2970,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 
 	/* De-select Thunderbolt */
 	if (DISPLAY_VER(dev_priv) >= 14)
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
+		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, encoder->port),
 			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
 }
 
@@ -3241,7 +3243,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 		if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
 			port_buf |= XELPDP_PORT_REVERSAL;
 
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
+		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
 			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
 
 		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3c94bbcb5497..678693978892 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -958,10 +958,11 @@ xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum port port = tc->dig_port->base.port;
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
 
 	assert_tc_cold_blocked(tc);
 
-	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TCSS_POWER_STATE;
+	return intel_de_read(i915, reg) & XELPDP_TCSS_POWER_STATE;
 }
 
 static bool
@@ -984,16 +985,17 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum port port = tc->dig_port->base.port;
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	val = intel_de_read(i915, reg);
 	if (enable)
 		val |= XELPDP_TCSS_POWER_REQUEST;
 	else
 		val &= ~XELPDP_TCSS_POWER_REQUEST;
-	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+	intel_de_write(i915, reg, val);
 }
 
 static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
@@ -1020,26 +1022,28 @@ static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum port port = tc->dig_port->base.port;
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
 	u32 val;
 
 	assert_tc_cold_blocked(tc);
 
-	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
+	val = intel_de_read(i915, reg);
 	if (take)
 		val |= XELPDP_TC_PHY_OWNERSHIP;
 	else
 		val &= ~XELPDP_TC_PHY_OWNERSHIP;
-	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
+	intel_de_write(i915, reg, val);
 }
 
 static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
 {
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum port port = tc->dig_port->base.port;
+	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
 
 	assert_tc_cold_blocked(tc);
 
-	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TC_PHY_OWNERSHIP;
+	return intel_de_read(i915, reg) & XELPDP_TC_PHY_OWNERSHIP;
 }
 
 static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
-- 
2.40.1

