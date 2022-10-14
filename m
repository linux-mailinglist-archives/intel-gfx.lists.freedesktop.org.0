Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF15FEE3A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF59E10E37E;
	Fri, 14 Oct 2022 12:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5579410EADB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751926; x=1697287926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=k4pZliQjtLiOgY0lX+6Bcu+48T8WxoyYZ48gBRASkVM=;
 b=Ty1xlqdTFtvAnMMmxgwsXkmGGqipBC5MdyMNF1EIr4cLozTRO1BDEOS9
 O2TJr0J5tOccWBqHhxfQj+o2TsGwy9+8lAlw5A0ao9sgTglE+3dLQYulo
 1yg711qUe/lIa2fZinAQCAljRFT/6Ccw0okK9dfV2lEO3IdnyD+NklJY2
 bntkvaixkeWpxFANCA0Aa+YgIswuWHkKAmxW0zgNdHgLJd7bfj6oTnhtK
 SSZpEncubXskHWpd16iBHzqgBwxm3PC/7/b30vDAGYp9Zo4a4iPYkNthE
 c2IM3trUhs0mcTMsxCrfRQ+ZDSxRs0JdBKaumKWAYon1ctvy/0cY+3h1V Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104646"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104646"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739745"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739745"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:04 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:28 +0300
Message-Id: <20221014124740.774835-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/20] drm/i915/mtl: C20 PLL programming
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

C20 phy PLL programming sequence for DP, DP2.0, HDMI2.x non-FRL and
HDMI2.x FRL. This enables C20 MPLLA and MPLLB programming sequence. add
4 lane support for c20.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 279 +++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_reg_defs.h |  30 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 .../drm/i915/display/intel_display_types.h    |  19 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 5 files changed, 311 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ef874986940d..02701f9418e6 100644
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
@@ -765,7 +778,7 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock <= tables[i]->clock) {
-			crtc_state->c10mpllb_state = *tables[i];
+			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
 			return 0;
 		}
 	}
@@ -825,7 +838,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
-	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
@@ -907,6 +920,218 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
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
+	cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
+		PHY_C20_CONTEXT_TOGGLE;
+
+	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
+	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.
+	 * Protocol switch is only applicable for MPLLA
+	 */
+	if (intel_c20_protocol_switch_valid(encoder)) {
+		for (i = 0; i < 4; i++)
+			intel_c20_write(i915, encoder->port, 0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+	}
+
+	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
+	/* 3.1 Tx configuration */
+	for (i = 0; i < 3; i++) {
+		if (cntx)
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+		else
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+	}
+
+	/* 3.2 common configuration */
+	for (i = 0; i < 4; i++) {
+		if (cntx)
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+		else
+			intel_c20_write(i915, encoder->port, 0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+	}
+
+	/* 3.3 mpllb or mplla configuration */
+	if (intel_c20_use_mplla(pll_state->clock)) {
+		for (i = 0; i < 10; i++) {
+			if (cntx)
+				intel_c20_write(i915, encoder->port, 0,
+						PHY_C20_A_MPLLA_CNTX_CFG(i),
+						pll_state->mplla[i]);
+			else
+				intel_c20_write(i915, encoder->port, 0,
+						PHY_C20_B_MPLLA_CNTX_CFG(i),
+						pll_state->mplla[i]);
+		}
+	} else {
+		for (i = 0; i < 11; i++) {
+			if (cntx)
+				intel_c20_write(i915, encoder->port, 0,
+						PHY_C20_A_MPLLB_CNTX_CFG(i),
+						pll_state->mpllb[i]);
+			else
+				intel_c20_write(i915, encoder->port, 0,
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
@@ -945,7 +1170,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
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
@@ -1175,8 +1404,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
 		       XELPDP_LANE1_PCLK_REFCLK_REQUEST;
 }
 
-static void intel_c10pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -1184,6 +1413,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
@@ -1202,7 +1432,10 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 					    CX0_P2_STATE_READY);
 
 	/* 4. Program PHY internal PLL internal registers. */
-	intel_c10_pll_program(i915, crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		intel_c10_pll_program(i915, crtc_state, encoder);
+	else
+		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
 	 * 5. Program the enabled and disabled owned PHY lane
@@ -1241,31 +1474,21 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
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
@@ -1303,18 +1526,6 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
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
@@ -1324,7 +1535,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
-	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 	struct intel_dp *intel_dp;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
index fad6308bbf77..b3912d15a823 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_reg_defs.h
@@ -170,4 +170,34 @@
 #define C10_PHY_VSWING_PREEMPH_MASK             REG_GENMASK8(1, 0)
 #define C10_PHY_VSWING_PREEMPH(val)             REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
 
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
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1380ed2221ad..7d57cbf7e686 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3038,6 +3038,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
 
 	intel_tc_port_get_link(enc_to_dig_port(encoder),
 		               required_lanes);
+
+	/* FIXME: Add MTL pll_mgr */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	if (crtc_state && crtc_state->hw.active) {
 		struct intel_crtc *slave_crtc;
 
@@ -3496,9 +3501,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 
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
index be6ff6cdfb0b..641aa546c25f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -974,6 +974,23 @@ struct intel_c10mpllb_state {
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
@@ -1113,7 +1130,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
-		struct intel_c10mpllb_state c10mpllb_state;
+		struct intel_cx0pll_state cx0pll_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0c96444776c4..adaf0ee6cf27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -52,6 +52,7 @@
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

