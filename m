Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B1C6F14CD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF6C310ECA2;
	Fri, 28 Apr 2023 09:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696BA10ECA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675977; x=1714211977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f66R508RRkqXkP1LVqZSORIPLs+7N7CrD1GNsXDqhL4=;
 b=dx2Wp+LhVt+WAyaM7cB/jaL8DyOFab6ywqlAeB+17PYl1mRPPbbGFguk
 Pe2hBBHpR7uC7OuyZDH4J5h6yGynlg5Qp+LkoKzq14f45+dpZluzBgvY4
 aTsBWknXKs55DcHU2lTSxIt5/ogfnxm+Br7eY02n7Mwor1tzz714Pi7w/
 z1GYQXX42GcV9p9A2eX52Nn4wz5gYCCtOMivdZPuBO1WeCykwwQych3Tf
 gaH4baBkoAuNnuQAb0UEpWE5QxSa52Uh/T1+p3HEGAMZyqqyINcyVCEXb
 NXFQyyt9N99ZS5p7d/As9LkDHWGTFiKW4iHLfAkJ5LHzez7xvfnrDTd2l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698110"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698110"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295720"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295720"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:33 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:21 +0300
Message-Id: <20230428095433.4109054-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915/mtl: C20 PLL programming
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

v2: Add 6.48Gbps and 6.75Gbps modes for eDP (RK)
    Fix lane check (RK)
    Fix multiline commenting (Arun)
    use usleep_range() instead of msleep() (Andi)

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 288 +++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  33 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 .../drm/i915/display/intel_display_types.h    |  15 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 5 files changed, 309 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 83180074b512..71163bc5bbf5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -273,6 +273,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
 		__intel_cx0_write(i915, port, lane, addr, data, committed);
 }
 
+static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
+				 int lane, u16 addr, u16 data)
+{
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, data >> 8, 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
+}
+
 static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
@@ -1415,6 +1427,215 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
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
+	case 648000: /* 6.48 Gbps eDP*/
+		return 11;
+	case 675000: /* 6.75 Gbps eDP*/
+		return 12;
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
+static int intel_get_c20_custom_width(u32 clock, bool dp)
+{
+	if (dp && is_dp2(clock))
+		return 2;
+	else if (is_hdmi_frl(clock))
+		return 1;
+	else
+		return 0;
+}
+
+static void intel_c20_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
+{
+	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
+	bool dp = false;
+	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
+	bool cntx;
+	int i;
+
+	if (intel_crtc_has_dp_encoder(crtc_state))
+		dp = true;
+
+	/* 1. Read current context selection */
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
+
+	/*
+	 * 2. If there is a protocol switch from HDMI to DP or vice versa, clear
+	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.
+	 * Protocol switch is only applicable for MPLLA
+	 */
+	if (intel_c20_protocol_switch_valid(encoder)) {
+		for (i = 0; i < 4; i++)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+		usleep_range(4000, 4100);
+	}
+
+	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
+	/* 3.1 Tx configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+	}
+
+	/* 3.2 common configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+	}
+
+	/* 3.3 mpllb or mplla configuration */
+	if (intel_c20_use_mplla(pll_state->clock)) {
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+			if (cntx)
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_A_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
+			else
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_B_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
+		}
+	} else {
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+			if (cntx)
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_A_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
+			else
+				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
+						     PHY_C20_B_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
+		}
+	}
+
+	/* 4. Program custom width to match the link protocol */
+	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
+		      PHY_C20_CUSTOM_WIDTH_MASK,
+		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(pll_state->clock, dp)),
+		      MB_WRITE_COMMITTED);
+
+	/* 5. For DP or 6. For HDMI */
+	if (dp) {
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
+			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(pll_state->clock)),
+			      MB_WRITE_COMMITTED);
+	} else {
+		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
+			      is_hdmi_frl(pll_state->clock) ? BIT(7) : 0,
+			      MB_WRITE_COMMITTED);
+
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+				intel_c20_get_hdmi_rate(pll_state->clock),
+				MB_WRITE_COMMITTED);
+	}
+
+	/*
+	 * 7. Write Vendor specific registers to toggle context setting to load
+	 * the updated programming toggle context bit
+	 */
+	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
+}
+
 int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_c10pll_state *pll_state)
 {
@@ -1456,7 +1677,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
-	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	if (is_hdmi_frl(crtc_state->port_clock))
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+	else
+		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	/* TODO: HDMI FRL */
 	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
@@ -1612,7 +1837,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
 			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
 }
 
