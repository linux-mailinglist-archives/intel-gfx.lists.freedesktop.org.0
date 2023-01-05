Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7884F65EB71
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 13:59:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07E210E71B;
	Thu,  5 Jan 2023 12:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F2610E71B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 12:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672923594; x=1704459594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0k2CxAgJsNhIvQaUr+G+PjkMIqAcmxEVneiSx7slwTw=;
 b=jX6dSeURHzQeK2befmnBdhoxolnxCqX7YodcwRvEkhf9YLWhZx4l21Yl
 /Hxsj4AGtTCjcZgPN4nMdC6tDCxs6+MOF5mzGELalOfQImWmixZsFarPD
 zfrpjOThjhPmg0RmyPN1oV4LYVHCmeii/GJCtXZkCcRKPsVX/kaEexOWj
 x+RnCmO8DZw7nrTmKp+Jes7lVXf9VJYPgb89jraVibAuZ8wcZsj1nW6U1
 ps7WIuDCZsByxSb5kyV3iH3D1QEGB9dVWBmOQiFu35f0gp4DQB5n75amr
 d/bmdfcB6oawnGa8Fc1FbXEu8QEDp7KDkQjKGkKPJTewQ9kJCUX9rogJN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="305697777"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305697777"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 04:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829540968"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="829540968"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2023 04:59:51 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:54:33 +0200
Message-Id: <20230105125446.960504-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105125446.960504-1-mika.kahola@intel.com>
References: <20230105125446.960504-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/21] drm/i915/mtl: C20 PLL programming
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

C20 phy PLL programming sequence for DP, DP2.0, HDMI2.x non-FRL and
HDMI2.x FRL. This enables C20 MPLLA and MPLLB programming sequence. add
4 lane support for c20.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-9-mika.kahola@intel.com
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 279 +++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  30 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 .../drm/i915/display/intel_display_types.h    |  19 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 5 files changed, 311 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3d86b0f1c36d..022888050a68 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -14,6 +14,7 @@
 #include "intel_panel.h"
 #include "intel_psr.h"
 #include "intel_uncore.h"
+#include "intel_tc.h"
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
@@ -234,6 +235,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	}
 }
 
+static void intel_c20_write(struct drm_i915_private *i915, enum port port,
+			    int lane, u16 addr, u16 data)
+{
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, (addr >> 8) & 0xff, 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, (data >> 8) & 0xff, 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
+}
+
 static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
@@ -1155,7 +1168,7 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock <= tables[i]->clock) {
-			crtc_state->c10mpllb_state = *tables[i];
+			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
 			return 0;
 		}
 	}
@@ -1215,7 +1228,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
-	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
@@ -1299,6 +1312,218 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
 			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
 }
 
