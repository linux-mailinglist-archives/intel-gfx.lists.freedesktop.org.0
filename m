Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376658252E1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 12:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A36610E5DA;
	Fri,  5 Jan 2024 11:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB8310E5DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 11:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704454153; x=1735990153;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lKATAlZ7kn9CxRczj7iacj4ajq5gMziSgx67AGAuEa4=;
 b=eymZCxACyQG+2h9kDNNACW2Yygygvc7IbN5KXijFwMxGm7KP5y7f7LRN
 sxSt/HkCffNtz6uKFp3DMsWpec60TarOlOhMjsVx8rjWWHOosIQoLGFvN
 nI47iTdhEsHBSbbmoQgqR2iIsFQ6+8Uh8nFiuC/L/RqZMq1fNm36ahiGx
 naH4gHQBPGyNYFXSoRY5juIAV42I27IOgC9c/eU61//bQ4X84wZ+srecI
 EGquIakkCOsuzNX1745eFCHUwELXGWle9YUqJQRlbOt3g0N4EtBCA5KUC
 PnkUgSIfUcLfkXKOZNQDbQ6fK1oSlQYcc+T11tnxHZV+ZNrqHpfaaXy5B w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="394661601"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="394661601"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 03:29:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="871216128"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="871216128"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2024 03:29:11 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/display: Use helper to select C20 MPLLA/B
Date: Fri,  5 Jan 2024 13:22:43 +0200
Message-Id: <20240105112243.224199-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
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

We used to select between MPLLA/B with the following

state->tx[0] & C20_PHY_USE_MPLLB

Since this is used a few places within C20 PLL setting,
let's introduce a helper function to clean up the code
a bit.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ce1bddf74a82..e67c25975947 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2096,6 +2096,11 @@ int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
 	return intel_c20pll_calc_state(crtc_state, encoder);
 }
 
+static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
+{
+	return state->tx[0] & C20_PHY_USE_MPLLB;
+}
+
 static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 					const struct intel_c20pll_state *pll_state)
 {
@@ -2108,7 +2113,7 @@ static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
 	unsigned int tx_rate_mult;
 	unsigned int tx_rate = REG_FIELD_GET(C20_PHY_TX_RATE, pll_state->tx[0]);
 
-	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
+	if (intel_c20phy_use_mpllb(pll_state)) {
 		tx_rate_mult = 1;
 		frac_en = REG_FIELD_GET(C20_MPLLB_FRACEN, pll_state->mpllb[6]);
 		frac_quot = pll_state->mpllb[8];
@@ -2174,7 +2179,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 								PHY_C20_A_CMN_CNTX_CFG(i));
 	}
 
-	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
+	if (intel_c20phy_use_mpllb(pll_state)) {
 		/* MPLLB configuration */
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
@@ -2212,7 +2217,7 @@ void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
 	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
 		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
 
-	if (hw_state->tx[0] & C20_PHY_USE_MPLLB) {
+	if (intel_c20phy_use_mpllb(hw_state)) {
 		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
 			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
 	} else {
@@ -2364,7 +2369,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
 	}
 
 	/* 3.3 mpllb or mplla configuration */
-	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
+	if (intel_c20phy_use_mpllb(pll_state)) {
 		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
 			if (cntx)
 				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
@@ -3063,8 +3068,8 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct intel_c20pll_state *mpll_sw_state = &state->cx0pll_state.c20;
-	bool sw_use_mpllb = mpll_sw_state->tx[0] & C20_PHY_USE_MPLLB;
-	bool hw_use_mpllb = mpll_hw_state->tx[0] & C20_PHY_USE_MPLLB;
+	bool sw_use_mpllb = intel_c20phy_use_mpllb(mpll_sw_state);
+	bool hw_use_mpllb = intel_c20phy_use_mpllb(mpll_hw_state);
 	int i;
 
 	I915_STATE_WARN(i915, mpll_hw_state->clock != mpll_sw_state->clock,
-- 
2.34.1

