Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4281E5EF431
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BD6110EA35;
	Thu, 29 Sep 2022 11:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8947710E5DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664450496; x=1695986496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PnPvECrr+Ur9y2M/DKfjO4+RcxUyifSaM9D5qGv68MM=;
 b=LmyDbmnPb+4FCi0b9cDzCpJdqmqYhjaMXHwH+i7qUWLbIIHCRpb7Bh8q
 dTWwSSMNyLYyJqffQHwfeqXjTxYIDGLjb4xerRQbfyNkutMLagpKg2pLD
 NJGKpTMIJLlttG8NyzHG5eDNWnmF8hHwEdGE9VCVpLOR2TSXUcBvNxWy8
 w0YSxVt3o4t1AMdU/bRNu61rpsM+tkPPF01xCE5UGT0w3/tW6gjmQw93f
 ih+X554d0OLC5C2nWixndP3Y0I0WYk1tL3puzirX+WTYcgwE7JgjgZ9RH
 bVEwhwbuoc4WGqPtvw7h/SFW4X3/6VPYO12F66AfRpflbSaS+k5ko88qO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="299465359"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="299465359"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:21:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="655515873"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="655515873"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 04:21:34 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 14:17:03 +0300
Message-Id: <20220929111703.2472410-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929111703.2472410-1-mika.kahola@intel.com>
References: <20220929111703.2472410-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/mtl: Add vswing programming for
 C10 phys
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

From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

C10 phys uses direct mapping internally for voltage and pre-emphasis levels.
Program the levels directly to the fields in the VDR Registers.

Bspec: 65449

Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 157 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 .../drm/i915/display/intel_ddi_buf_trans.c    |  36 +++-
 .../drm/i915/display/intel_ddi_buf_trans.h    |   6 +
 .../i915/display/intel_display_power_map.c    |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 7 files changed, 187 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a08788d2a3bc..bba3c4579cfa 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -4,12 +4,24 @@
  */
 
 #include "intel_cx0_phy.h"
+#include "intel_ddi.h"
+#include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_panel.h"
+#include "intel_psr.h"
 #include "intel_uncore.h"
 
+static void
+assert_dc_off(struct drm_i915_private *i915)
+{
+	bool enabled;
+
+	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
+	drm_WARN_ON(&i915->drm, !enabled);
+}
+
 static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, int lane)
 {
 	enum phy phy = intel_port_to_phy(i915, port);
@@ -37,6 +49,8 @@ static u8 intel_cx0_read(struct drm_i915_private *i915, enum port port,
 	u32 val = 0;
 	int attempts = 0;
 
+	assert_dc_off(i915);
+
 retry:
 	if (attempts == 3) {
 		drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries. Status: 0x%x\n", phy_name(phy), addr, attempts, val ?: 0);
@@ -126,6 +140,8 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	enum phy phy = intel_port_to_phy(i915, port);
 	int attempts = 0;
 
+	assert_dc_off(i915);
+
 retry:
 	if (attempts == 3) {
 		drm_err_once(&i915->drm, "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, attempts);
@@ -204,6 +220,76 @@ static void intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 	}
 }
 
+/*
+ * Prepare HW for CX0 phy transactions.
+ *
+ * It is required that PSR and DC5/6 are disabled before any CX0 message
+ * bus transaction is executed.
+ */
+static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_pause(intel_dp);
+	return intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+}
+
+static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	intel_psr_resume(intel_dp);
+	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
+}
+
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	enum intel_cx0_lanes master_lane = lane_reversal ? INTEL_CX0_LANE1 :
+				 INTEL_CX0_LANE0;
+	const struct intel_ddi_buf_trans *trans;
+	intel_wakeref_t wakeref;
+	int n_entries, ln;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
+	if (drm_WARN_ON_ONCE(&i915->drm, !trans))
+		return;
+
+	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+
+	for (ln = 0; ln < 4; ln++) {
+		int level = intel_ddi_level(encoder, crtc_state, ln);
+		int lane, tx;
+
+		lane = ln / 2;
+		tx = ln % 2 + 1;
+
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 2),
+			      C10_PHY_VSWING_PREEMPH_MASK,
+			      C10_PHY_VSWING_PREEMPH(trans->entries[level].direct.preemph),
+			      MB_WRITE_COMMITTED);
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_CX0_TX_CONTROL(tx, 8),
+			      C10_PHY_VSWING_LEVEL_MASK,
+			      C10_PHY_VSWING_LEVEL(trans->entries[level].direct.level),
+			      MB_WRITE_COMMITTED);
+	}
+
+	intel_cx0_write(i915, encoder->port, !master_lane, PHY_C10_VDR_CONTROL(1),
+		 C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+	intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
+			C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG,
+			MB_WRITE_COMMITTED);
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 /*
  * Basic DP link rates with 38.4 MHz reference clock.
  * Note: The tables below are with SSC. In non-ssc
@@ -662,9 +748,12 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 	enum intel_cx0_lanes lane = lane_reversal ? INTEL_CX0_LANE1 :
 				    INTEL_CX0_LANE0;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
 	int i;
 	u8 cmn, tx0;
 
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
 	/*
 	 * According to C10 VDR Register programming Sequence we need
 	 * to do this to read PHY internal registers from MsgBus.
@@ -683,6 +772,8 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 					  C10_CMN0_DP_VAL : C10_CMN0_HDMI_VAL))
 		drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
 			 tx0, cmn, phy_name(phy));
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 static void intel_c10_pll_program(struct drm_i915_private *i915,
@@ -839,17 +930,20 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
-		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
-			      DP_MAX_DOWNSPREAD_0_5;
+		ssc_enabled = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			      DP_MAX_DOWNSPREAD_0_5);
+
+		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
+			ssc_enabled = false;
 
 		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
 		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 	}
+
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_LANE1_PHY_CLOCK_SELECT |
-		     XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
 		     XELPDP_DDI_CLOCK_SELECT_MASK |
-		     XELPDP_SSC_ENABLE_PLLB, val);
+		     XELPDP_SSC_ENABLE_PLLA | XELPDP_SSC_ENABLE_PLLB, val);
 }
 
 static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
@@ -859,16 +953,16 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
 	enum phy phy = intel_port_to_phy(i915, port);
 
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
-		     PHY_LANES_VAL(POWERDOWN_NEW_STATE_MASK, lane),
+		     PHY_LANES_VAL(POWERDOWN_NEW_STATE_MASK, INTEL_CX0_BOTH_LANES),
 		     PHY_LANES_VAL_ARG(POWERDOWN_NEW_STATE, lane, state));
 	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
-		     PHY_LANES_VAL(POWERDOWN_UPDATE, lane),
+		     PHY_LANES_VAL(POWERDOWN_UPDATE, INTEL_CX0_BOTH_LANES),
 		     PHY_LANES_VAL(POWERDOWN_UPDATE, lane));
 
 	/* Update Timeout Value */
 	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL2(port),
 				      PHY_LANES_VAL(POWERDOWN_UPDATE, lane), 0,
