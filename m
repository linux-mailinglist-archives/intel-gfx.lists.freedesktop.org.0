Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA7A6E94E9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2BF10EC22;
	Thu, 20 Apr 2023 12:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7D910E2BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994759; x=1713530759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RMMvtQvxbNf9UwOVtV4KCxdGBsA7n/ReqAvTB3o2pHA=;
 b=GUC4Rkr0yvm+R8yyBwlsN8WNnX9OPaWoVztld0d1f1L6s5jtkb5Xo6wq
 c8b3UWgUquvUVLuOrX52vgX2NSJGb65KUtZv1VKgtfk9dOkSurWXyTE1W
 A0yJGayZNMxaTfZIluIhxvyYPdjz0jeJM4/Q96V8VyUmsRY7AztpE4Pim
 XwfkWzBdjaoUIrUVVnQL0ZGKb1h7k1ErNRyLI+tncSVHeDXtML1G0KPXd
 9A/9Jy7wsdGKwAgVSYvAKNN56BgA9be65flhHUIfXySdUfiYgb0ullUJF
 Uvz4LMD3Rc3zqbXQPA1VXyKdkFss3ajERzEaEiFECOydTLkUNiwUXQqwN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051895"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051895"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146010"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146010"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:45:58 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:41 +0300
Message-Id: <20230420124050.3617608-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/13] drm/i915/mtl: C20 port clock calculation
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

Calculate port clock with C20 phy.

BSpec: 64568
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 45 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  2 +
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
 drivers/gpu/drm/i915/display/intel_ddi.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +
 5 files changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 144474540ef4..f7720acaf58c 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2274,6 +2274,51 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
 	return tmpclk;
 }
 
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state)
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
 static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 					 const struct intel_crtc_state *crtc_state,
 					 bool lane_reversal)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c643aae27bac..83bd3500091b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -34,6 +34,8 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_c20pll_state *pll_state);
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state);
+int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
+				 const struct intel_c20pll_state *pll_state);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 6fcb1680fb54..a5e5bee24533 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -195,17 +195,21 @@
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
 #define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+#define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
 #define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
 #define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
 #define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
 #define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
 #define   C20_MPLLA_FRACEN		REG_BIT(14)
+#define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
 #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
 #define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
 #define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
 #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define   C20_MPLLB_FRACEN		REG_BIT(13)
+#define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
 #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
+#define   C20_PHY_USE_MPLLB		REG_BIT(7)
 
 #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d414dd8c26bf..8e6d6afca400 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3856,13 +3856,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 	if (intel_is_c10phy(i915, phy)) {
 		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
 		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
+		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
 		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20);
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
 	}
 
-	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
-
 	intel_ddi_get_config(encoder, crtc_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a9fbef0fa817..ca0f362a40e3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1014,6 +1014,8 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	/* TODO: Do the readback via intel_compute_shared_dplls() */
 	if (intel_is_c10phy(i915, phy))
 		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
+	else
+		crtc_state->port_clock = intel_c20pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c20);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
 
-- 
2.34.1