+static bool intel_c20_use_mplla(u32 clock)
+{
+	/* 10G and 20G rates use MPLLA */
+	if (clock == 312500 || clock == 625000)
+		return true;
+
+	return false;
+}
+
+static u8 intel_c20_get_dp_rate(u32 clock)
+{
+	switch (clock) {
+	case 162000: /* 1.62 Gbps DP1.4 */
+		return 0;
+	case 270000: /* 2.7 Gbps DP1.4 */
+		return 1;
+	case 540000: /* 5.4 Gbps DP 1.4 */
+		return 2;
+	case 810000: /* 8.1 Gbps DP1.4 */
+		return 3;
+	case 216000: /* 2.16 Gbps eDP */
+		return 4;
+	case 243000: /* 2.43 Gbps eDP */
+		return 5;
+	case 324000: /* 3.24 Gbps eDP */
+		return 6;
+	case 432000: /* 4.32 Gbps eDP */
+		return 7;
+	case 312500: /* 10 Gbps DP2.0 */
+		return 8;
+	case 421875: /* 13.5 Gbps DP2.0 */
+		return 9;
+	case 625000: /* 20 Gbps DP2.0*/
+		return 10;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static u8 intel_c20_get_hdmi_rate(u32 clock)
+{
+	switch (clock) {
+	case 25175:
+	case 27000:
+	case 74250:
+	case 148500:
+	case 594000:
+		return 0;
+	case 166670: /* 3 Gbps */
+	case 333330: /* 6 Gbps */
+	case 666670: /* 12 Gbps */
+		return 1;
+	case 444440: /* 8 Gbps */
+		return 2;
+	case 555560: /* 10 Gbps */
+		return 3;
+	default:
+		MISSING_CASE(clock);
+		return 0;
+	}
+}
+
+static bool is_dp2(u32 clock)
+{
+	/* DP2.0 clock rates */
+	if (clock == 312500 || clock == 421875 || clock  == 625000)
+		return true;
+
+	return false;
+}
+
+static bool is_hdmi_frl(u32 clock)
+{
+	switch (clock) {
+	case 166670: /* 3 Gbps */
+	case 333330: /* 6 Gbps */
+	case 444440: /* 8 Gbps */
+	case 555560: /* 10 Gbps */
+	case 666670: /* 12 Gbps */
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
+
+	/* banks should not be cleared for DPALT/USB4/TBT modes */
+	/* TODO: optimize re-calibration in legacy mode */
+	return intel_tc_port_in_legacy_mode(intel_dig_port);
+}
+
+static void intel_c20_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20pll_state;
+	bool dp = false;
+	int lane_count = crtc_state->lane_count;
+	bool cntx;
+	int i;
+
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		dp = true;
+
+	/* 1. Read current context selection */
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
+		PHY_C20_CONTEXT_TOGGLE;
+
+	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
+	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.
+	 * Protocol switch is only applicable for MPLLA
+	 */
+	if (intel_c20_protocol_switch_valid(encoder)) {
+		for (i = 0; i < 4; i++)
+			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+	}
+
+	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
+	/* 3.1 Tx configuration */
+	for (i = 0; i < 3; i++) {
+		if (cntx)
+			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+		else
+			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+	}
+
+	/* 3.2 common configuration */
+	for (i = 0; i < 4; i++) {
+		if (cntx)
+			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+		else
+			intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+	}
+
+	/* 3.3 mpllb or mplla configuration */
+	if (intel_c20_use_mplla(pll_state->clock)) {
+		for (i = 0; i < 10; i++) {
+			if (cntx)
+				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
+						PHY_C20_A_MPLLA_CNTX_CFG(i),
+						pll_state->mplla[i]);
+			else
+				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
+						PHY_C20_B_MPLLA_CNTX_CFG(i),
+						pll_state->mplla[i]);
+		}
+	} else {
+		for (i = 0; i < 11; i++) {
+			if (cntx)
+				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
+						PHY_C20_A_MPLLB_CNTX_CFG(i),
+						pll_state->mpllb[i]);
+			else
+				intel_c20_write(i915, encoder->port, INTEL_CX0_LANE0,
+						PHY_C20_B_MPLLB_CNTX_CFG(i),
+						pll_state->mpllb[i]);
+		}
+	}
+
+	/* 4. Program custom width to match the link protocol */
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_WIDTH,
+				is_dp2(pll_state->clock) ? 2 : 0,
+				MB_WRITE_COMMITTED);
+		if (lane_count == 4)
+			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_WIDTH,
+					is_dp2(pll_state->clock) ? 2 : 0,
+					MB_WRITE_COMMITTED);
+	} else if (is_hdmi_frl(pll_state->clock)) {
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_WIDTH,
+				1, MB_WRITE_COMMITTED);
+		if (lane_count == 4)
+			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1,
+					PHY_C20_VDR_CUSTOM_WIDTH, 1, MB_WRITE_COMMITTED);
+	} else
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
+				0, MB_WRITE_COMMITTED);
+
+	/* 5. For DP or 6. For HDMI */
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
+				MB_WRITE_COMMITTED);
+		if (lane_count == 4)
+			intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+					BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
+					MB_WRITE_COMMITTED);
+	} else {
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				((is_hdmi_frl(pll_state->clock) ? 1 : 0) << 7),
+				MB_WRITE_COMMITTED);
+
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+				(intel_c20_get_hdmi_rate(pll_state->clock) << 0),
+				MB_WRITE_COMMITTED);
+	}
+
+	/*
+	 * 7. Write Vendor specific registers to toggle context setting to load
+	 * the updated programming toggle context bit
+	 */
+	intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+			cntx ? 0 : 1, MB_WRITE_COMMITTED);
+	if (lane_count == 4)
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_LANE1, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				cntx ? 0 : 1, MB_WRITE_COMMITTED);
+}
+
 int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state)
 {
@@ -1342,7 +1567,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
-	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	if (is_hdmi_frl(crtc_state->port_clock))
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+	else
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_dp = enc_to_intel_dp(encoder);
@@ -1588,8 +1817,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
 		       XELPDP_LANE1_PCLK_PLL_ACK;
 }
 
-static void intel_c10pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -1597,6 +1826,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
@@ -1615,7 +1845,10 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 					    CX0_P2_STATE_READY);
 
 	/* 4. Program PHY internal PLL internal registers. */