-				      XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+				      XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 }
@@ -912,11 +1006,11 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
 			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
-		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, lane),
+		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, INTEL_CX0_BOTH_LANES),
 		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, lane));
 
 	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(port),
-				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane),
+				      PHY_LANES_VAL(PCLK_REFCLK_ACK, INTEL_CX0_BOTH_LANES),
 				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane),
 				      XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
@@ -943,9 +1037,12 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
 {
 	u8 l0t1, l0t2, l1t1, l1t2;
 
-	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
-		      MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, 1, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, 0, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS | C10_VDR_CTRL_UPDATE_CFG,
+		      C10_VDR_CTRL_MASTER_LANE  | C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
 
 	l0t1 = intel_cx0_read(i915, port, 0, PHY_CX0_TX_CONTROL(1, 2));
 	l0t2 = intel_cx0_read(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2));
@@ -996,8 +1093,12 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
 		}
 	}
 
-	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      C10_VDR_CTRL_UPDATE_CFG, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, 1, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
+		      C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+	intel_cx0_rmw(i915, port, 0, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
+		      C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
 }
 
 static void intel_c10pll_enable(struct intel_encoder *encoder,
@@ -1050,12 +1151,13 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
 	 * LN<Lane for maxPCLK> to "1" to enable PLL.
 	 */
-	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), 0,
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     PHY_LANES_VAL(PCLK_PLL_REQUEST, INTEL_CX0_BOTH_LANES),
 		     PHY_LANES_VAL(PCLK_PLL_REQUEST, maxpclk_lane));
 
 	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
 	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
-				      PHY_LANES_VAL(PCLK_PLL_ACK, maxpclk_lane),
+				      PHY_LANES_VAL(PCLK_PLL_ACK, INTEL_CX0_BOTH_LANES),
 				      PHY_LANES_VAL(PCLK_PLL_ACK, maxpclk_lane),
 				      XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
@@ -1072,19 +1174,20 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
 	intel_c10pll_enable(encoder, crtc_state);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 static void intel_c10pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
-	enum intel_cx0_lanes lane = lane_reversal ? INTEL_CX0_LANE1 :
-				    INTEL_CX0_LANE0;
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
@@ -1110,8 +1213,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
 	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
 	 */
 	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
-				      PHY_LANES_VAL(PCLK_PLL_ACK, lane) |
-				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane), 0,
+				      PHY_LANES_VAL(PCLK_PLL_ACK, INTEL_CX0_BOTH_LANES) |
+				      PHY_LANES_VAL(PCLK_REFCLK_ACK, INTEL_CX0_BOTH_LANES), 0,
 				      XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
 		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
 			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
