Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D747C5EF651
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 15:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B015A10EA50;
	Thu, 29 Sep 2022 13:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C008110EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 13:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664457734; x=1695993734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kSCnLTd7imhC82Mis8YD8U7UZhUZdVHKHBAiFqiUw88=;
 b=N8WtyAfVlW0uCNak57k2peLpCDbZG72HArT1oVI2SMSOztn+iWS+d0Sr
 CIuqxpYoEz6IbkKTRMzgCGqEGZk77+bOvYDKwGmKdwSMsi8lDGwdJB/go
 V4C2sNlZCheQu2RzbroWkBI+qtFIZX6hxPifDJ4TNNqKoJbXJSU4qQZbE
 2fFSyLdO24zYJ0fETAHsDcICK8p5mUBfWhCNG6TH8n2LNpkK49k6ny/m+
 Hll5udO4G+sUui/CEkDMhW/vZXN/Rr8IYOEzUsSn1bGJSWf3LAQzeaGte
 OOqBBLskL8FdLgMBWCHYL1iKm4NCNHvOz+EgQHqVzeJ0bYhYcT3wSiQQo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="365934668"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="365934668"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 06:22:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="655550460"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="655550460"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 29 Sep 2022 06:22:12 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 16:17:45 +0300
Message-Id: <20220929131747.2592092-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220929131747.2592092-1-mika.kahola@intel.com>
References: <20220929131747.2592092-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/mtl: Add support for C10 phy
 programming
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

Add sequences for C10 phy enable/disable phy lane reset,
powerdown change sequence and phy lane programming.

Bspec: 64539, 67636, 65451, 65450, 64568

Cc: Imre Deak <imre.deak@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com> (v9)
---
 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 352 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  17 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c      |  15 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    |   2 +
 drivers/gpu/drm/i915/i915_reg.h              | 141 ++++++++
 7 files changed, 526 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a26edcdadc21..994f87a12782 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -279,6 +279,7 @@ i915-y += \
 	display/icl_dsi.o \
 	display/intel_backlight.o \
 	display/intel_crt.o \
+	display/intel_cx0_phy.o \
 	display/intel_ddi.o \
 	display/intel_ddi_buf_trans.o \
 	display/intel_display_trace.o \
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2f401116d1d0..6ba11cd7cd75 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -526,9 +526,9 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 			 tx0, cmn, phy_name(phy));
 }
 
-__maybe_unused static void intel_c10_pll_program(struct drm_i915_private *i915,
-						 const struct intel_crtc_state *crtc_state,
-						 struct intel_encoder *encoder)
+static void intel_c10_pll_program(struct drm_i915_private *i915,
+				  const struct intel_crtc_state *crtc_state,
+				  struct intel_encoder *encoder)
 {
 	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -633,6 +633,352 @@ int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				     10 << (tx_clk_div + 16));
 }
 
