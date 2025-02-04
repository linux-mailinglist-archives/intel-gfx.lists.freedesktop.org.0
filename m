Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D621A26FC9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:06:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E42210E5F0;
	Tue,  4 Feb 2025 11:06:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XT8WEI6I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2B510E31C;
 Tue,  4 Feb 2025 11:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738667055; x=1770203055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vcZeM1FFB0tIBhtob7sLwkxTAYfVST1wzcU8tsoa/jw=;
 b=XT8WEI6I3EFS+KnBFvfuJgHcHXtvbRHAytH6P6xqOLlyatRcDbVDSaM+
 H/MGwzU0Rx+Mso6Se+h6cdEjHLauqoyAwuBqMzbcNvXNY4hGJCYHKUKcv
 XIPk9S+k2DwPesXO+DtnNLgA2vfqYFixN9O411tsEyKsHaD/Q4SIBUeIM
 n8EJTdJ1xzyJjPBkJTRyPeeawBPasT9ETnzjYxWxMD/UGLNB48ixLqVs0
 R7ZH+9Rmz3CHzNiUwqyDT1FwYIthzP2UsykucZg99j8eKsrme1cSkg/1P
 KGtyWE+0WYBgwEIT4aymCpjISBDC9GCDXTfBalLKDJ0Ot7eLIZX1F0Mf4 w==;
X-CSE-ConnectionGUID: RHLu0DkYQFu6KRcPnCDXpQ==
X-CSE-MsgGUID: B8ffMg44Q5yebE3ihiH8jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="49802620"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="49802620"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:04:15 -0800
X-CSE-ConnectionGUID: ZtjGbdoSTeu5kCWQy1u0JA==
X-CSE-MsgGUID: 72Dqpt5vReSORmRsfdQT3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110553270"
Received: from unknown (HELO sorvi2.fi.intel.com) ([10.237.72.194])
 by orviesa006.jf.intel.com with ESMTP; 04 Feb 2025 03:04:13 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, jani.nikula@linux.intel.com,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Drop crtc_state from C10/C20 pll
 programming
Date: Tue,  4 Feb 2025 12:53:57 +0200
Message-ID: <20250204105358.284687-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250204105358.284687-1-mika.kahola@intel.com>
References: <20250204105358.284687-1-mika.kahola@intel.com>
MIME-Version: 1.0
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

For PLL programming for C10 and C20 we don't need to
carry crtc_state but instead use only necessary parts
of the crtc_state i.e. pll_state.

This change is needed to PTL wa 14023648281 where we would
need to otherwise pass an artificial crtc_state with majority
of the struct members initialized as NULL.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 109 +++++++++++--------
 1 file changed, 64 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 48b0b9755b2b..bffe3d4bbe8b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2021,13 +2021,12 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
 	return NULL;
 }
 
-static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
-				    struct intel_encoder *encoder)
+static void intel_cx0pll_update_ssc(struct intel_encoder *encoder,
+				    struct intel_cx0pll_state *pll_state, bool is_dp)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
 
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
+	if (is_dp) {
 		if (intel_panel_use_ssc(display)) {
 			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 			pll_state->ssc_enabled =
@@ -2036,11 +2035,10 @@ static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
 	}
 }
 
-static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
-				    struct intel_encoder *encoder)
+static void intel_c10pll_update_pll(struct intel_encoder *encoder,
+				    struct intel_cx0pll_state *pll_state, bool is_dp)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
 	int i;
 
 	if (pll_state->ssc_enabled)
@@ -2051,32 +2049,49 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
 		pll_state->c10.pll[i] = 0;
 }
 
+static int intel_c10pll_calc_state_from_table(struct intel_encoder *encoder,
+					      const struct intel_c10pll_state * const *tables, int port_clock, bool is_dp,
+					      struct intel_cx0pll_state *pll_state)
+{
+	int i;
+
+	for (i = 0; tables[i]; i++) {
+		if (port_clock == tables[i]->clock) {
+			pll_state->c10 = *tables[i];
+			intel_cx0pll_update_ssc(encoder, pll_state, is_dp);
+			intel_c10pll_update_pll(encoder, pll_state, is_dp);
+			pll_state->use_c10 = true;
+
+			return 0;
+		}
+	}
+
+	return -EINVAL;
+}
+
 static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 				   struct intel_encoder *encoder)
 {
 	const struct intel_c10pll_state * const *tables;
-	int i;
+	int val;
 
 	tables = intel_c10pll_tables_get(crtc_state, encoder);
 	if (!tables)
 		return -EINVAL;
 
-	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->clock) {
-			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
-			intel_cx0pll_update_ssc(crtc_state, encoder);
-			intel_c10pll_update_pll(crtc_state, encoder);
-			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
-
-			return 0;
-		}
-	}
+	val = intel_c10pll_calc_state_from_table(encoder, tables,
+						 crtc_state->port_clock, intel_crtc_has_dp_encoder(crtc_state),
+						 &crtc_state->dpll_hw_state.cx0pll);
+	if (val == 0)
+		return 0;
 
 	/* For HDMI PLLs try SNPS PHY algorithm, if there are no precomputed tables */
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		intel_snps_hdmi_pll_compute_c10pll(&crtc_state->dpll_hw_state.cx0pll.c10,
 						   crtc_state->port_clock);
