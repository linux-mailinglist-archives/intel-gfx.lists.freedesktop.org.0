Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063E8B7E7D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80561112D76;
	Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3ycus8g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57FA9112D77;
 Tue, 30 Apr 2024 17:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498220; x=1746034220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SlyanrKjN/IS34vD0SpgwAXEeY5eVn3/daJY0YWKMkg=;
 b=B3ycus8g2FhpTuYQbsm/swk/bjjErPUvPmxRGM4NOb8zJotBpVOrAsxW
 VbxEJeP3IoKLHlmwQ/doFZf/Jei9bDQPyg7kZfm/HARCXDTTnYJyp2Vy3
 wgQQoStkA44+kzoTMYcubv5xUuvkvHw0m82VZ7QuQpGZ7MUs0S3nWmq3b
 nsSi/UGCiH34avJcwgxHFPGwkrYqvDyYPToP/fJowjSlRlGWc/nWk9H5z
 buFZD5ElfhIxa1bLb0woGmnJg4+fCdgpsC9m5yCgux+bSqmik1Yyz+82e
 0e2qEP417Y8/hzzL47cU+Lq40gTwUjsCt2UkVHUMxH1rDq67jZ7SL98yz w==;
X-CSE-ConnectionGUID: 7DjdwDPhQHmvbgewV3KgnQ==
X-CSE-MsgGUID: kAaBoaHoQDuON69MO9pQow==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741990"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741990"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:19 -0700
X-CSE-ConnectionGUID: GGujrcd3ReeFM0GQx9Qw7g==
X-CSE-MsgGUID: 55epljsHQCSFKTFLPSEPVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617828"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:20 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Clint Taylor <Clinton.A.Taylor@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 06/19] drm/i915/xe2hpd: Add new C20 PHY SRAM address
Date: Tue, 30 Apr 2024 10:28:37 -0700
Message-Id: <20240430172850.1881525-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Xe2_HPD has different offsets for C20 PHY SRAM configuration context
location. Use the display version to select the right address.

Note that Xe2_LPD uses the same C20 SRAM offsets used by Xe_LPDP (i.e.
MTL's display). According to the BSpec, currently, only Xe2_HPD has
different offsets, so make sure it is the only display using them in the
driver.

v2:
* Redesigned how the right offsets are selected for different display
IP versions.
v3: Fix white space error(RK)

Bspec: 67610
Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 65 ++++++++++++-------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 48 +++++++++++---
 2 files changed, 81 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 2fee024d642b..866b943311f1 100644
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
index bdd0c8c4ef97..ab3ae110b68f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -254,18 +254,50 @@
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
-#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
+
+#define _MTL_C20_A_TX_CNTX_CFG	0xCF2E
+#define _MTL_C20_B_TX_CNTX_CFG	0xCF2A
+#define _MTL_C20_A_CMN_CNTX_CFG	0xCDAA
+#define _MTL_C20_B_CMN_CNTX_CFG	0xCDA5
+#define _MTL_C20_A_MPLLA_CFG	0xCCF0
+#define _MTL_C20_B_MPLLA_CFG	0xCCE5
+#define _MTL_C20_A_MPLLB_CFG	0xCB5A
+#define _MTL_C20_B_MPLLB_CFG	0xCB4E
+
+#define _XE2HPD_C20_A_TX_CNTX_CFG	0xCF5E
+#define _XE2HPD_C20_B_TX_CNTX_CFG	0xCF5A
+#define _XE2HPD_C20_A_CMN_CNTX_CFG	0xCE8E
+#define _XE2HPD_C20_B_CMN_CNTX_CFG	0xCE89
+#define _XE2HPD_C20_A_MPLLA_CFG		0xCE58
+#define _XE2HPD_C20_B_MPLLA_CFG		0xCE4D
+#define _XE2HPD_C20_A_MPLLB_CFG		0xCCC2
+#define _XE2HPD_C20_B_MPLLB_CFG		0xCCB6
+
+#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
+
+#define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))
+#define PHY_C20_B_TX_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_TX_CNTX_CFG : _MTL_C20_B_TX_CNTX_CFG) - (idx))
 #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
-#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
-#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
-#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
-#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
+
+#define PHY_C20_A_CMN_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_CMN_CNTX_CFG : _MTL_C20_A_CMN_CNTX_CFG) - (idx))
+#define PHY_C20_B_CMN_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_CMN_CNTX_CFG : _MTL_C20_B_CMN_CNTX_CFG) - (idx))
+#define PHY_C20_A_MPLLA_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_MPLLA_CFG : _MTL_C20_A_MPLLA_CFG) - (idx))
+#define PHY_C20_B_MPLLA_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_MPLLA_CFG : _MTL_C20_B_MPLLA_CFG) - (idx))
 #define   C20_MPLLA_FRACEN		REG_BIT(14)
 #define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
 #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
-#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
-#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
+
+#define PHY_C20_A_MPLLB_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_MPLLB_CFG : _MTL_C20_A_MPLLB_CFG) - (idx))
+#define PHY_C20_B_MPLLB_CNTX_CFG(i915, idx) \
+		((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_B_MPLLB_CFG : _MTL_C20_B_MPLLB_CFG) - (idx))
+
 #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
 #define   C20_MPLLB_FRACEN		REG_BIT(13)
 #define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
-- 
2.34.1

