Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F358A4A06
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A6F1122C9;
	Mon, 15 Apr 2024 08:14:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L1TPVpXA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C471122DA;
 Mon, 15 Apr 2024 08:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168855; x=1744704855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tuI1V2TwgJAZiVYu+Fb0b6J9YgVCqDRRD1i1AIwXfFw=;
 b=L1TPVpXAMcE/1LPrN8Tb7OVvreduU5Gk0z6OR6J0QEcJ1giGxeHQPPxU
 bXUWFyKzgcCnG522Jf3xh6o0wZFMB/GQgEBXLNnfBXYi7IS+oq9uPhdWo
 T9T8mLmevq1SkHHGMMULOwqcTp3uBHxXUBN8jtwQ1VE88bp3oOuuj36FP
 rhxFMWiSFU1/xxP1r3f2z5QkViiY7PwsWwDxJkm5zgXBp96wTCIhXCV9U
 LvRebDSb1rc9+42UfHef2kZMfuIku4vKspGlS2ZuXaSMw6dfTXVrhqJVI
 vPpZibkpwsrdkYpNsf9A/rkPFMn/9zb5jxntUwvwGjWb9OTSK3aOOpb/S A==;
X-CSE-ConnectionGUID: z3UKU+KSTEa37gW/ZPTdYA==
X-CSE-MsgGUID: VLmoTnCURIWFBoDCmxogZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096392"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096392"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:15 -0700
X-CSE-ConnectionGUID: DKSg0ohqR3KYpBhQPUvL9g==
X-CSE-MsgGUID: Sk2bWsfwQhu5+EvhEMKDUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400300"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:12 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: [PATCH v3 08/21] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Date: Mon, 15 Apr 2024 13:44:10 +0530
Message-Id: <20240415081423.495834-9-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

Xe2_HPD has different offsets for C20 PHY SRAM configuration context
location. Use the display version to select the right address.

Note that Xe2_LPD uses the same C20 SRAM offsets used by Xe_LPDP (i.e.
MTL's display). According to the BSpec, currently, only Xe2_HPD has
different offsets, so make sure it is the only display using them in the
driver.

v2:
* Redesigned how the right offsets are selected for different display
IP versions.

Bspec: 67610
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 65 ++++++++++++-------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 59 ++++++++++++++---
 2 files changed, 92 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 33a612892d94..9bf882b439f4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2161,6 +2161,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	bool cntx;
 	intel_wakeref_t wakeref;
 	int i;
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	wakeref = intel_cx0_phy_transaction_begin(encoder);
 
@@ -2170,42 +2171,50 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	/* Read Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
-			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-							       PHY_C20_B_TX_CNTX_CFG(i));
+			pll_state->tx[i] = intel_c20_sram_read(encoder,
+							       INTEL_CX0_LANE0,
+							       PHY_C20_B_TX_CNTX_CFG(i915, i));
 		else
-			pll_state->tx[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-							       PHY_C20_A_TX_CNTX_CFG(i));
+			pll_state->tx[i] = intel_c20_sram_read(encoder,
+							       INTEL_CX0_LANE0,
+							       PHY_C20_A_TX_CNTX_CFG(i915, i));
 	}
 
 	/* Read common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
-			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-								PHY_C20_B_CMN_CNTX_CFG(i));
+			pll_state->cmn[i] = intel_c20_sram_read(encoder,
+								INTEL_CX0_LANE0,
+								PHY_C20_B_CMN_CNTX_CFG(i915, i));
 		else
-			pll_state->cmn[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-								PHY_C20_A_CMN_CNTX_CFG(i));
+			pll_state->cmn[i] = intel_c20_sram_read(encoder,
+								INTEL_CX0_LANE0,
+								PHY_C20_A_CMN_CNTX_CFG(i915, i));
 	}
 
 	if (intel_c20phy_use_mpllb(pll_state)) {
 		/* MPLLB configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
-				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLB_CNTX_CFG(i));
+				pll_state->mpllb[i] = intel_c20_sram_read(encoder,
+									  INTEL_CX0_LANE0,
+									  PHY_C20_B_MPLLB_CNTX_CFG(i915, i));
 			else
-				pll_state->mpllb[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLB_CNTX_CFG(i));
+				pll_state->mpllb[i] = intel_c20_sram_read(encoder,
+									  INTEL_CX0_LANE0,
+									  PHY_C20_A_MPLLB_CNTX_CFG(i915, i));
 		}
 	} else {
 		/* MPLLA configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
-				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLA_CNTX_CFG(i));
+				pll_state->mplla[i] = intel_c20_sram_read(encoder,
+									  INTEL_CX0_LANE0,
+									  PHY_C20_B_MPLLA_CNTX_CFG(i915, i));
 			else
-				pll_state->mplla[i] = intel_c20_sram_read(encoder, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLA_CNTX_CFG(i));
+				pll_state->mplla[i] = intel_c20_sram_read(encoder,
+									  INTEL_CX0_LANE0,
+									  PHY_C20_A_MPLLA_CNTX_CFG(i915, i));
 		}
 	}
 
@@ -2363,17 +2372,25 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	/* 3.1 Tx configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
 		if (cntx)
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_A_TX_CNTX_CFG(i915, i),
+					     pll_state->tx[i]);
 		else
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_B_TX_CNTX_CFG(i915, i),
+					     pll_state->tx[i]);
 	}
 
 	/* 3.2 common configuration */
 	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
 		if (cntx)
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_A_CMN_CNTX_CFG(i915, i),
+					     pll_state->cmn[i]);
 		else