-	intel_c10_pll_program(i915, crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		intel_c10_pll_program(i915, crtc_state, encoder);
+	else
+		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
 	 * 5. Program the enabled and disabled owned PHY lane
@@ -1654,31 +1887,21 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	 * 10. Follow the Display Voltage Frequency Switching Sequence After
 	 * Frequency Change. We handle this step in bxt_set_cdclk().
 	 */
-}
-
-void intel_cx0pll_enable(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	intel_wakeref_t wakeref;
-
-	wakeref = intel_cx0_phy_transaction_begin(encoder);
-
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-	intel_c10pll_enable(encoder, crtc_state);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
-static void intel_c10pll_disable(struct intel_encoder *encoder)
+void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool is_c10 = intel_is_c10phy(i915, phy);
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
-					    CX0_P2PG_STATE_DISABLE);
+					    is_c10 ? CX0_P2PG_STATE_DISABLE :
+					    CX0_P4PG_STATE_DISABLE);
 
 	/*
 	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
@@ -1716,18 +1939,6 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
 		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
-}
-
-void intel_cx0pll_disable(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	intel_wakeref_t wakeref;
-
-	wakeref = intel_cx0_phy_transaction_begin(encoder);
-
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-	intel_c10pll_disable(encoder);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
@@ -1737,7 +1948,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
-	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 	struct intel_dp *intel_dp;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index fd48c75ee532..794372f4798d 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -175,4 +175,34 @@
 #define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
 #define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
 
+/* C20 Registers */
+#define PHY_C20_WR_ADDRESS_L		0xC02
+#define PHY_C20_WR_ADDRESS_H		0xC03
+#define PHY_C20_WR_DATA_L		0xC04
+#define PHY_C20_WR_DATA_H		0xC05
+#define PHY_C20_RD_ADDRESS_L		0xC06
+#define PHY_C20_RD_ADDRESS_H		0xC07
+#define PHY_C20_RD_DATA_L		0xC08
+#define PHY_C20_RD_DATA_H		0xC09
+#define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define PHY_C20_VDR_HDMI_RATE		0xD01
+#define  PHY_C20_CONTEXT_TOGGLE		REG_BIT8(0)
+#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
+#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
+#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
+#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+
+#define C20_MPLLB_FRACEN		REG_BIT(13)
+#define C20_MPLLA_FRACEN		REG_BIT(14)
+#define C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
+#define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
+#define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
+
+#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
+
 #endif /* __INTEL_CX0_PHY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e796e5cf10f0..a5fbc4fed28d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3078,6 +3078,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
 
 	intel_tc_port_get_link(enc_to_dig_port(encoder),
 		               required_lanes);
+
+	/* FIXME: Add MTL pll_mgr */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	if (crtc_state && crtc_state->hw.active) {
 		struct intel_crtc *slave_crtc;
 
@@ -3529,9 +3534,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 
 	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
 
-	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
-	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
-	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
+	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
+	intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
+	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
 
 	intel_ddi_get_config(encoder, crtc_state);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index fdd65781ae40..4a69727fbb91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -983,6 +983,23 @@ struct intel_c10mpllb_state {
 	u8 pll[20];
 };
 
+struct intel_c20pll_state {
+	u32 clock; /* in kHz */
+	u16 tx[3];
+	u16 cmn[4];
+	union {
+		u16 mplla[10];
+		u16 mpllb[11];
+	};
+};
+
+struct intel_cx0pll_state {
+	union {
+		struct intel_c10mpllb_state c10mpllb_state;
+		struct intel_c20pll_state c20pll_state;
+	};
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1126,7 +1143,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
-		struct intel_c10mpllb_state c10mpllb_state;
+		struct intel_cx0pll_state cx0pll_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0b08e9b6ea22..9e06bf10ce8d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -53,6 +53,7 @@
 #include "intel_combo_phy_regs.h"
 #include "intel_connector.h"
 #include "intel_crtc.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -422,7 +423,14 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 
 static int mtl_max_source_rate(struct intel_dp *intel_dp)
 {
-	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+
+	if (intel_is_c10phy(i915, phy))
+		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+
+	return 2000000;
 }
 
 static int vbt_max_link_rate(struct intel_dp *intel_dp)
@@ -451,7 +459,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	/* The values must be in increasing order */
 	static const int mtl_rates[] = {
 		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
-		810000,
+		810000,	1000000, 1350000, 2000000,
 	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
-- 
2.34.1

