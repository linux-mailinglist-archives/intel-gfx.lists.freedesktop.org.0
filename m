Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28960896E09
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8356B112A0B;
	Wed,  3 Apr 2024 11:22:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RKyE3tfz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6C110EF3B;
 Wed,  3 Apr 2024 11:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143369; x=1743679369;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CboQQp1pv9ZFmZrda2W5aIS+LzDpsqCiBn7sdOpM8tc=;
 b=RKyE3tfzF7vzu8VUfNx32/2Mv8T28RzOMVGoag6qyzFDvz+6/DFh8m+c
 0oPXxPcCif3KhYemLYF0BBEPJzMaMhjvJv0juALxtgzKbDGR2PUKcG/7Q
 cVG/yOdzZe4wGND2pgbR89GBXrl+ysBPA3cXu5U9eZoSRHgsvSqDC/MMy
 1ZYZ4L8EAyXmkBZKiQBMsKUhcUbs6RD2DR38LJrfiwQppO2qp6WjL1lS0
 3NvdaWnemHwXI1IrMzrryuWvYeZ9DyMaTll4Y4n1Ha0kZqQO+7MUoa3U0
 IkqpYO8xHeWs7/2ImyMoRUx2onCriv2e3yxMX+se2K1tzTPqKcFZus3VD w==;
X-CSE-ConnectionGUID: C6SQZ3hLTS2gs3u46xIQ4g==
X-CSE-MsgGUID: m+9WRWppTLOKOaNGWjYpRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24823978"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24823978"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:49 -0700
X-CSE-ConnectionGUID: W/+QsBjoQiSag7XgFqYnEg==
X-CSE-MsgGUID: zjBzS+hJSrCufwfrQEBq0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358486"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:47 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>
Subject: [PATCH v2 01/25] drm/i915/display: Prepare to handle new C20 PLL
 register address
Date: Wed,  3 Apr 2024 16:52:29 +0530
Message-Id: <20240403112253.1432390-2-balasubramani.vivekanandan@intel.com>
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

New platforms have different addresses for C20 PLL registers. This patch
prepares the driver to work with different register addresses.
New structure `struct intel_c20pll_reg` is created to hold the register
addresses for each platform with different register address.

CC: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 53 +++++++++++++------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 36 ++++++++++---
 2 files changed, 65 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a2c4bf33155f..13a2e3db2812 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -759,6 +759,17 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
 	NULL,
 };
 
+static struct intel_c20pll_reg mtl_c20_reg = {
+	.tx_cnt_a = MTL_C20_A_TX_CNTX_CFG_ADDR,
+	.tx_cnt_b = MTL_C20_B_TX_CNTX_CFG_ADDR,
+	.cmn_cnt_a = MTL_C20_A_CMN_CNTX_CFG_ADDR,
+	.cmn_cnt_b = MTL_C20_B_CMN_CNTX_CFG_ADDR,
+	.mplla_a = MTL_C20_A_MPLLA_CFG_ADDR,
+	.mplla_b = MTL_C20_B_MPLLA_CFG_ADDR,
+	.mpllb_a = MTL_C20_A_MPLLB_CFG_ADDR,
+	.mpllb_b = MTL_C20_B_MPLLB_CFG_ADDR
+};
+
 /* C20 basic DP 1.4 tables */
 static const struct intel_c20pll_state mtl_c20_dp_rbr = {
 	.clock = 162000,
@@ -2161,6 +2172,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
+	struct intel_c20pll_reg *pll_reg = &mtl_c20_reg;
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -2171,20 +2183,20 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
 			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-							       PHY_C20_B_TX_CNTX_CFG(i));
+							       PHY_C20_B_TX_CNTX_CFG(pll_reg, i));
 		else
 			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-							       PHY_C20_A_TX_CNTX_CFG(i));
