Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1A803222
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 13:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09AC10E19D;
	Mon,  4 Dec 2023 12:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4EF10E39D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701691533; x=1733227533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2WJQ1MtcjMupOYL4iwxFTGQ0ZGHNd/7VML3wW6qlZyc=;
 b=Lo7czKi7fKqZs+ORODFjqsdocjMQ1RXarFbcJvPDOQT3sCUyoXKxUnV5
 CGMLVQw0UtMhIqHcsxd2aJ/UXjCmkgS1P1i9GSNNAJp4TntkyVPgG+X7c
 Oo4cyOBqrrLt56xwQVnxrlcKOCTEcknG6BUUc9CzgGPfnrgCqf05ukDyA
 n9gmzjba03AAxDiClaz/3TzCo8pS8Ou6k7PGD1wL6yRnI9G+Fry1zeAy/
 u2TJtjXNPiOKiJ3yd6RSMqBumzkNOlWKGoWLiWtPy7ytuLwNDipQYj0J8
 xV0J+GT4RdQt9IG0R7R/mw1MAJvl1BcI6gSQFAMILzqI1B2Zowd5Yq9w8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="460216917"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="460216917"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 04:05:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="836565370"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="836565370"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 04 Dec 2023 04:05:20 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Dec 2023 13:58:54 +0200
Message-Id: <20231204115856.176240-2-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204115856.176240-1-mika.kahola@intel.com>
References: <20231204115856.176240-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Move C20 HW readout
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

Moving intel_c20pll_readout_hw_state() for better place
to better suit for upcoming changes.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 116 +++++++++----------
 1 file changed, 58 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 5fbec5784b83..2e6412fc2258 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2123,64 +2123,6 @@ static bool intel_c20_use_mplla(u32 clock)
 	return false;
 }
 
-static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
-					  struct intel_c20pll_state *pll_state)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	bool cntx;
-	intel_wakeref_t wakeref;
-	int i;
-
-	wakeref = intel_cx0_phy_transaction_begin(encoder);
-
-	/* 1. Read current context selection */
-	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
-
-	/* Read Tx configuration */
-	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
-		if (cntx)
-			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-							       PHY_C20_B_TX_CNTX_CFG(i));
-		else
-			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-							       PHY_C20_A_TX_CNTX_CFG(i));
-	}
-
-	/* Read common configuration */
-	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
-		if (cntx)
-			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-								PHY_C20_B_CMN_CNTX_CFG(i));
-		else
-			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-								PHY_C20_A_CMN_CNTX_CFG(i));
-	}
-
-	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
-		/* MPLLB configuration */
-		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
-			if (cntx)
-				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLB_CNTX_CFG(i));
-			else
-				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLB_CNTX_CFG(i));
-		}
-	} else {
-		/* MPLLA configuration */
-		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
-			if (cntx)
-				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-									  PHY_C20_B_MPLLA_CNTX_CFG(i));
-			else
-				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
-									  PHY_C20_A_MPLLA_CNTX_CFG(i));
-		}
-	}
-
-	intel_cx0_phy_transaction_end(encoder, wakeref);
-}
-
 void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 				const struct intel_c20pll_state *hw_state)
 {
@@ -2503,6 +2445,64 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		     XELPDP_SSC_ENABLE_PLLB, val);
 }
 
+static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
+					  struct intel_c20pll_state *pll_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	bool cntx;
+	intel_wakeref_t wakeref;
+	int i;
+
+	wakeref = intel_cx0_phy_transaction_begin(encoder);
+
+	/* 1. Read current context selection */
+	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
+
+	/* Read Tx configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
+		if (cntx)
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_B_TX_CNTX_CFG(i));
+		else
+			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+							       PHY_C20_A_TX_CNTX_CFG(i));
+	}
+
+	/* Read common configuration */
+	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
+		if (cntx)
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								PHY_C20_B_CMN_CNTX_CFG(i));
+		else
+			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+								PHY_C20_A_CMN_CNTX_CFG(i));
+	}
+
+	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
+		/* MPLLB configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+			if (cntx)
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+									  PHY_C20_B_MPLLB_CNTX_CFG(i));
+			else
+				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+									  PHY_C20_A_MPLLB_CNTX_CFG(i));
+		}
+	} else {
+		/* MPLLA configuration */
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+			if (cntx)
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+									  PHY_C20_B_MPLLA_CNTX_CFG(i));
+			else
+				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
+									  PHY_C20_A_MPLLA_CNTX_CFG(i));
+		}
+	}
+
+	intel_cx0_phy_transaction_end(encoder, wakeref);
+}
+
 static u32 intel_cx0_get_powerdown_update(u8 lane_mask)
 {
 	u32 val = 0;
-- 
2.34.1

