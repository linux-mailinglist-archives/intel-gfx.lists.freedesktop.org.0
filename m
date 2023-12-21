Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C86181B4FE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 12:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 305E710E34D;
	Thu, 21 Dec 2023 11:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84B110E34D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 11:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703158518; x=1734694518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nm65K1A6jVgVIVG7UmywCr82jCrt3s9/S0X9RsKeIFg=;
 b=Vc64VKRs9HEVRDWOqtc8YGS9Qge3TBbvbsqIXyEAS6FD/nhiUFrT7o9b
 yjge7JHUdEqIsN/h5G715FQi8zgHRNxzsu9j8CLZtgDAiaW5tJmyAveDq
 zayrUoyYrkFLUW/iBYV8FEqEIukN6GhAiKNCkzKKrEltzAI4QYOJcBDpE
 wXEEaTbqgLoryWvSylbxwOhr87xNEytRHHA34PeYswR9ETsPPJGFUSNGK
 VqVW4Igb4efXxixs93tXOd4Ke8KcZwryl70rcUJ45QGX6XbGy4VQQUeYq
 SUv2QvoZAdQqqqD/4qrbvlpcM/R0exiIRLTUrjoDbOr2zlCBv/qvl8ID7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="394854262"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="394854262"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 03:35:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="842605964"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="842605964"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2023 03:35:17 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/3] drm/i915/display: Cleanup mplla/mpllb selection
Date: Thu, 21 Dec 2023 13:28:43 +0200
Message-Id: <20231221112843.27519-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231221112843.27519-1-mika.kahola@intel.com>
References: <20231221112843.27519-1-mika.kahola@intel.com>
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

The function intel_c20_use_mplla() is not really
widely used and can be replaced with the more suitable

pll->tx[0] & C20_PHY_USE_MPLLB

expression. Let's remove the intel_c20_use_mplla()
alltogether and replace mplla/mpllb selection by
checking mpllb bit.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 39 ++++++++------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index fc7211675b2f..d0b6b4e439e1 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2096,15 +2096,6 @@ int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 	return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
-static bool intel_c20_use_mplla(u32 clock)
-{
-	/* 10G and 20G rates use MPLLA */
-	if (clock == 1000000 || clock == 2000000)
-		return true;
-
-	return false;
-}
-
 static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 					const struct intel_c20pll_state *pll_state)
 {
@@ -2221,12 +2212,12 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
 		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
-	if (intel_c20_use_mplla(hw_state->clock)) {
-		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
-			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
-	} else {
+	if (hw_state->tx[0] & C20_PHY_USE_MPLLB) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
 			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+	} else {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
+			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
 	}
 }
 
@@ -2373,27 +2364,27 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	}
 
 	/* 3.3 mpllb or mplla configuration */
-	if (intel_c20_use_mplla(clock)) {
-		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
+	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
+		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLA_CNTX_CFG(i),
-						     pll_state->mplla[i]);
+						     PHY_C20_A_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
 			else
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLA_CNTX_CFG(i),
-						     pll_state->mplla[i]);
+						     PHY_C20_B_MPLLB_CNTX_CFG(i),
+						     pll_state->mpllb[i]);
 		}
 	} else {
-		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
+		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
 			if (cntx)
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
-						     PHY_C20_A_MPLLB_CNTX_CFG(i),
-						     pll_state->mpllb[i]);
+						     PHY_C20_A_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
 			else
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
-						     PHY_C20_B_MPLLB_CNTX_CFG(i),
-						     pll_state->mpllb[i]);
+						     PHY_C20_B_MPLLA_CNTX_CFG(i),
+						     pll_state->mplla[i]);
 		}
 	}
 
-- 
2.34.1