-		intel_c10pll_update_pll(crtc_state, encoder);
+		intel_c10pll_update_pll(encoder,
+					&crtc_state->dpll_hw_state.cx0pll,
+					intel_crtc_has_dp_encoder(crtc_state));
 		crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
 
 		return 0;
@@ -2112,10 +2127,9 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 }
 
 static void intel_c10_pll_program(struct intel_display *display,
-				  const struct intel_crtc_state *crtc_state,
-				  struct intel_encoder *encoder)
+				  struct intel_encoder *encoder,
+				  const struct intel_c10pll_state *pll_state)
 {
-	const struct intel_c10pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c10;
 	int i;
 
 	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
@@ -2334,7 +2348,9 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
-			intel_cx0pll_update_ssc(crtc_state, encoder);
+			intel_cx0pll_update_ssc(encoder,
+						&crtc_state->dpll_hw_state.cx0pll,
+						intel_crtc_has_dp_encoder(crtc_state));
 			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
 			return 0;
 		}
@@ -2600,19 +2616,14 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
 }
 
 static void intel_c20_pll_program(struct intel_display *display,
-				  const struct intel_crtc_state *crtc_state,
-				  struct intel_encoder *encoder)
+				  struct intel_encoder *encoder,
+				  const struct intel_c20pll_state *pll_state,
+				  int clock, bool dp)
 {
-	const struct intel_c20pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll.c20;
-	bool dp = false;
 	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
-	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
 
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		dp = true;
-
 	/* 1. Read current context selection */
 	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & BIT(0);
 
@@ -2736,7 +2747,8 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 }
 
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
-					 const struct intel_crtc_state *crtc_state,
+					 const struct intel_cx0pll_state *pll_state,
+					 bool is_dp, int port_clock,
 					 bool lane_reversal)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -2751,18 +2763,17 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
-	    is_hdmi_frl(crtc_state->port_clock))
+	if (!is_dp && is_hdmi_frl(port_clock))
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
-	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
-		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+	if (port_clock == 1000000 || port_clock == 2000000)
+		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
 	else
-		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		val |= pll_state->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
@@ -2992,8 +3003,9 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
 	return val;
 }
 
-static void intel_cx0pll_enable(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+static void __intel_cx0pll_enable(struct intel_encoder *encoder,
+				  const struct intel_cx0pll_state *pll_state,
+				  bool is_dp, int port_clock, int lane_count)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
@@ -3007,7 +3019,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
 	 * clock muxes, gating and SSC
 	 */
-	intel_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+	intel_program_port_clock_ctl(encoder, pll_state, is_dp, port_clock, lane_reversal);
 
 	/* 2. Bring PHY out of reset. */
 	intel_cx0_phy_lane_reset(encoder, lane_reversal);
@@ -3027,15 +3039,15 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 
 	/* 5. Program PHY internal PLL internal registers. */
 	if (intel_encoder_is_c10phy(encoder))
-		intel_c10_pll_program(display, crtc_state, encoder);
+		intel_c10_pll_program(display, encoder, &pll_state->c10);
 	else
-		intel_c20_pll_program(display, crtc_state, encoder);
+		intel_c20_pll_program(display, encoder, &pll_state->c20, port_clock, is_dp);
 
 	/*
 	 * 6. Program the enabled and disabled owned PHY lane
 	 * transmitters over message bus
 	 */
-	intel_cx0_program_phy_lane(encoder, crtc_state->lane_count, lane_reversal);
+	intel_cx0_program_phy_lane(encoder, lane_count, lane_reversal);
 
 	/*
 	 * 7. Follow the Display Voltage Frequency Switching - Sequence
@@ -3046,8 +3058,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
 	 * clock frequency.
 	 */
-	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
-		       crtc_state->port_clock);
+	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
 	/*
 	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
@@ -3074,6 +3085,14 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
+static void intel_cx0pll_enable(struct intel_encoder *encoder,
+				const struct intel_crtc_state *crtc_state)
+{
+	__intel_cx0pll_enable(encoder, &crtc_state->dpll_hw_state.cx0pll,
+			      intel_crtc_has_dp_encoder(crtc_state), crtc_state->port_clock, crtc_state->lane_count);
+
+}
+
 int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-- 
2.43.0