+							       PHY_C20_A_TX_CNTX_CFG(pll_reg, i));
 	}
 
 	/* Read common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
 			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-								PHY_C20_B_CMN_CNTX_CFG(i));
+								PHY_C20_B_CMN_CNTX_CFG(pll_reg, i));
 		else
 			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-								PHY_C20_A_CMN_CNTX_CFG(i));
+								PHY_C20_A_CMN_CNTX_CFG(pll_reg, i));
 	}
 
 	if (intel_c20phy_use_mpllb(pll_state)) {
@@ -2192,20 +2204,20 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLB_CNTX_CFG(i));
+									  PHY_C20_B_MPLLB_CNTX_CFG(pll_reg, i));
 			else
 				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLB_CNTX_CFG(i));
+									  PHY_C20_A_MPLLB_CNTX_CFG(pll_reg, i));
 		}
 	} else {
 		/* MPLLA configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLA_CNTX_CFG(i));
+									  PHY_C20_B_MPLLA_CNTX_CFG(pll_reg, i));
 			else
 				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLA_CNTX_CFG(i));
+									  PHY_C20_A_MPLLA_CNTX_CFG(pll_reg, i));
 		}
 	}
 
@@ -2341,6 +2353,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	u32 clock = crtc_state->port_clock;
 	bool cntx;
 	int i;
+	const struct intel_c20pll_reg *pll_reg = &mtl_c20_reg;
 
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		dp = true;
@@ -2363,17 +2376,25 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	/* 3.1 Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_A_TX_CNTX_CFG(pll_reg, i),
+					     pll_state->tx[i]);
 		else
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_B_TX_CNTX_CFG(pll_reg, i),
+					     pll_state->tx[i]);
 	}
 
 	/* 3.2 common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_A_CMN_CNTX_CFG(pll_reg, i),
+					     pll_state->cmn[i]);
 		else
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_B_CMN_CNTX_CFG(pll_reg, i),
+					     pll_state->cmn[i]);
 	}
 
 	/* 3.3 mpllb or mplla configuration */
@@ -2381,22 +2402,22 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLB_CNTX_CFG(i),
+						     PHY_C20_A_MPLLB_CNTX_CFG(pll_reg, i),
 						     pll_state->mpllb[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLB_CNTX_CFG(i),
+						     PHY_C20_B_MPLLB_CNTX_CFG(pll_reg, i),
 						     pll_state->mpllb[i]);
 		}
 	} else {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLA_CNTX_CFG(i),
+						     PHY_C20_A_MPLLA_CNTX_CFG(pll_reg, i),
 						     pll_state->mplla[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLA_CNTX_CFG(i),
+						     PHY_C20_B_MPLLA_CNTX_CFG(pll_reg, i),
 						     pll_state->mplla[i]);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index bdd0c8c4ef97..882b98dc347b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -254,24 +254,44 @@
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
-#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+#define PHY_C20_A_TX_CNTX_CFG(reg, idx)		((reg)->tx_cnt_a - (idx))
+#define PHY_C20_B_TX_CNTX_CFG(reg, idx)		((reg)->tx_cnt_b - (idx))
 #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
-#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
-#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
-#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
-#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+#define PHY_C20_A_CMN_CNTX_CFG(reg, idx)	((reg)->cmn_cnt_a - (idx))
+#define PHY_C20_B_CMN_CNTX_CFG(reg, idx)	((reg)->cmn_cnt_b - (idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(reg, idx)	((reg)->mplla_a - (idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(reg, idx)	((reg)->mplla_b - (idx))
 #define   C20_MPLLA_FRACEN		REG_BIT(14)
 #define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
 #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
-#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
-#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+#define PHY_C20_A_MPLLB_CNTX_CFG(reg, idx)	((reg)->mpllb_a - (idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(reg, idx)	((reg)->mpllb_b - (idx))
 #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define   C20_MPLLB_FRACEN		REG_BIT(13)
 #define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
 #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
 #define   C20_PHY_USE_MPLLB		REG_BIT(7)
 
+struct intel_c20pll_reg {
+	u16 tx_cnt_a;
+	u16 tx_cnt_b;
+	u16 cmn_cnt_a;
+	u16 cmn_cnt_b;
+	u16 mplla_a;
+	u16 mplla_b;
+	u16 mpllb_a;
+	u16 mpllb_b;
+};
+
+#define MTL_C20_A_TX_CNTX_CFG_ADDR	0xCF2E
+#define MTL_C20_B_TX_CNTX_CFG_ADDR	0xCF2A
+#define MTL_C20_A_CMN_CNTX_CFG_ADDR	0xCDAA
+#define MTL_C20_B_CMN_CNTX_CFG_ADDR	0xCDA5
+#define MTL_C20_A_MPLLA_CFG_ADDR	0xCCF0
+#define MTL_C20_B_MPLLA_CFG_ADDR	0xCCE5
+#define MTL_C20_A_MPLLB_CFG_ADDR	0xCB5A
+#define MTL_C20_B_MPLLB_CFG_ADDR	0xCB4E
+
 /* C20 Phy VSwing Masks */
 #define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
 #define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)
-- 
2.25.1