+#define PHY_LANES_VAL_ARG(FIELD, lanes, arg)	({u32 __val; switch(lanes) {\
+						  case INTEL_CX0_BOTH_LANES:	\
+							__val = ((XELPDP_LANE0_##FIELD(arg)) |\
+							        (XELPDP_LANE1_##FIELD(arg))); \
+							break;				\
+						  case INTEL_CX0_LANE0:         \
+							__val = (XELPDP_LANE0_##FIELD(arg));\
+							break;				\
+						  case INTEL_CX0_LANE1:         \
+							__val = (XELPDP_LANE1_##FIELD(arg));\
+							break;  \
+						 }; __val; })
+
+#define PHY_LANES_VAL(FIELD, lanes)	({u32 __val; switch(lanes) {\
+						  case INTEL_CX0_BOTH_LANES:	\
+							__val = (XELPDP_LANE0_##FIELD | \
+							        XELPDP_LANE1_##FIELD); \
+							break;				\
+						  case INTEL_CX0_LANE0:         \
+							__val = (XELPDP_LANE0_##FIELD);	     \
+							break;				\
+						  case INTEL_CX0_LANE1:         \
+							__val = (XELPDP_LANE1_##FIELD);\
+							break;  \
+						 }; __val; })
+
+static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
+					 const struct intel_crtc_state *crtc_state,
+					 bool lane_reversal)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp;
+	bool ssc_enabled;
+	u32 val = 0;
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
+		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
+
+	if (lane_reversal)
+		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
+
+	val |= XELPDP_FORWARD_CLOCK_UNGATE;
+	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+
+	if (intel_crtc_has_dp_encoder(crtc_state)) {
+		intel_dp = enc_to_intel_dp(encoder);
+		ssc_enabled = intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
+			      DP_MAX_DOWNSPREAD_0_5;
+
+		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
+		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+	}
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_LANE1_PHY_CLOCK_SELECT |
+		     XELPDP_FORWARD_CLOCK_UNGATE |
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_SSC_ENABLE_PLLB, val);
+}
+
+static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
+						enum port port,
+						enum intel_cx0_lanes lane, u8 state)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     PHY_LANES_VAL(POWERDOWN_NEW_STATE_MASK, lane),
+		     PHY_LANES_VAL_ARG(POWERDOWN_NEW_STATE, lane, state));
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     PHY_LANES_VAL(POWERDOWN_UPDATE, lane),
+		     PHY_LANES_VAL(POWERDOWN_UPDATE, lane));
+
+	/* Update Timeout Value */
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL2(port),
+				      PHY_LANES_VAL(POWERDOWN_UPDATE, lane), 0,
+				      XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+}
+
+static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
+{
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     XELPDP_POWER_STATE_READY_MASK,
+		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
+		     XELPDP_POWER_STATE_ACTIVE_MASK |
+		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
+		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
+		     XELPDP_PLL_LANE_STAGGERING_DELAY(0));
+}
+
+/* FIXME: Some Type-C cases need not reset both the lanes. Handle those cases. */
+static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port port,
+				     bool lane_reversal)
+{
+	enum phy phy = intel_port_to_phy(i915, port);
+	enum intel_cx0_lanes lane = lane_reversal ? INTEL_CX0_LANE1 :
+				    INTEL_CX0_LANE0;
+
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL1(port),
+				      XELPDP_PORT_BUF_SOC_PHY_READY,
+				      XELPDP_PORT_BUF_SOC_PHY_READY,
+				      XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     PHY_LANES_VAL(PIPE_RESET, INTEL_CX0_BOTH_LANES),
+		     PHY_LANES_VAL(PIPE_RESET, INTEL_CX0_BOTH_LANES));
+
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_BUF_CTL2(port),
+				      PHY_LANES_VAL(PHY_CURRENT_STATUS, INTEL_CX0_BOTH_LANES),
+				      PHY_LANES_VAL(PHY_CURRENT_STATUS, INTEL_CX0_BOTH_LANES),
+				      XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
+
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
+		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, lane),
+		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, lane));
+
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(port),
+				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane),
+				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane),
+				      XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
+			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
+
+	intel_cx0_powerdown_change_sequence(i915, port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2_STATE_RESET);
+	intel_cx0_setup_powerdown(i915, port);
+
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
+		     PHY_LANES_VAL(PIPE_RESET, INTEL_CX0_BOTH_LANES), 0);
+
+	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port),
+				    PHY_LANES_VAL(PHY_CURRENT_STATUS,
+						  INTEL_CX0_BOTH_LANES),
+				    XELPDP_PORT_RESET_END_TIMEOUT))
+		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
+			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
+}
+
+static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
+				       enum port port, int lane_count,
+				       bool lane_reversal)
+{
+	u8 l0t1, l0t2, l1t1, l1t2;
+
+	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
+		      MB_WRITE_COMMITTED);
+
+	l0t1 = intel_cx0_read(i915, port, 0, PHY_CX0_TX_CONTROL(1, 2));
+	l0t2 = intel_cx0_read(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2));
+	l1t1 = intel_cx0_read(i915, port, 1, PHY_CX0_TX_CONTROL(1, 2));
+	l1t2 = intel_cx0_read(i915, port, 1, PHY_CX0_TX_CONTROL(2, 2));
+
+	if (lane_reversal) {
+		switch (lane_count) {
+		case 1:
+			/* Disable MLs 1(lane0), 2(lane0), 3(lane1) */
+			intel_cx0_write(i915, port, 1, PHY_CX0_TX_CONTROL(1, 2),
+					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 2:
+			/* Disable MLs 1(lane0), 2(lane0) */
+			intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2),
+					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 3:
+			/* Disable MLs 1(lane0) */
+			intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(1, 2),
+					l0t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			break;
+		}
+	} else {
+		switch (lane_count) {
+		case 1:
+			/* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
+			intel_cx0_write(i915, port, 0, PHY_CX0_TX_CONTROL(2, 2),
+					l0t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 2:
+			/* Disable MLs 3(lane1), 4(lane1) */
+			intel_cx0_write(i915, port, 1, PHY_CX0_TX_CONTROL(1, 2),
+					l1t1 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			fallthrough;
+		case 3:
+			/* Disable MLs 4(lane1) */
+			intel_cx0_write(i915, port, 1, PHY_CX0_TX_CONTROL(2, 2),
+					l1t2 | CONTROL2_DISABLE_SINGLE_TX,
+					MB_WRITE_COMMITTED);
+			break;
+		}
+	}
+
+	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
+		      C10_VDR_CTRL_UPDATE_CFG, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
+}
+
+static void intel_c10pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	enum intel_cx0_lanes maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
+				    INTEL_CX0_LANE0;
+
+	/*
+	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
+	 * clock muxes, gating and SSC
+	 */
+	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+
+	/* 2. Bring PHY out of reset. */
+	intel_cx0_phy_lane_reset(i915, encoder->port, lane_reversal);
+
+	/*
+	 * 3. Change Phy power state to Ready.
+	 * TODO: For DP alt mode use only one lane.
+	 */
+	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2_STATE_READY);
+
+	/* 4. Program PHY internal PLL internal registers. */
+	intel_c10_pll_program(i915, crtc_state, encoder);
+
+	/*
+	 * 5. Program the enabled and disabled owned PHY lane
+	 * transmitters over message bus
+	 */
+	intel_c10_program_phy_lane(i915, encoder->port, crtc_state->lane_count, lane_reversal);
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching - Sequence
+	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
+	 * clock frequency.
+	 */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
+		       crtc_state->port_clock);
+	/*
+	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
+	 * LN<Lane for maxPCLK> to "1" to enable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), 0,
+		     PHY_LANES_VAL(PCLK_PLL_REQUEST, maxpclk_lane));
+
+	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      PHY_LANES_VAL(PCLK_PLL_ACK, maxpclk_lane),
+				      PHY_LANES_VAL(PCLK_PLL_ACK, maxpclk_lane),
+				      XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
+			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
+
+	/*
+	 * 10. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+}
+
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+	intel_c10pll_enable(encoder, crtc_state);
+}
+
+static void intel_c10pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
+	enum intel_cx0_lanes lane = lane_reversal ? INTEL_CX0_LANE1 :
+				    INTEL_CX0_LANE0;
+
+	/* 1. Change owned PHY lane power to Disable state. */
+	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
+					    CX0_P2PG_STATE_DISABLE);
+
+	/*
+	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/*
+	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
+	 * to "0" to disable PLL.
+	 */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     PHY_LANES_VAL(PCLK_PLL_REQUEST, INTEL_CX0_BOTH_LANES) |
+		     PHY_LANES_VAL(PCLK_REFCLK_REQUEST, INTEL_CX0_BOTH_LANES), 0);
+
+	/* 4. Program DDI_CLK_VALFREQ to 0. */
+	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
+
+	/*
+	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
+	 */
+	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
+				      PHY_LANES_VAL(PCLK_PLL_ACK, lane) |
+				      PHY_LANES_VAL(PCLK_REFCLK_ACK, lane), 0,
+				      XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
+		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
+			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
+
+	/*
+	 * 6. Follow the Display Voltage Frequency Switching Sequence After
+	 * Frequency Change. We handle this step in bxt_set_cdclk().
+	 */
+
+	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
+	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
+		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
+}
+
+void intel_cx0pll_disable(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
+	intel_c10pll_disable(encoder);
+}
+
+#undef PHY_LANES_VAL_ARG
+#undef PHY_LANES_VAL
+
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
 				 struct intel_crtc_state *new_crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index cf1f300b6a7b..d12d2e2f02ee 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -106,6 +106,19 @@ enum intel_cx0_lanes {
 #define  C10_VDR_CTRL_UPDATE_CFG	REG_BIT8(0)
 #define PHY_C10_VDR_CUSTOM_WIDTH	0xD02
 
+#define CX0_P0_STATE_ACTIVE		0x0
+#define CX0_P2_STATE_READY		0x2
+#define CX0_P2PG_STATE_DISABLE		0x9
+#define CX0_P4PG_STATE_DISABLE		0xC
+#define CX0_P2_STATE_RESET		0x2
+
+/* PHY_C10_VDR_PLL0 */
+#define PLL_C10_MPLL_SSC_EN		REG_BIT8(0)
+
+/* PIPE SPEC Defined Registers */
+#define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
+#define CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
+
 static inline bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (!IS_METEORLAKE(dev_priv))
@@ -114,6 +127,10 @@ static inline bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy p
 		return (phy < PHY_C);
 }
 
