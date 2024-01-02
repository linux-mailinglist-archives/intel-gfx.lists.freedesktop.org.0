Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67552821B55
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jan 2024 13:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8970410E18E;
	Tue,  2 Jan 2024 12:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26D010E18E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jan 2024 12:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704197056; x=1735733056;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2z4WLjlbQy4KE5cNG4nnchNmSsTekMXfXRyE33iEycY=;
 b=cRundd8EotSLQoFiMX82NK3ehu8M0OTvYtGMd8gC+i8GZRY0l7e2RXxX
 XkOwaQTqN8UrAkJPnlsryBimm0HyAbQK0aO2Nmt6AO7nbIQFJHSHVaYMT
 8elUCl3XM3G+58v6NbULvt9O6WST10Uipd6DApko/46TRkiZjzN6jg93y
 NOHXAaNOPi2sDshu7Ghe2f19Xc1t3CUcCWvwZdgRTYlECR1qtJV4hTqbi
 +txEGn9mQ6kZbO9GYZi54/hTLkrsX0V2rOrocHfJAWt4C4BmyABpgWGJM
 dEALTI0je37h0FKSrK/XZOaTIN1Ukq8jzpL/V88Nh5cmUNx9wjfAgF3EQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="3645223"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; 
   d="scan'208";a="3645223"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 04:04:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10940"; a="808498184"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="808498184"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 02 Jan 2024 04:04:14 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm/i915/display: Store hw clock for C20
Date: Tue,  2 Jan 2024 13:57:40 +0200
Message-Id: <20240102115741.118525-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240102115741.118525-1-mika.kahola@intel.com>
References: <20240102115741.118525-1-mika.kahola@intel.com>
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

We can calculate the hw port clock during the hw readout
and store it as pll_state->clock for C20 state verification.
In order to do that we need to move intel_c20pll_calc_port_clock()
function.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 97 +++++++++++---------
 1 file changed, 52 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6b25e195232f..fc7211675b2f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2105,6 +2105,51 @@ static bool intel_c20_use_mplla(u32 clock)
 	return false;
 }
 
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
+	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
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
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c20pll_state *pll_state)
 {
@@ -2160,6 +2205,8 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
+	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
+
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 }
 
@@ -2408,51 +2455,6 @@ static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
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
-	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
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
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
@@ -3071,6 +3073,11 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 	bool hw_use_mpllb = mpll_hw_state->tx[0] & C20_PHY_USE_MPLLB;
 	int i;
 
+	I915_STATE_WARN(i915, mpll_hw_state->clock != mpll_sw_state->clock,
+			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)",
+			crtc->base.base.id, crtc->base.name,
+			mpll_sw_state->clock, mpll_hw_state->clock);
+
 	I915_STATE_WARN(i915, sw_use_mpllb != hw_use_mpllb,
 			"[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %d, found %d)",
 			crtc->base.base.id, crtc->base.name,
-- 
2.34.1

