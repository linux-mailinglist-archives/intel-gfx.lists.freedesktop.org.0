Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0207FD22EFA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F7B10E6D7;
	Thu, 15 Jan 2026 07:51:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQ99pdLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC9310E6D6;
 Thu, 15 Jan 2026 07:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463469; x=1799999469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TIB67xVpzDt6tnZzr4FKkM8br62PRSuOyURQd41XR8E=;
 b=HQ99pdLyv9Y4e9WpkPBxHi9UuWh4uZWy9xwEmamNM4Nuk+0TrsL8fjx0
 k476UlHVoYQhw0PBcnYcAINBnldqSnMkB3/quYXO2GRxw/UEihKJRDFv1
 paVPUqfVSmBOUcEsIJq7oZ0zrxe/xydiMuw0G96xkoVThuUOtPKGu/vjW
 wmc5T4DLqrIZ+jbQMJXPU3pkmG5WhuQi5nQbsFGaEbeIy0PGNXRL7g32X
 bmaWnJt4Pj/cPGwtTDZlQi2U8xem1ozTpLkGeud5J9lAecYoeCQnCccF5
 0toCFjrz/KZWLixAIwwQWqIXjmN6olXjdN0ja1bPkofY4L/DUNfVo8rKX w==;
X-CSE-ConnectionGUID: 8Xurk48zR4m5mGaFIpoGbw==
X-CSE-MsgGUID: lj4yLy0cQEylR8k3GxGJ1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436203"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436203"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:09 -0800
X-CSE-ConnectionGUID: JWNzp36NQ9eTsm3XFM1MoA==
X-CSE-MsgGUID: WLKb5XUxTl6FldkxUdxcbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101698"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:08 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 02/15] drm/i915/cx0: Move C20 port clock calculation
Date: Thu, 15 Jan 2026 07:50:48 +0000
Message-ID: <20260115075101.2214842-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

Prepare removal of .clock member from the pll state
structure by moving intel_c20pll_calc_port_clock()
function.

No functional change.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 100 +++++++++----------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5cd756321373..ac5e304ba306 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2130,6 +2130,56 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
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
 /*
  * TODO: Convert the following to align with intel_c20pll_find_table() and
  * intel_c20pll_calc_state_from_table().
@@ -2705,56 +2755,6 @@ int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
 	return intel_c20pll_calc_state(crtc_state, encoder, hw_state);
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
 					  struct intel_cx0pll_state *cx0pll_state)
 {
-- 
2.43.0

