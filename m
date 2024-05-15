Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E3F8C610E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 08:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C5EB10E20D;
	Wed, 15 May 2024 06:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f26GH+5r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492BF10E0D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 06:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715755965; x=1747291965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5MpqiNq21x50aw8kZZTJmgdk24Hd9F+LqvdE/ONiiPI=;
 b=f26GH+5rNzlZOnkB4iiZHg8+7rdfxEF+HyHQtArM2mXrApMmNBjVcvYa
 dNoAcsZrK1ifoS0dU8e9aS7BgXR3VumYWKXJvsvb6E/rOHzmzwfjb0e19
 SRn/oZRi2pkGZnm7H9Nyd9JgvSz/ciKEO5VE5UIy+YMGCak/KTIY5c0Qn
 gpmDX6uLLkNaXNRxepsnvpfdi1PIzZjyzAz1g0wYwtMuQ3TBuL8F4ptzt
 GFw3n+EjpzL2y5kMLqlg0H3jPCVq7Ydt1JFRflEZAKut2+SzUokjNjWT5
 hIZ+tLqCGfe8azPejtFhS0ZrtGqhk5y5pWxFOKFfmQbrYtLgLja2ctlc2 g==;
X-CSE-ConnectionGUID: FiUmfwKxRf6mvtppSr9daw==
X-CSE-MsgGUID: ezjWaGE/RBKlWRDM9RsjpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="11951040"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="11951040"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 23:52:45 -0700
X-CSE-ConnectionGUID: VASiH0UlQcy8KvD3nzht7g==
X-CSE-MsgGUID: CME3ojlWTpmD746Qqy03GQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="31537734"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orviesa008.jf.intel.com with ESMTP; 14 May 2024 23:52:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Move port clock calculation
Date: Wed, 15 May 2024 09:45:23 +0300
Message-Id: <20240515064524.164137-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

As a preparation to remove .clock member from pll state
structure, let's move the port clock calculation on better
location

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 176 ++++++++++---------
 1 file changed, 91 insertions(+), 85 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 1b1ebafa49e8..9f860a05e623 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1970,13 +1970,92 @@ static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
 	NULL,
 };
 
