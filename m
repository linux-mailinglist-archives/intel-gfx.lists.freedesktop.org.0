Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAZSIn8Yj2mJIgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37913136079
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 13:26:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07AD10E80D;
	Fri, 13 Feb 2026 12:26:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yi7iDpYQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C2C10E80D;
 Fri, 13 Feb 2026 12:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770985596; x=1802521596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PrpB2JOh8UonhgrUhiJhF+efjtL2TaRmpLnJDl15AnA=;
 b=Yi7iDpYQ6GhgbY+wb68kefMZfUljENityJ0ws6IettSgrvau5gXhWCDV
 HsvLKSTnXIx+7mJQpM4IydPcTVA1hrCRfqkajOMqYXb61KypWSqWd0LYG
 6qLF2Fb1DiGDUu/Q5T+ds2asufwpa+ADjr5ZPpulizFsQy1Dy21T1YJfi
 QzvsvzFU9V6hdYEFQYm3DfRlWslkNz4sJUnelnG5or9K2v/Jun0ovrBJa
 wuBEfCn6ockEkIy2DJ/aE1Rjd0taoVtxDPaXfrQNMVbOF4zpBQRLtQEkB
 BoRWQ6lQZoym9Jlz9/msOPjkiBeaH/ldEswwnmh73S1lMuogJxTrePJLS g==;
X-CSE-ConnectionGUID: Fxp8hcRYTgKUMCin73Nk5w==
X-CSE-MsgGUID: MIuF4ATNTUm+hR3HHJcqWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72158128"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72158128"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 04:26:36 -0800
X-CSE-ConnectionGUID: G+1RaQuSTECSGA+oOf/ieg==
X-CSE-MsgGUID: JTsfTq5RTYOjmKSS0QFadQ==
X-ExtLoop1: 1
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa003.fm.intel.com with ESMTP; 13 Feb 2026 04:26:34 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 14/19] drm/i915/lt_phy: Add .enable_clock/disable clock on DDI
 for xe3plpd platform
Date: Fri, 13 Feb 2026 12:26:10 +0000
Message-ID: <20260213122615.1083654-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260213122615.1083654-1-mika.kahola@intel.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 37913136079
X-Rspamd-Action: no action

To enable pll clock on DDI move part of the pll enabling
sequence into a ddi clock enabling function.

Simililarly, do the same for pll disabling sequence.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 20 +----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 25 ++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  1 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 86 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_lt_phy.h   | 10 ++-
 6 files changed, 93 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 57de15fe3446..532d7d4e3b27 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5299,8 +5299,8 @@ void intel_ddi_init(struct intel_display *display,
 	encoder->pipe_mask = ~0;
 
 	if (HAS_LT_PHY(display)) {
-		encoder->enable_clock = intel_xe3plpd_pll_enable;
-		encoder->disable_clock = intel_xe3plpd_pll_disable;
+		encoder->enable_clock = intel_xe3plpd_pll_enable_clock;
+		encoder->disable_clock = intel_xe3plpd_pll_disable_clock;
 		encoder->port_pll_type = intel_mtl_port_pll_type;
 		encoder->get_config = xe3plpd_ddi_get_config;
 	} else if (DISPLAY_VER(display) >= 14) {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index abc85ee9b832..c7d37e74fbe9 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1212,24 +1212,6 @@ static int dg2_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static int xe3plpd_crtc_compute_clock(struct intel_atomic_state *state,
-				      struct intel_crtc *crtc)
-{
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_encoder *encoder =
-		intel_get_crtc_new_encoder(state, crtc_state);
-	int ret;
-
-	ret = intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state->dpll_hw_state);
-	if (ret)
-		return ret;
-
-	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
-
-	return 0;
-}
-
 static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -1690,7 +1672,7 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 }
 
 static const struct intel_dpll_global_funcs xe3plpd_dpll_funcs = {
-	.crtc_compute_clock = xe3plpd_crtc_compute_clock,
+	.crtc_compute_clock = hsw_crtc_compute_clock,
 	.crtc_get_dpll = hsw_crtc_get_dpll,
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 412582e29ca6..28c560417409 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4595,7 +4595,32 @@ static int xe3plpd_pll_get_freq(struct intel_display *display,
 	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
 }
 
+static void xe3plpd_pll_enable(struct intel_display *display,
+			       struct intel_dpll *pll,
+			       const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);
+}
+
+static void xe3plpd_pll_disable(struct intel_display *display,
+				struct intel_dpll *pll)
+{
+	struct intel_encoder *encoder = get_intel_encoder(display, pll);
+
+	if (drm_WARN_ON(display->drm, !encoder))
+		return;
+
+	intel_xe3plpd_pll_disable(encoder);
+}
+
 static const struct intel_dpll_funcs xe3plpd_pll_funcs = {
+	.enable = xe3plpd_pll_enable,
+	.disable = xe3plpd_pll_disable,
 	.get_hw_state = xe3plpd_pll_get_hw_state,
 	.get_freq = xe3plpd_pll_get_freq,
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 4cc14ce5eebe..d408ccf6f902 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -278,6 +278,7 @@ struct intel_lt_phy_pll_state {
 	u8 config[3];
 	bool ssc_enabled;
 	bool tbt_mode;
+	int lane_count;
 };
 
 struct intel_dpll_hw_state {
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index b1d95eb897db..365c6e07a257 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1179,7 +1179,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 
 static void
 intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state,
+				    const struct intel_lt_phy_pll_state *ltpll,
+				    int port_clock,
 				    bool lane_reversal)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1196,17 +1197,17 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 	 * but since the register bits still remain the same we use
 	 * the same definition
 	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
-	    intel_hdmi_is_frl(crtc_state->port_clock))
+	if (encoder->type == INTEL_OUTPUT_HDMI &&
+	    intel_hdmi_is_frl(port_clock))
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	 /* DP2.0 10G and 20G rates enable MPLLA*/
-	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
+	if (port_clock == 1000000 || port_clock == 2000000)
 		val |= XELPDP_SSC_ENABLE_PLLA;
 	else