-static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
+static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
 				       struct intel_encoder *encoder, int lane_count,
 				       bool lane_reversal)
 {
@@ -1620,9 +1845,11 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
 	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
 	enum port port = encoder->port;
 
-	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
-		      MB_WRITE_COMMITTED);
+	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
+		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
+			      PHY_C10_VDR_CONTROL(1), 0,
+			      C10_VDR_CTRL_MSGBUS_ACCESS,
+			      MB_WRITE_COMMITTED);
 
 	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
 	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
@@ -1685,9 +1912,11 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
 	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
 			l1t2, MB_WRITE_COMMITTED);
 
-	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
-		      0, C10_VDR_CTRL_UPDATE_CFG,
-		      MB_WRITE_COMMITTED);
+	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
+		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
+			      PHY_C10_VDR_CONTROL(1), 0,
+			      C10_VDR_CTRL_UPDATE_CFG,
+			      MB_WRITE_COMMITTED);
 }
 
 static u32 intel_cx0_get_pclk_pll_request(u8 lane_mask)
@@ -1712,8 +1941,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 	return val;
 }
 
-static void intel_c10pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -1721,6 +1950,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
@@ -1739,13 +1969,16 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 					    CX0_P2_STATE_READY);
 
 	/* 4. Program PHY internal PLL internal registers. */
-	intel_c10_pll_program(i915, crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		intel_c10_pll_program(i915, crtc_state, encoder);
+	else
+		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
 	 * 5. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
-	intel_c10_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
+	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
 
 	/*
 	 * 6. Follow the Display Voltage Frequency Switching - Sequence
@@ -1779,32 +2012,22 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
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
 
 	/* TODO: enable TBT-ALT mode */
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
@@ -1842,18 +2065,7 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
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
 
-	wakeref = intel_cx0_phy_transaction_begin(encoder);
-
-	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
-	intel_c10pll_disable(encoder);
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 20024622d0eb..3aa334b15eaf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -177,4 +177,37 @@
 #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
 #define   CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
 
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
+#define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
+#define   PHY_C20_CUSTOM_SERDES_MASK	REG_GENMASK8(4, 1)
+#define   PHY_C20_CUSTOM_SERDES(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_SERDES_MASK, val)
+#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
+#define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
+#define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
+#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
+#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
+#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+#define   C20_MPLLA_FRACEN		REG_BIT(14)
+#define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
+#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+#define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
+#define   C20_MPLLB_FRACEN		REG_BIT(13)
+#define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
+
+#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
+
 #endif /* __INTEL_CX0_REG_DEFS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 29e4bfab4635..f445f2613adb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3359,7 +3359,8 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
 	struct intel_crtc *slave_crtc;
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
 
-	if (!intel_phy_is_tc(i915, phy))
+	/* FIXME: Add MTL pll_mgr */
+	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
 		return;
 
 	intel_update_active_dpll(state, crtc, encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35c260bd1461..99b187f2f4ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -996,8 +996,21 @@ struct intel_c10pll_state {
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
 struct intel_cx0pll_state {
-	struct intel_c10pll_state c10;
+	union {
+		struct intel_c10pll_state c10;
+		struct intel_c20pll_state c20;
+	};
 	bool ssc_enabled;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d28a2560ae0..4361c1ac65c3 100644
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
@@ -423,7 +424,14 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 
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
@@ -452,7 +460,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
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

