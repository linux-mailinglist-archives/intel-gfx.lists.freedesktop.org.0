Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPpKL+N5sWk2vgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC0B26542C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 15:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE2310E8F4;
	Wed, 11 Mar 2026 14:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZG8+oks";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F9B110E8D7;
 Wed, 11 Mar 2026 14:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773238753; x=1804774753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IYzgVDuTmVdPE4dH48XvUcKHSwWqnwrip5fgQc6ucDA=;
 b=kZG8+oksVCUiSZmHPGGuKtBGLgGFUFj9/FgHqrsfCasA3G5rZ+pzCbfS
 GIVny3otjOXsqyp0t0ZhUsG18nh/DSp676Vvovr2V0CjBG0OfxA9PejrM
 XYgxoXDiJtEfQYBgUq4sp+MIf7CXx+6jJt0j7EcNDfeij/ywjhnw5NARI
 CEvdzlEZ/Ze/KcxZcA8dRSyBM2Y/ygG3EbR8+OGZcx7ZMLJfrtfiT8AUO
 UDJcEBY7jYV5CuFMhkCteo9ql42IpU6K3j/RDo2cJ6Pnng/JcRUNzQg/8
 s5ZIMbSl7qZJCUQkjlGULtL/zF8KPg6YbBXKaAYxug6tHpX23/a955j0e g==;
X-CSE-ConnectionGUID: PQDGyXD/RkCf4aelrXqTgw==
X-CSE-MsgGUID: RJPWh21OQI2NABbvSPmZiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="99775178"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="99775178"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 07:19:13 -0700
X-CSE-ConnectionGUID: eUvYQdS1QCmhnESHDjbnkw==
X-CSE-MsgGUID: 0bthAlv6SomkX43QP+Qobw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="216730393"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa006.fm.intel.com with ESMTP; 11 Mar 2026 07:19:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3 04/24] drm/i915/lt_phy: Refactor LT PHY PLL handling to use
 explicit PLL state
Date: Wed, 11 Mar 2026 14:18:45 +0000
Message-ID: <20260311141905.2526418-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260311141905.2526418-1-mika.kahola@intel.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 6CC0B26542C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

The LT PHY implementation currently pulls PLL and port_clock
information directly from the CRTC state. This ties the PHY
programming logic too tightly to the CRTC state and makes it
harder to clearly express the PHY’s own PLL configuration.

Introduce an explicit "struct intel_lt_phy_pll_state" argument
for the PHY functions and update callers accordingly.

No functional change is intended — this is a preparatory cleanup for
to bring LT PHY PLL handling as part of PLL framework.

v2:  DP, HDMI 2.0, and HDMI FRL modes are port of the VDR configuration 0
    register. These modes are defined by bits 2:0. Decode these to
    differentiate DP and HDMI modes when programming PLL's. (Imre, Suraj)
v3: Pass port_clock as argument instead of recalculating it (Suraj)

BSpec: 744921
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 66 ++++++++++++++-------
 1 file changed, 45 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index e1c95f58b6ae..7a68465a9801 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -32,6 +32,7 @@
 					 INTEL_LT_PHY_LANE0)
 #define MODE_DP				3
 #define MODE_HDMI_20			4
+#define MODE_HDMI_FRL			5
 #define Q32_TO_INT(x)	((x) >> 32)
 #define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
 #define DCO_MIN_FREQ_MHZ	11850
@@ -1176,9 +1177,30 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
 }
 
+static bool intel_lt_phy_is_hdmi(const struct intel_lt_phy_pll_state *ltpll)
+{
+	u8 mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK, ltpll->config[0]);
+
+	if (mode == MODE_HDMI_20 || mode == MODE_HDMI_FRL)
+		return true;
+
+	return false;
+}
+
+static bool intel_lt_phy_is_dp(const struct intel_lt_phy_pll_state *ltpll)
+{
+	u8 mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK, ltpll->config[0]);
+
+	if (mode == MODE_DP)
+		return true;
+
+	return false;
+}
+
 static void
 intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state,
+				    const struct intel_lt_phy_pll_state *ltpll,
+				    int port_clock,
 				    bool lane_reversal)
 {
 	struct intel_display *display = to_intel_display(encoder);
@@ -1195,17 +1217,16 @@ intel_lt_phy_program_port_clock_ctl(struct intel_encoder *encoder,
 	 * but since the register bits still remain the same we use
 	 * the same definition
 	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
-	    intel_hdmi_is_frl(crtc_state->port_clock))
+	if (intel_lt_phy_is_hdmi(ltpll) && intel_hdmi_is_frl(port_clock))
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
@@ -1248,7 +1269,8 @@ static u32 intel_lt_phy_get_dp_clock(u8 rate)
 
 static bool
 intel_lt_phy_config_changed(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state)
+			    const struct intel_lt_phy_pll_state *ltpll,
+			    u32 port_clock)
 {
 	u8 val, rate;
 	u32 clock;
@@ -1262,9 +1284,9 @@ intel_lt_phy_config_changed(struct intel_encoder *encoder,
 	 * using 1.62 Gbps clock since PHY PLL defaults to that
 	 * otherwise we always need to reconfigure it.
 	 */
-	if (intel_crtc_has_dp_encoder(crtc_state)) {
+	if (intel_lt_phy_is_dp(ltpll)) {
 		clock = intel_lt_phy_get_dp_clock(rate);
-		if (crtc_state->port_clock == 1620000 && crtc_state->port_clock == clock)
+		if (port_clock == 1620000 && port_clock == clock)
 			return false;
 	}
 
@@ -1759,41 +1781,41 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 
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
+			       const struct intel_lt_phy_pll_state *ltpll,
+			       u8 lane_count)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool lane_reversal = dig_port->lane_reversal;
-	u8 lane_count = crtc_state->lane_count;
 	bool is_dp_alt =
 		intel_tc_port_in_dp_alt_mode(dig_port);
 	enum intel_tc_pin_assignment tc_pin =
@@ -1895,7 +1917,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
 
 	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
-	intel_lt_phy_program_port_clock_ctl(encoder, crtc_state, lane_reversal);
+	intel_lt_phy_program_port_clock_ctl(encoder, &crtc_state->dpll_hw_state.ltpll,
+					    crtc_state->port_clock, lane_reversal);
 
 	/* 3. Change owned PHY lanes power to Ready state. */
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
@@ -1905,12 +1928,12 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
 	 * encoded rate and encoded mode.
 	 */
-	if (intel_lt_phy_config_changed(encoder, crtc_state)) {
+	if (intel_lt_phy_config_changed(encoder, &crtc_state->dpll_hw_state.ltpll, crtc_state->port_clock)) {
 		/*
 		 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
 		 * frequency and protocol type
 		 */
-		intel_lt_phy_program_pll(encoder, crtc_state);
+		intel_lt_phy_program_pll(encoder, &crtc_state->dpll_hw_state.ltpll);
 
 		/* 6. Use the P2P transaction flow */
 		/*
@@ -2001,7 +2024,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
 					       XELPDP_P0_STATE_ACTIVE);
 
-	intel_lt_phy_enable_disable_tx(encoder, crtc_state);
+	intel_lt_phy_enable_disable_tx(encoder, &crtc_state->dpll_hw_state.ltpll,
+				       crtc_state->lane_count);
 	intel_lt_phy_transaction_end(encoder, wakeref);
 }
 
-- 
2.43.0