-		val |= crtc_state->dpll_hw_state.ltpll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		val |= ltpll->ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
@@ -1249,10 +1250,12 @@ static u32 intel_lt_phy_get_dp_clock(u8 rate)
 
 static bool
 intel_lt_phy_config_changed(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state)
+			    const struct intel_lt_phy_pll_state *ltpll)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	u8 val, rate;
 	u32 clock;
+	u32 port_clock = intel_lt_phy_calc_port_clock(display, ltpll);
 
 	val = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
 				LT_PHY_VDR_0_CONFIG);
@@ -1263,9 +1266,10 @@ intel_lt_phy_config_changed(struct intel_encoder *encoder,
 	 * using 1.62 Gbps clock since PHY PLL defaults to that
 	 * otherwise we always need to reconfigure it.
 	 */
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
+	if (encoder->type == INTEL_OUTPUT_DP ||
+	    encoder->type == INTEL_OUTPUT_EDP) {
 		clock = intel_lt_phy_get_dp_clock(rate);
-		if (crtc_state->port_clock == 1620000 && crtc_state->port_clock == clock)
+		if (port_clock == 1620000 && port_clock == clock)
 			return false;
 	}
 
@@ -1749,11 +1753,13 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 			}
 			hw_state->ltpll.ssc_enabled =
 				intel_lt_phy_pll_is_ssc_enabled(crtc_state, encoder);
+			hw_state->ltpll.lane_count = crtc_state->lane_count;
 			return 0;
 		}
 	}
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		hw_state->ltpll.lane_count = crtc_state->lane_count;
 		return intel_lt_phy_calculate_hdmi_state(&hw_state->ltpll,
 							 crtc_state->port_clock);
 	}
@@ -1763,41 +1769,41 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 
 static void
 intel_lt_phy_program_pll(struct intel_encoder *encoder,
-			 const struct intel_crtc_state *crtc_state)
+			 const struct intel_lt_phy_pll_state *ltpll)
 {
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 	int i, j, k;
 
 	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_0_CONFIG,
-			   crtc_state->dpll_hw_state.ltpll.config[0], MB_WRITE_COMMITTED);
+			   ltpll->config[0], MB_WRITE_COMMITTED);
 	intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG,
-			   crtc_state->dpll_hw_state.ltpll.config[1], MB_WRITE_COMMITTED);
+			   ltpll->config[1], MB_WRITE_COMMITTED);
 	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_VDR_2_CONFIG,
-			   crtc_state->dpll_hw_state.ltpll.config[2], MB_WRITE_COMMITTED);
+			   ltpll->config[2], MB_WRITE_COMMITTED);
 
 	for (i = 0; i <= 12; i++) {
 		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_MSB(i),
-				   crtc_state->dpll_hw_state.ltpll.addr_msb[i],
+				   ltpll->addr_msb[i],
 				   MB_WRITE_COMMITTED);
 		intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_X_ADDR_LSB(i),
-				   crtc_state->dpll_hw_state.ltpll.addr_lsb[i],
+				   ltpll->addr_lsb[i],
 				   MB_WRITE_COMMITTED);
 
 		for (j = 3, k = 0; j >= 0; j--, k++)
 			intel_lt_phy_write(encoder, INTEL_LT_PHY_LANE0,
 					   LT_PHY_VDR_X_DATAY(i, j),
-					   crtc_state->dpll_hw_state.ltpll.data[i][k],
+					   ltpll->data[i][k],
 					   MB_WRITE_COMMITTED);
 	}
 }
 
 static void
 intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