@@ -1123,7 +1226,8 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 }
 
@@ -1131,9 +1235,14 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	intel_wakeref_t wakeref;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
 	intel_c10pll_disable(encoder);
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
 #undef PHY_LANES_VAL_ARG
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index fc8e4041f26f..9816449e3931 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -120,6 +120,12 @@ enum intel_cx0_lanes {
 #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
 #define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
 
+/* C10 Phy VSWING Masks */
+#define C10_PHY_VSWING_LEVEL_MASK		REG_GENMASK8(2, 0)
+#define C10_PHY_VSWING_LEVEL(val)		REG_FIELD_PREP8(C10_PHY_VSWING_LEVEL_MASK, val)
+#define C10_PHY_VSWING_PREEMPH_MASK		REG_GENMASK8(1, 0)
+#define C10_PHY_VSWING_PREEMPH(val)		REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
+
 static inline bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (!IS_METEORLAKE(dev_priv))
@@ -143,5 +149,7 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state);
 int intel_c10_phy_check_hdmi_link_rate(int clock);
+void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CX0_PHY_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 639ec604babf..1380ed2221ad 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4445,7 +4445,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		encoder->get_config = hsw_ddi_get_config;
 	}
 
-	if (IS_DG2(dev_priv)) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
+	} else if (IS_DG2(dev_priv)) {
 		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		if (intel_phy_is_combo(dev_priv, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 006a2e979000..49f8a0a6593b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1035,6 +1035,30 @@ static const struct intel_ddi_buf_trans dg2_snps_trans_uhbr = {
 	.num_entries = ARRAY_SIZE(_dg2_snps_trans_uhbr),
 };
 
+/*
+ * Some platforms don't need a mapping table and only expect us to
+ * to program the vswing + preemphasis levels directly since the
+ * hardware will do its own mapping to tuning values internally.
+ */
+static const union intel_ddi_buf_trans_entry direct_map_trans[] = {
+    { .direct = { .level = 0, .preemph = 0 } },
+    { .direct = { .level = 0, .preemph = 1 } },
+    { .direct = { .level = 0, .preemph = 2 } },
+    { .direct = { .level = 0, .preemph = 3 } },
+    { .direct = { .level = 1, .preemph = 0 } },
+    { .direct = { .level = 1, .preemph = 0 } },
+    { .direct = { .level = 1, .preemph = 2 } },
+    { .direct = { .level = 2, .preemph = 0 } },
+    { .direct = { .level = 2, .preemph = 1 } },
+    { .direct = { .level = 3, .preemph = 0 } },
+};
+
+static const struct intel_ddi_buf_trans mtl_cx0c10_trans = {
+	.entries = direct_map_trans,
+	.num_entries = ARRAY_SIZE(direct_map_trans),
+	.hdmi_default_entry = ARRAY_SIZE(direct_map_trans) - 1,
+};
+
 bool is_hobl_buf_trans(const struct intel_ddi_buf_trans *table)
 {
 	return table == &tgl_combo_phy_trans_edp_hbr2_hobl;
@@ -1606,12 +1630,22 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 		return intel_get_buf_trans(&dg2_snps_trans, n_entries);
 }
 
+static const struct intel_ddi_buf_trans *
+mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
+{
+	return intel_get_buf_trans(&mtl_cx0c10_trans, n_entries);
+}
+
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (IS_DG2(i915)) {
+	if (DISPLAY_VER(i915) >= 14) {
+		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
+	} else if (IS_DG2(i915)) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (IS_ALDERLAKE_P(i915)) {
 		if (intel_phy_is_combo(i915, phy))
diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
index 2133984a572b..e4a857b9829d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
@@ -51,6 +51,11 @@ struct dg2_snps_phy_buf_trans {
 	u8 post_cursor;
 };
 
+struct direct_phy_buf_trans {
+	u8 level;
+	u8 preemph;
+};
+
 union intel_ddi_buf_trans_entry {
 	struct hsw_ddi_buf_trans hsw;
 	struct bxt_ddi_buf_trans bxt;
@@ -58,6 +63,7 @@ union intel_ddi_buf_trans_entry {
 	struct icl_mg_phy_ddi_buf_trans mg;
 	struct tgl_dkl_phy_ddi_buf_trans dkl;
 	struct dg2_snps_phy_buf_trans snps;
+	struct direct_phy_buf_trans direct;
 };
 
 struct intel_ddi_buf_trans {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index dc04afc6cc8f..45c3ab4e2f28 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1374,6 +1374,7 @@ I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
 	XELPDP_PW_2_POWER_DOMAINS,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_MODESET,
+	POWER_DOMAIN_DC_OFF,
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_INIT);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5e6ff9f2aa10..bafd70fb96bd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8442,6 +8442,7 @@ enum skl_power_gate {
 #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
+#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_END_TIMEOUT			15
 #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
 
-- 
2.34.1