-static int intel_c10_phy_check_hdmi_link_rate(int clock)
+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
+					const struct intel_c10pll_state *pll_state)
+{
+	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
+	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
+	int tmpclk = 0;
+
+	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
+		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
+		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
+		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
+	}
+
+	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
+		      pll_state->pll[2]) / 2 + 16;
+
+	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
+	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
+
+	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
+				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
+				     10 << (tx_clk_div + 16));
+	tmpclk *= (hdmi_div ? 2 : 1);
+
+	return tmpclk;
+}
+
+static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
+{
+	return state->tx[0] & C20_PHY_USE_MPLLB;
+}
+
+static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+					const struct intel_c20pll_state *pll_state)
+{
+	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
+	unsigned int multiplier, refclk = 38400;
+	unsigned int tx_clk_div;
+	unsigned int ref_clk_mpllb_div;
+	unsigned int fb_clk_div4_en;
+	unsigned int ref, vco;
+	unsigned int tx_rate_mult;
+	unsigned int tx_rate = REG_FIELD_GET(C20_PHY_TX_RATE, pll_state->tx[0]);
+
+	if (intel_c20phy_use_mpllb(pll_state)) {
+		tx_rate_mult = 1;
+		frac_en = REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mpllb[6]);
+		frac_quot = pll_state->mpllb[8];
+		frac_rem =  pll_state->mpllb[9];
+		frac_den =  pll_state->mpllb[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
+		fb_clk_div4_en = 0;
+	} else {
+		tx_rate_mult = 2;
+		frac_en = REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->mplla[6]);
+		frac_quot = pll_state->mplla[8];
+		frac_rem =  pll_state->mplla[9];
+		frac_den =  pll_state->mplla[7];
+		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
+		tx_clk_div = REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
+		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
+		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mplla[0]);
+	}
+
+	if (frac_en)
+		frac = frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_den);
+	else
+		frac = 0;
+
+	ref = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
+	vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17 - 2)) + frac) >> 17, 10);
+
+	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
+}
+
+static int intel_c10_phy_check_hdmi_link_rate(struct intel_encoder *encoder,
+					      int clock)
 {
 	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
 	int i;
 
 	for (i = 0; tables[i]; i++) {
-		if (clock == tables[i]->clock)
+		int port_clock = intel_c10pll_calc_port_clock(encoder, tables[i]);
+		if (clock == port_clock)
 			return MODE_OK;
 	}
 
@@ -2035,7 +2114,8 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->clock) {
+		int port_clock = intel_c10pll_calc_port_clock(encoder, tables[i]);
+		if (crtc_state->port_clock == port_clock) {
 			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
 			intel_c10pll_update_pll(crtc_state, encoder);
 
@@ -2209,13 +2289,15 @@ static int intel_c20_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_c20pll_
 	return 0;
 }
 
-static int intel_c20_phy_check_hdmi_link_rate(int clock)
+static int intel_c20_phy_check_hdmi_link_rate(struct intel_encoder *encoder,
+					      int clock)
 {
 	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
 	int i;
 
 	for (i = 0; tables[i]; i++) {
-		if (clock == tables[i]->clock)
+		int port_clock = intel_c20pll_calc_port_clock(encoder, tables[i]);
+		if (clock == port_clock)
 			return MODE_OK;
 	}
 
@@ -2230,8 +2312,8 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
 	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
 
 	if (intel_encoder_is_c10phy(&dig_port->base))
-		return intel_c10_phy_check_hdmi_link_rate(clock);
-	return intel_c20_phy_check_hdmi_link_rate(clock);
+		return intel_c10_phy_check_hdmi_link_rate(hdmi->attached_connector->encoder, clock);
+	return intel_c20_phy_check_hdmi_link_rate(hdmi->attached_connector->encoder, clock);
 }
 
 static const struct intel_c20pll_state * const *
@@ -2275,7 +2357,8 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 
 	for (i = 0; tables[i]; i++) {
-		if (crtc_state->port_clock == tables[i]->clock) {
+		int port_clock = intel_c20pll_calc_port_clock(encoder, tables[i]);
+		if (crtc_state->port_clock == port_clock) {
 			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
 			return 0;
 		}
@@ -2292,56 +2375,6 @@ int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 	return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
-static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
-{
-	return state->tx[0] & C20_PHY_USE_MPLLB;
-}
-
-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c20pll_state *pll_state)
-{
-	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
-	unsigned int multiplier, refclk = 38400;
-	unsigned int tx_clk_div;
-	unsigned int ref_clk_mpllb_div;
-	unsigned int fb_clk_div4_en;
-	unsigned int ref, vco;
-	unsigned int tx_rate_mult;
-	unsigned int tx_rate = REG_FIELD_GET(C20_PHY_TX_RATE, pll_state->tx[0]);
-
-	if (intel_c20phy_use_mpllb(pll_state)) {
-		tx_rate_mult = 1;
-		frac_en = REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mpllb[6]);
-		frac_quot = pll_state->mpllb[8];
-		frac_rem =  pll_state->mpllb[9];
-		frac_den =  pll_state->mpllb[7];
-		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mpllb[0]);
-		tx_clk_div = REG_FIELD_GET(C20_MPLLB_TX_CLK_DIV_MASK, pll_state->mpllb[0]);
-		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mpllb[6]);
-		fb_clk_div4_en = 0;
-	} else {
-		tx_rate_mult = 2;
-		frac_en = REG_FIELD_GET(C20_MPLLA_FRACEN, pll_state->mplla[6]);
-		frac_quot = pll_state->mplla[8];
-		frac_rem =  pll_state->mplla[9];
-		frac_den =  pll_state->mplla[7];
-		multiplier = REG_FIELD_GET(C20_MULTIPLIER_MASK, pll_state->mplla[0]);
-		tx_clk_div = REG_FIELD_GET(C20_MPLLA_TX_CLK_DIV_MASK, pll_state->mplla[1]);
-		ref_clk_mpllb_div = REG_FIELD_GET(C20_REF_CLK_MPLLB_DIV_MASK, pll_state->mplla[6]);
-		fb_clk_div4_en = REG_FIELD_GET(C20_FB_CLK_DIV4_EN, pll_state->mplla[0]);
-	}
-
-	if (frac_en)
-		frac = frac_quot + DIV_ROUND_CLOSEST(frac_rem, frac_den);
-	else
-		frac = 0;
-
-	ref = DIV_ROUND_CLOSEST(refclk * (1 << (1 + fb_clk_div4_en)), 1 << ref_clk_mpllb_div);
-	vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(ref, (multiplier << (17 - 2)) + frac) >> 17, 10);
-
-	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
-}
-
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c20pll_state *pll_state)
 {
@@ -2636,33 +2669,6 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
 }
 
-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state)
-{
-	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
-	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
-	int tmpclk = 0;
-
-	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
-		frac_quot = pll_state->pll[12] << 8 | pll_state->pll[11];
-		frac_rem =  pll_state->pll[14] << 8 | pll_state->pll[13];
-		frac_den =  pll_state->pll[10] << 8 | pll_state->pll[9];
-	}
-
-	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, pll_state->pll[3]) << 8 |
-		      pll_state->pll[2]) / 2 + 16;
-
-	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state->pll[15]);
-	hdmi_div = REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state->pll[15]);
-
-	tmpclk = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier << 16) + frac_quot) +
-				     DIV_ROUND_CLOSEST(refclk * frac_rem, frac_den),
-				     10 << (tx_clk_div + 16));
-	tmpclk *= (hdmi_div ? 2 : 1);
-
-	return tmpclk;
-}
-
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
-- 
2.34.1

