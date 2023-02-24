Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1176A19DA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49E0910E88D;
	Fri, 24 Feb 2023 10:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D6710E878
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233962; x=1708769962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hfmEtQvqEsir5HJyDufYHGIQfhcEzgWv3iokJ97zoYQ=;
 b=T/FaiE8truhvbws9RCPNRMrpkufRs1gWE2Ei0O0SsGrvXMHlsC2cPJzh
 JcjHMM1BgRlGhzNyu9pl4D6jRJjYJbYTfYX66+Wfh/IDsCOdHA71bQllE
 ziT/qxD2rHzwewNMFyb6j4mxpN5hu1Ca261//qxS1aT7U7fi9mRsXrx/w
 WgaXnuUba9vBTURSGq3ch5ezzeAdwrt4/kvKNYOHqSVfXYuCPPy08J73r
 eDDcoIiUcjK+nRMcQOJFlBKGPALF31UO3n1gLDdVnD/XKZ++f3IIIB4ep
 swRUJ/bKqqku8rqQoDk0H6BuWiv2U+ldBNNi2GekbZkLJjSun63BCdJ5P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129865"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129865"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846570"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846570"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:19 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:42 +0200
Message-Id: <20230224101356.2390838-9-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 08/22] drm/i915/mtl: C20 PLL programming
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

v2: Rename intel_c20_write() to intel_c20_sram_write() (Gustavo)
    Remove unnecessary bit masks (Gustavo)
    Fix comments on C20 pll programming (Gustavo)
    Clear calibration banks for both lanes (Gustavo)

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 266 +++++++++++++++---
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  30 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 .../drm/i915/display/intel_display_types.h    |  19 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
 5 files changed, 298 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 3d61afbe7bdb..730c70f82822 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -15,6 +15,7 @@
 #include "intel_tc.h"
 #include "intel_psr.h"
 #include "intel_uncore.h"
+#include "intel_tc.h"
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
@@ -235,6 +236,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	}
 }
 
+static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
+				 int lane, u16 addr, u16 data)
+{
+	assert_dc_off(i915);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, (addr >> 8), 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
+
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, (data >> 8), 0);
+	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
+}
+
 static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
 			    int lane, u16 addr, u8 clear, u8 set, bool committed)
 {
@@ -1157,7 +1170,7 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
 
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock <= tables[i]->clock) {
-			crtc_state->c10mpllb_state = *tables[i];
+			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
 			return 0;
 		}
 	}
@@ -1217,7 +1230,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
 				  const struct intel_crtc_state *crtc_state,
 				  struct intel_encoder *encoder)
 {
-	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
+	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
@@ -1301,6 +1314,205 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
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
+	int lanes = lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
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
+	 * the lane #0 MPLLB CAL_DONE_BANK.
+	 * Protocol switch is only applicable for MPLLB
+	 */
+	if (intel_c20_protocol_switch_valid(encoder)) {
+		for (i = 0; i < 4; i++)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
+	}
+
+	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
+	/* 3.1 Tx configuration */
+	for (i = 0; i < 3; i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+	}
+
+	/* 3.2 common configuration */
+	for (i = 0; i < 4; i++) {
+		if (cntx)
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+		else
+			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+	}
+
+	/* 3.3 mpllb or mplla configuration */
+	if (intel_c20_use_mplla(pll_state->clock)) {
+		for (i = 0; i < 10; i++) {
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
+		for (i = 0; i < 11; i++) {
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
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
+				is_dp2(pll_state->clock) ? 2 : 0,
+				MB_WRITE_COMMITTED);
+	} else if (is_hdmi_frl(pll_state->clock)) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
+				1, MB_WRITE_COMMITTED);
+	} else
+		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
+				0, MB_WRITE_COMMITTED);
+
+	/* 5. For DP or 6. For HDMI */
+	if (dp) {
+		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+				BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
+				MB_WRITE_COMMITTED);
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
+	intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
+			cntx ? 0 : 1, MB_WRITE_COMMITTED);
+}
+
 int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state)
 {
@@ -1344,7 +1556,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
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
@@ -1599,8 +1815,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
 		       XELPDP_LANE1_PCLK_PLL_ACK;
 }
 
-static void intel_c10pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_port_to_phy(i915, encoder->port);
@@ -1608,6 +1824,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
+	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
@@ -1626,7 +1843,10 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
 					    CX0_P2_STATE_READY);
 
 	/* 4. Program PHY internal PLL internal registers. */
-	intel_c10_pll_program(i915, crtc_state, encoder);
+	if (intel_is_c10phy(i915, phy))
+		intel_c10_pll_program(i915, crtc_state, encoder);
+	else
+		intel_c20_pll_program(i915, crtc_state, encoder);
 
 	/*
 	 * 5. Program the enabled and disabled owned PHY lane
@@ -1665,31 +1885,21 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
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
@@ -1727,18 +1937,6 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
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
@@ -1748,7 +1946,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
-	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
+	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
 	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
 	struct intel_encoder *encoder;
 	struct intel_dp *intel_dp;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 9bf7408fb363..a17da2d7298e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -183,4 +183,34 @@
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
index 60c38bc77683..13696f08e75e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3064,6 +3064,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
 
 	intel_tc_port_get_link(enc_to_dig_port(encoder),
 		               required_lanes);
+
+	/* FIXME: Add MTL pll_mgr */
+	if (DISPLAY_VER(i915) >= 14)
+		return;
+
 	if (crtc_state && crtc_state->hw.active) {
 		struct intel_crtc *slave_crtc;
 
@@ -3514,9 +3519,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 
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
index 5dd11d3da2e4..46b98fd4f92d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -984,6 +984,23 @@ struct intel_c10mpllb_state {
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
@@ -1127,7 +1144,7 @@ struct intel_crtc_state {
 	union {
 		struct intel_dpll_hw_state dpll_hw_state;
 		struct intel_mpllb_state mpllb_state;
-		struct intel_c10mpllb_state c10mpllb_state;
+		struct intel_cx0pll_state cx0pll_state;
 	};
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3849375bd459..0c12f89be417 100644
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