+void intel_cx0pll_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state);
+void intel_cx0pll_disable(struct intel_encoder *encoder);
+
 void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
 				     struct intel_c10mpllb_state *pll_state);
 int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index aaa8846c3b18..639ec604babf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4384,6 +4384,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->pipe_mask = ~0;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
+		encoder->enable_clock = intel_cx0pll_enable;
+		encoder->disable_clock = intel_cx0pll_disable;
 		encoder->get_config = mtl_ddi_get_config;
 	} else if (IS_DG2(dev_priv)) {
 		encoder->enable_clock = intel_mpllb_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 70b06806ec0d..db32799b5f46 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -420,6 +420,11 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
 	return 810000;
 }
 
+static int mtl_max_source_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
+}
+
 static int vbt_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
@@ -444,6 +449,10 @@ static void
 intel_dp_set_source_rates(struct intel_dp *intel_dp)
 {
 	/* The values must be in increasing order */
+	static const int mtl_rates[] = {
+		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
+		810000,
+	};
 	static const int icl_rates[] = {
 		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
 		1000000, 1350000,
@@ -469,7 +478,11 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
 	drm_WARN_ON(&dev_priv->drm,
 		    intel_dp->source_rates || intel_dp->num_source_rates);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		source_rates = mtl_rates;
+		size = ARRAY_SIZE(mtl_rates);
+		max_rate = mtl_max_source_rate(intel_dp);
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		source_rates = icl_rates;
 		size = ARRAY_SIZE(icl_rates);
 		if (IS_DG2(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 73f541050913..d6fcdf4eba0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1533,6 +1533,8 @@ intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 14)
 		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
+	else if (DISPLAY_VER(dev_priv) >= 14)
+		dev_priv->display.funcs.dpll = &mtl_dpll_funcs;
 	else if (IS_DG2(dev_priv))
 		dev_priv->display.funcs.dpll = &dg2_dpll_funcs;
 	else if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5003a5ffbc6a..5e6ff9f2aa10 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2121,6 +2121,11 @@
 #define   TRANS_PUSH_EN			REG_BIT(31)
 #define   TRANS_PUSH_SEND		REG_BIT(30)
 
+/* DDI Buffer Control */
+#define _DDI_CLK_VALFREQ_A		0x64030
+#define _DDI_CLK_VALFREQ_B		0x64130
+#define DDI_CLK_VALFREQ(port)		_MMIO_PORT(port, _DDI_CLK_VALFREQ_A, _DDI_CLK_VALFREQ_B)
+
 /*
  * HSW+ eDP PSR registers
  *
@@ -8375,4 +8380,140 @@ enum skl_power_gate {
 
 #define MTL_MEDIA_GSI_BASE		0x380000
 
+#define PUNIT_MMIO_CR_POC_STRAPS	_MMIO(0x281078)
+#define   NUM_TILES_MASK		REG_GENMASK(1, 0)
+#define   CD_ALIVE			REG_BIT(2)
+#define   SOCKET_ID_MASK		REG_GENMASK(7, 3)
+
+/* Define the BAR and offset for the accelerator fabric CSRs */
+#define CD_BASE_OFFSET 0x291000
+#define CD_BAR_SIZE (256 * 1024)
+
+/*
+ * In general, the i915 should not touch the IAF registers.  The registers
+ * will be passed as an IO resource via the MFD interface.  However, it
+ * is necessary to put the IRQ bits in a known state, before the MFD cell
+ * is registered.
+ *
+ * So define these registers for i915 usage.
+ */
+#define CPORT_MBDB_CSRS (CD_BASE_OFFSET + 0x6000)
+#define CPORT_MBDB_CSRS_END (CPORT_MBDB_CSRS + 0x1000)
+#define CPORT_MBDB_INT_ENABLE_MASK _MMIO(CPORT_MBDB_CSRS + 0x8)
+
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3		0x16F640
+#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4		0x16F840
+#define _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))
+
+#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
+#define  XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
+#define  XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
+#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
+#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
+#define  XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
+#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
+#define  XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
+#define  XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
+#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
+
+#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
+#define  XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
+#define  XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
+#define  XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
+#define  XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
+#define  XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
+#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
+#define  XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
+
+#define  XELPDP_MSGBUS_TIMEOUT_SLOW			1
+#define  XELPDP_MSGBUS_TIMEOUT_FAST_US			2
+#define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
+#define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
+#define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
+#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
+#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
+
+#define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
+#define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC3			0x16F600
+#define _XELPDP_PORT_BUF_CTL1_LN0_USBC4			0x16F800
+#define _XELPDP_PORT_BUF_CTL1(port)			(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_BUF_CTL1_LN0_A, \
+							[PORT_B] = _XELPDP_PORT_BUF_CTL1_LN0_B, \
+							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))
+
+#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port))
+#define  XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
+#define  XELPDP_PORT_REVERSAL				REG_BIT(16)
+#define  XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
+#define  XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
+#define  XELPDP_LANE0_PIPE_RESET			REG_BIT(31)
+#define  XELPDP_LANE1_PIPE_RESET			REG_BIT(30)
+#define  XELPDP_LANE0_PHY_CURRENT_STATUS		REG_BIT(29)
+#define  XELPDP_LANE1_PHY_CURRENT_STATUS		REG_BIT(28)
+#define  XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
+#define  XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
+#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
+#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
+#define  XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
+#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
+
+#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
+#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
+#define  XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
+#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
+
+#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
+#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
+#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
+#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
+#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
+#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860
+#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK(port, \
+							[PORT_A] = _XELPDP_PORT_CLOCK_CTL_A, \
+							[PORT_B] = _XELPDP_PORT_CLOCK_CTL_B, \
+							[PORT_TC1] = _XELPDP_PORT_CLOCK_CTL_USBC1, \
+							[PORT_TC2] = _XELPDP_PORT_CLOCK_CTL_USBC2, \
+							[PORT_TC3] = _XELPDP_PORT_CLOCK_CTL_USBC3, \
+							[PORT_TC4] = _XELPDP_PORT_CLOCK_CTL_USBC4))
+
+#define XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
+#define XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
+#define XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
+#define XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
+#define XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
+#define XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
+#define XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
+#define XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
+#define XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
+#define XELPDP_DDI_CLOCK_SELECT_NONE			0x0
+#define XELPDP_DDI_CLOCK_SELECT_MAXPCLK			0x8
+#define XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
+#define XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
+#define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
+#define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
+
 #endif /* _I915_REG_H_ */
-- 
2.34.1

