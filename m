Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB23779AA15
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 18:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D151510E32F;
	Mon, 11 Sep 2023 16:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FA8E10E32F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 16:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694449152; x=1725985152;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KAasHc4CkSDQh5TnK76b8pALVBfCJo1GNjLNBqA4zwY=;
 b=JtwTPl0XLrtzwVPSTSJ6dGiuZl15i9cJTNDCdA5QUxDqCAtq6xI8F26/
 RTi+LQCeT3LPS4hWx0xECP5ez8fQRBsFsUldMbgqY/LIiDYeR03pfp9Uc
 AGW1BqOi1UycU/q2XsFB8UM3WS8IWbOSWP2i32brc+GRZTGFhdTDcPfCM
 dTfHyAw+NzROOwfKvGvxcda/nS5MKDe4RneKSOR/oX/wEx0AD+KHqJuK2
 DojRHmqhUPofGdb+ZDm/9QHEngv5KA3lHKUN9AGw+eUAjoivs1rPWfUvQ
 JK+EdkPFqw2+T6ErtrEU5rdvIvd4ttPA4d9vA/vWJ8ijvCbBUt/jjt/es w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="464495608"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="464495608"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 09:16:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="736817904"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="736817904"
Received: from swedhana-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.255.33.188])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 09:16:21 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 13:15:40 -0300
Message-ID: <20230911161540.36358-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Add step for programming msgbus
 timer
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

There was a recent update in the BSpec adding an extra step to the PLL
enable sequence, which is for programming the msgbus timer. Since we
also touch PHY registers during hw readout, let's do the programming
when starting a transaction rather than only when doing the PLL enable
sequence.

The BSpec isn't clear about whether the programming should be done for
owned PHY lanes or only PHY lane 0. Let's program the timer for owned
PHY lanes for now. We can revisit this once we get clarification from
the BSpec.

This might be the missing step that was causing the timeouts
that we have recently seen during C20 SRAM register programming
sequences. With this in place, we shouldn't need the logic to bump the
timer thresholds, since now we have a documented value that should be
set peform programming the registers. As such, let's also remove
intel_cx0_bus_check_and_bump_timer(), but keep the part that checks if
hardware really detected a timeout, which might be useful debugging
information.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 88 +++++++++----------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
 2 files changed, 42 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index e6d3027c821d..1b0a868845b7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -29,8 +29,6 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
-#define INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL	0x200
-
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
 	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0) && phy < PHY_C)
@@ -73,19 +71,39 @@ assert_dc_off(struct drm_i915_private *i915)
 	drm_WARN_ON(&i915->drm, !enabled);
 }
 
+static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
+{
+	int lane;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(i915, encoder);
+
+	for_each_cx0_lane_in_mask(owned_lane_mask, lane)
+		intel_de_rmw(i915,
+			     XELPDP_PORT_MSGBUS_TIMER(encoder->port, lane),
+			     XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
+			     XELPDP_PORT_MSGBUS_TIMER_VAL);
+}
+
 /*
  * Prepare HW for CX0 phy transactions.
  *
  * It is required that PSR and DC5/6 are disabled before any CX0 message
  * bus transaction is executed.
+ *
+ * We also do the msgbus timer programming here to ensure that the timer
+ * is already programmed before any access to the msgbus.
  */
 static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
 {
+	intel_wakeref_t wakeref;
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_psr_pause(intel_dp);
-	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+	wakeref = intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+	intel_cx0_program_msgbus_timer(encoder);
+
+	return wakeref;
 }
 
 static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
@@ -121,42 +139,6 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
 	intel_clear_response_ready_flag(i915, port, lane);
 }
 
-/*
- * Check if there was a timeout detected by the hardware in the message bus
- * and bump the threshold if so.
- */
-static void intel_cx0_bus_check_and_bump_timer(struct drm_i915_private *i915,
-					       enum port port, int lane)
-{
-	enum phy phy = intel_port_to_phy(i915, port);
-	i915_reg_t reg;
-	u32 val;
-	u32 timer_val;
-
-	reg = XELPDP_PORT_MSGBUS_TIMER(port, lane);
-	val = intel_de_read(i915, reg);
-
-	if (!(val & XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT)) {
-		drm_warn(&i915->drm,
-			 "PHY %c lane %d: hardware did not detect a timeout\n",
-			 phy_name(phy), lane);
-		return;
-	}
-
-	timer_val = REG_FIELD_GET(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val);
-
-	if (timer_val == INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL)
-		return;
-
-	val &= ~XELPDP_PORT_MSGBUS_TIMER_VAL_MASK;
-	val |= XELPDP_PORT_MSGBUS_TIMER_VAL(INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
-
-	drm_dbg_kms(&i915->drm,
-		    "PHY %c lane %d: increasing msgbus timer threshold to %#x\n",
-		    phy_name(phy), lane, INTEL_CX0_MSGBUS_TIMER_BUMPED_VAL);
-	intel_de_write(i915, reg, val);
-}
-
 static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 				  int command, int lane, u32 *val)
 {
@@ -170,7 +152,13 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
 					 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
 		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
-		intel_cx0_bus_check_and_bump_timer(i915, port, lane);
+
+		if (!(intel_de_read(i915, XELPDP_PORT_MSGBUS_TIMER(port, lane)) &
+		      XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT))
+			drm_warn(&i915->drm,
+				 "PHY %c Hardware did not detect a timeout\n",
+				 phy_name(phy));
+
 		intel_cx0_bus_reset(i915, port, lane);
 		return -ETIMEDOUT;
 	}
@@ -2737,39 +2725,45 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
 					    CX0_P2_STATE_READY);
 
-	/* 4. Program PHY internal PLL internal registers. */
+	/*
+	 * 4. Program PORT_MSGBUS_TIMER register's Message Bus Timer field to 0xA000.
+	 *    (This is done inside intel_cx0_phy_transaction_begin(), since we would need
+	 *    the right timer thresholds for readouts too.)
+	 */
+
+	/* 5. Program PHY internal PLL internal registers. */
 	if (intel_is_c10phy(i915, phy))
 		intel_c10_pll_program(i915, crtc_state, encoder);
 	else
 		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
-	 * 5. Program the enabled and disabled owned PHY lane
+	 * 6. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
 	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
 
 	/*
-	 * 6. Follow the Display Voltage Frequency Switching - Sequence
+	 * 7. Follow the Display Voltage Frequency Switching - Sequence
 	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
 	/*
-	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
 	 * clock frequency.
 	 */
 	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
 		       crtc_state->port_clock);
 
 	/*
-	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
+	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
 		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
 
-	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
+	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
 					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
@@ -2778,7 +2772,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
 
 	/*
-	 * 10. Follow the Display Voltage Frequency Switching Sequence After
+	 * 11. Follow the Display Voltage Frequency Switching Sequence After
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index b2db4cc366d6..adf8f4ce0d49 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -121,7 +121,7 @@
 										 _XELPDP_PORT_MSGBUS_TIMER_LN0_USBC2) + (lane) * 4)
 #define   XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT		REG_BIT(31)
 #define   XELPDP_PORT_MSGBUS_TIMER_VAL_MASK		REG_GENMASK(23, 0)
-#define   XELPDP_PORT_MSGBUS_TIMER_VAL(val)		REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, val)
+#define   XELPDP_PORT_MSGBUS_TIMER_VAL			REG_FIELD_PREP(XELPDP_PORT_MSGBUS_TIMER_VAL_MASK, 0xa000)
 
 #define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
 #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
-- 
2.42.0

