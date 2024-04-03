Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88615896E12
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0C1112A18;
	Wed,  3 Apr 2024 11:23:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QHB1tvw+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59A3112A10;
 Wed,  3 Apr 2024 11:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143389; x=1743679389;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6R0fMystsVo5T+jMvskHwueBz3Hm2C+9jMDX3tPEKYc=;
 b=QHB1tvw+rrGVDqi+UK1/BVgNYVpTRYxaSutfujGHeK4+cVlSUF8ncnDb
 GdZojD23FzA3SEjuF3Hg1d/F13mj2SsHPUHYJczY+STWkeEQkeZr8LziM
 QVpep+664SEJGABWdYxZ0gREVeyHBbrFS1YYQHlcK81r39vLmlRS1YYjP
 UNbWf1P751Aj+ysyn7Hbg6x1lQzFFhjWNmNh5av6wtdjJ/AvO1pUdHzz/
 NcxmanP91ltKt8mLPG4PY8st54zPdyijGeGqwNFDEgJC12PITJcpWKWXL
 VO0NoNMeVQqeGwlYo1i8mdVaSajDWJOfPl0demp4X2qfIW/P1W86UVlGg Q==;
X-CSE-ConnectionGUID: Tdm8iQwzQTCY1tTmOZaXcg==
X-CSE-MsgGUID: 3gpWRPHPRquhaAv5mUoCVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824085"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824085"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:09 -0700
X-CSE-ConnectionGUID: sKjtL8gUTXaEguVT4gXfrg==
X-CSE-MsgGUID: 69LLrOT3RE2YOKWgDTBOHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358519"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:07 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 10/25] drm/i915/xe2hpd: Add new C20 PLL register address
Date: Wed,  3 Apr 2024 16:52:38 +0530
Message-Id: <20240403112253.1432390-11-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

Xe2_HPD has different address for C20 PLL registers. Enable the support
to use the right PLL register address based on display version.

Note that Xe2_LPD uses the same C20 SRAM offsets used by Xe_LPDP (i.e.
MTL's display). According to the BSpec, currently, only Xe2_HPD has
different offsets, so make sure it is the only display using them in the
driver.

Bspec: 67610
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 27 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  9 +++++++
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index caaae5d3758e..6e4647859fc6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -770,6 +770,17 @@ static struct intel_c20pll_reg mtl_c20_reg = {
 	.mpllb_b = MTL_C20_B_MPLLB_CFG_ADDR
 };
 
+static struct intel_c20pll_reg xe2hpd_c20_reg = {
+	.tx_cnt_a = XE2HPD_C20_A_TX_CNTX_CFG_ADDR,
+	.tx_cnt_b = XE2HPD_C20_B_TX_CNTX_CFG_ADDR,
+	.cmn_cnt_a = XE2HPD_C20_A_CMN_CNTX_CFG_ADDR,
+	.cmn_cnt_b = XE2HPD_C20_B_CMN_CNTX_CFG_ADDR,
+	.mplla_a = XE2HPD_C20_A_MPLLA_CFG_ADDR,
+	.mplla_b = XE2HPD_C20_B_MPLLA_CFG_ADDR,
+	.mpllb_a = XE2HPD_C20_A_MPLLB_CFG_ADDR,
+	.mpllb_b = XE2HPD_C20_B_MPLLB_CFG_ADDR,
+};
+
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 	.clock = 162000,
@@ -2166,19 +2177,29 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 	return vco << tx_rate_mult >> tx_clk_div >> tx_rate;
 }
 
+static struct intel_c20pll_reg *intel_c20_get_pll_reg(struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+		return &xe2hpd_c20_reg;
+	else
+		return &mtl_c20_reg;
+}
+
 static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 					  struct intel_c20pll_state *pll_state)
 {
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
-	struct intel_c20pll_reg *pll_reg = &mtl_c20_reg;
+	struct intel_c20pll_reg *pll_reg;
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Read current context selection */
 	cntx = intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
 
+	pll_reg = intel_c20_get_pll_reg(to_i915(encoder->base.dev));
+
 	/* Read Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
@@ -2353,7 +2374,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
-	const struct intel_c20pll_reg *pll_reg = &mtl_c20_reg;
+	const struct intel_c20pll_reg *pll_reg;
 
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		dp = true;
@@ -2372,6 +2393,8 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		usleep_range(4000, 4100);
 	}
 
+	pll_reg = intel_c20_get_pll_reg(i915);
+
 	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
 	/* 3.1 Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 882b98dc347b..8e5fd605b99e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -292,6 +292,15 @@ struct intel_c20pll_reg {
 #define MTL_C20_A_MPLLB_CFG_ADDR	0xCB5A
 #define MTL_C20_B_MPLLB_CFG_ADDR	0xCB4E
 
+#define XE2HPD_C20_A_TX_CNTX_CFG_ADDR	0xCF5E
+#define XE2HPD_C20_B_TX_CNTX_CFG_ADDR	0xCF5A
+#define XE2HPD_C20_A_CMN_CNTX_CFG_ADDR	0xCE8E
+#define XE2HPD_C20_B_CMN_CNTX_CFG_ADDR	0xCE89
+#define XE2HPD_C20_A_MPLLA_CFG_ADDR	0xCE58
+#define XE2HPD_C20_B_MPLLA_CFG_ADDR	0xCE4D
+#define XE2HPD_C20_A_MPLLB_CFG_ADDR	0xCCC2
+#define XE2HPD_C20_B_MPLLB_CFG_ADDR	0xCCB6
+
 /* C20 Phy VSwing Masks */
 #define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
 #define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
-- 
2.25.1

