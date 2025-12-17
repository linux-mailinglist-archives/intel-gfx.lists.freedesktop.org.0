Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB591CC86E6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 16:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8024C10E8C8;
	Wed, 17 Dec 2025 15:28:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F2+fs/vI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F3210E8C7;
 Wed, 17 Dec 2025 15:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765985323; x=1797521323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FknJgjAHAEtvsVi+N+i8y8wTdqS5f2Q4xBpjhKasQ4k=;
 b=F2+fs/vI6qOrKsDLGJIiuGqV0hHNfE9yf1dapJ7tU6A8kzEd10GQNYBW
 5eswDeh6ftCFp/REtflECisLGNlexgVYpxfBFIcbdZ6NAsyi/rLkriekP
 urX2MTiJLfli6U/tDhcQXvb4ghUWpZsx3YzJEy1xu5GaHqkIRJ5qzm8JD
 QEKhaK7PuRGNMnpcb4+snqXOJqbWHSndgcuoSh26QbQIgpbSvHEANDeqh
 BDIHaPvrZ8sFqpfZN7IAgZsLOSSLCRrFnS2qNxYUGh380MjmT7fee3PD4
 Zmw5x3uNESRoNPM7h6yjAzAwO6s12BJlPNW1oKmesBrkJfavO4p0TaScu g==;
X-CSE-ConnectionGUID: CP525jICR+yYhY4Kc/8kPg==
X-CSE-MsgGUID: d/aSd7q/QT6kL7VsFsvmsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="71781420"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="71781420"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 07:28:43 -0800
X-CSE-ConnectionGUID: MMVcv/pvTs61uBBxTXn0LA==
X-CSE-MsgGUID: fM08wiTJTGCGWU0ImD1L1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198097289"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa009.jf.intel.com with ESMTP; 17 Dec 2025 07:28:41 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 02/15] drm/i915/c20: Move C20 port clock calculation
Date: Wed, 17 Dec 2025 17:19:42 +0200
Message-Id: <20251217151955.1690202-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251217151955.1690202-1-mika.kahola@intel.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 100 +++++++++----------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5fb39c114078..1deb865618b7 100644
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
@@ -2702,56 +2752,6 @@ int intel_cx0pll_calc_state(const struct intel_crtc_state *crtc_state,
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
2.34.1