-			intel_c20_sram_write(encoder, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
+			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
+					     PHY_C20_B_CMN_CNTX_CFG(i915, i),
+					     pll_state->cmn[i]);
 	}
 
 	/* 3.3 mpllb or mplla configuration */
@@ -2381,22 +2398,22 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLB_CNTX_CFG(i),
+						     PHY_C20_A_MPLLB_CNTX_CFG(i915, i),
 						     pll_state->mpllb[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLB_CNTX_CFG(i),
+						     PHY_C20_B_MPLLB_CNTX_CFG(i915, i),
 						     pll_state->mpllb[i]);
 		}
 	} else {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLA_CNTX_CFG(i),
+						     PHY_C20_A_MPLLA_CNTX_CFG(i915, i),
 						     pll_state->mplla[i]);
 			else
 				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLA_CNTX_CFG(i),
+						     PHY_C20_B_MPLLA_CNTX_CFG(i915, i),
 						     pll_state->mplla[i]);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index bdd0c8c4ef97..23a79e911972 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -254,24 +254,67 @@
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
-#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+
+#define PHY_C20_A_TX_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_A_TX_CNTX_CFG_ADDR : MTL_C20_A_TX_CNTX_CFG_ADDR) - \
+		(idx))
+#define PHY_C20_B_TX_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_B_TX_CNTX_CFG_ADDR : MTL_C20_B_TX_CNTX_CFG_ADDR) - \
+		(idx))
 #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
-#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
-#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
-#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
-#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+#define PHY_C20_A_CMN_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_A_CMN_CNTX_CFG_ADDR : MTL_C20_A_CMN_CNTX_CFG_ADDR) - \
+		(idx))
+#define PHY_C20_B_CMN_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_B_CMN_CNTX_CFG_ADDR : MTL_C20_B_CMN_CNTX_CFG_ADDR) - \
+		(idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_A_MPLLA_CFG_ADDR : MTL_C20_A_MPLLA_CFG_ADDR) - \
+		(idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_B_MPLLA_CFG_ADDR : MTL_C20_B_MPLLA_CFG_ADDR) - \
+		(idx))
 #define   C20_MPLLA_FRACEN		REG_BIT(14)
 #define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
 #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
-#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
-#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+#define PHY_C20_A_MPLLB_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_A_MPLLB_CFG_ADDR : MTL_C20_A_MPLLB_CFG_ADDR) - \
+		(idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(i915, idx)	\
+		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
+		XE2HPD_C20_B_MPLLB_CFG_ADDR : MTL_C20_B_MPLLB_CFG_ADDR) - \
+		(idx))
 #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define   C20_MPLLB_FRACEN		REG_BIT(13)
 #define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
 #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
 #define   C20_PHY_USE_MPLLB		REG_BIT(7)
 
+#define MTL_C20_A_TX_CNTX_CFG_ADDR	0xCF2E
+#define MTL_C20_B_TX_CNTX_CFG_ADDR	0xCF2A
+#define MTL_C20_A_CMN_CNTX_CFG_ADDR	0xCDAA
+#define MTL_C20_B_CMN_CNTX_CFG_ADDR	0xCDA5
+#define MTL_C20_A_MPLLA_CFG_ADDR	0xCCF0
+#define MTL_C20_B_MPLLA_CFG_ADDR	0xCCE5
+#define MTL_C20_A_MPLLB_CFG_ADDR	0xCB5A
+#define MTL_C20_B_MPLLB_CFG_ADDR	0xCB4E
+
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

