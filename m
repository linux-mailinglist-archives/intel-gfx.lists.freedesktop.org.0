Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76112D3A32B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E39C10E3D0;
	Mon, 19 Jan 2026 09:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k/YQ7nZI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49EE710E3A7;
 Mon, 19 Jan 2026 09:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768815483; x=1800351483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TIB67xVpzDt6tnZzr4FKkM8br62PRSuOyURQd41XR8E=;
 b=k/YQ7nZIHu/V8oQ1Lgv3Y5FY/0cee7FeG1Xwx+1FqD+QvKBW6d5VxUmp
 PT2BPufES9zI6JaGdfx9i51v349l3tlP4m7WLzJIzyrblsAVYdHrdZJYQ
 Dfgyf+XwASiqg+PFzM4HXqkMwmd6sTtIlOZlcavV91z+e0ZpCcT8p5yqi
 LWF4EsF487vDh6z4j2Y04pFwcHG+tcOAOfC9KCETPvUKiIbS23RiWzNtB
 LRsKS4HLxJGnMqdB5ljL5RPJdg36Yjpa/V7NfH32xg1E8VNtHHuvnt/HB
 EXtktDrcAxtxNHNMa9sbhloeraLs+XzVsh3GSiVbBzFxqehFQQKfxBixE Q==;
X-CSE-ConnectionGUID: MI0qhxXsT8GAvqH9R/Q5+w==
X-CSE-MsgGUID: l5FsldrOS5WVpdFAF0sTbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69224263"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69224263"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:38:03 -0800
X-CSE-ConnectionGUID: L8mxktTmS/afixlNl6xIMQ==
X-CSE-MsgGUID: M57mMUa0TpCLg+UbjJBi5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="210838322"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa005.jf.intel.com with ESMTP; 19 Jan 2026 01:38:02 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [CI 02/15] drm/i915/cx0: Move C20 port clock calculation
Date: Mon, 19 Jan 2026 09:37:43 +0000
Message-ID: <20260119093757.2850233-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260119093757.2850233-1-mika.kahola@intel.com>
References: <20260119093757.2850233-1-mika.kahola@intel.com>
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