-			       const struct intel_crtc_state *crtc_state)
+			       const struct intel_lt_phy_pll_state *ltpll)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
-	u8 lane_count = crtc_state->lane_count;
+	u8 lane_count = ltpll->lane_count;
 	bool is_dp_alt =
 		intel_tc_port_in_dp_alt_mode(dig_port);
 	enum intel_tc_pin_assignment tc_pin =
@@ -1878,9 +1884,11 @@ intel_lt_phy_enable_disable_tx(struct intel_encoder *encoder,
 }
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state)
+			     struct intel_dpll *pll,
+			     const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
+	int port_clock = intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
@@ -1896,10 +1904,10 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	wakeref = intel_lt_phy_transaction_begin(encoder);
 
 	/* 1. Enable MacCLK at default 162 MHz frequency. */
-	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
+	intel_lt_phy_lane_reset(encoder, dpll_hw_state->ltpll.lane_count);
 
 	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
-	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+	intel_lt_phy_program_port_clock_ctl(encoder, &dpll_hw_state->ltpll, port_clock, lane_reversal);
 
 	/* 3. Change owned PHY lanes power to Ready state. */
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
@@ -1909,12 +1917,12 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
 	 */
-	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
+	if (intel_lt_phy_config_changed(encoder, &dpll_hw_state->ltpll)) {
 		/*
 		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
 		 * frequency and protocol type
 		 */
-		intel_lt_phy_program_pll(encoder, crtc_state);
+		intel_lt_phy_program_pll(encoder, &dpll_hw_state->ltpll);
 
 		/* 6. Use the P2P transaction flow */
 		/*
@@ -1946,8 +1954,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		 * Change. We handle this step in bxt_set_cdclk().
 		 */
 		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
-			       crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 
 		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
 		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
@@ -1994,7 +2001,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 			     lane_phy_pulse_status,
 			     lane_phy_pulse_status);
 	} else {
-		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), crtc_state->port_clock);
+		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), port_clock);
 	}
 
 	/*
@@ -2005,7 +2012,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
-	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
+	intel_lt_phy_enable_disable_tx(encoder, &dpll_hw_state->ltpll);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2145,8 +2152,8 @@ void intel_lt_phy_dump_hw_state(struct drm_printer *p,
 {
 	int i, j;
 
-	drm_printf(p, "lt_phy_pll_hw_state: ssc enabled: %d, tbt mode: %d\n",
-		   hw_state->ssc_enabled, hw_state->tbt_mode);
+	drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
+		   hw_state->lane_count, hw_state->ssc_enabled, hw_state->tbt_mode);
 
 	for (i = 0; i <= 12; i++)
 		drm_printf(p, "addr [%d] msb = 0x%.4x, lsb = 0x%.4x\n",
@@ -2283,14 +2290,22 @@ void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
 }
 
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state)
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state)
+{
+	intel_lt_phy_pll_enable(encoder, pll, dpll_hw_state);
+}
+
+void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->port_clock);
 	else
-		intel_lt_phy_pll_enable(encoder, crtc_state);
+		/* TODO: remove when PLL mgr is in place. */
+		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state->dpll_hw_state);
 }
 
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
@@ -2301,6 +2316,17 @@ void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
 		intel_mtl_tbt_pll_disable_clock(encoder);
 	else
 		intel_lt_phy_pll_disable(encoder);
+}
+
+void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		intel_mtl_tbt_pll_disable_clock(encoder);
+	else
+		/* TODO: remove when PLL mgr is in place. */
+		intel_xe3plpd_pll_disable(encoder);
 
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
index ff3896a2cebe..3838e9326773 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
@@ -11,6 +11,7 @@
 struct drm_printer;
 struct intel_atomic_state;
 struct intel_display;
+struct intel_dpll;
 struct intel_dpll_hw_state;
 struct intel_encoder;
 struct intel_crtc_state;
@@ -18,7 +19,8 @@ struct intel_crtc;
 struct intel_lt_phy_pll_state;
 
 void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
-			     const struct intel_crtc_state *crtc_state);
+			     struct intel_dpll *pll,
+			     const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_lt_phy_pll_disable(struct intel_encoder *encoder);
 int
 intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
@@ -41,8 +43,12 @@ int
 intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
 				  u32 frequency_khz);
 void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
-			      const struct intel_crtc_state *crtc_state);
+			      struct intel_dpll *pll,
+			      const struct intel_dpll_hw_state *dpll_hw_state);
 void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
 void intel_lt_phy_verify_plls(struct intel_display *display);
+void intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
+				    const struct intel_crtc_state *crtc_state);
+void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder);
 
 #endif /* __INTEL_LT_PHY_H__ */
-- 
2.43.0

