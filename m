Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75ED22F03
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jan 2026 08:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9136710E6DC;
	Thu, 15 Jan 2026 07:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z3WTRU1k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E4010E6D9;
 Thu, 15 Jan 2026 07:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768463474; x=1799999474;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S1Q1TlmCyX9A+dc4FoRakm9smZJuqrC02tXFqcGPhB0=;
 b=Z3WTRU1kh1FlnFvkToD0hf00/4uTxp7JU83KzPbz698td17x/r5L26Ft
 ltKOVhbfEp/heLRQLu1GfM2lKph+5xc6pMm1U9tIaDRntI+SuujENQhTT
 nYxGbnQN3TIE55LQeRf4YILr3AwxWriiizNiu83Z2W8OcFUG7EcciTrJI
 d7TdThWPABCfGkDYLpSHgoDx105YDKLf7s7rk7EiR6uI84HLjIMAmlcM4
 L9uTiIgSYyKFD0X2dr55rtK8Fvv1VDaGAPKijSnpsrmMRhob4GaaK8l4n
 KCZjPOQwzt1h/VW6wmoh0BCUBt5mprvJhvMGntTBDjzWVFOPRTnOyRg0B w==;
X-CSE-ConnectionGUID: dMMgky4QR/+d++xUWkiylw==
X-CSE-MsgGUID: FrAUDMz2THyIymIdH0ia0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="92436213"
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="92436213"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 23:51:14 -0800
X-CSE-ConnectionGUID: AMXCQJm3SC2xf9PYQ7N6Ig==
X-CSE-MsgGUID: 9EQl30c2TISFb10cpSM0Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,226,1763452800"; d="scan'208";a="204101749"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa010.jf.intel.com with ESMTP; 14 Jan 2026 23:51:12 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 05/15] drm/i915/cx0: Drop encoder from port clock
 calculation
Date: Thu, 15 Jan 2026 07:50:51 +0000
Message-ID: <20260115075101.2214842-6-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
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

For C10 and C20 we have unused encoder parameter passed
to port clock calculation function. Remove the encoder from
being passed to the port clock calculation function.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6447d7c80ffc..77378e057908 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2103,8 +2103,7 @@ static bool cx0pll_state_is_dp(const struct intel_cx0pll_state *pll_state)
 	return c20pll_state_is_dp(&pll_state->c20);
 }
 
-static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c10pll_state *pll_state)
+static int intel_c10pll_calc_port_clock(const struct intel_c10pll_state *pll_state)
 {
 	unsigned int frac_quot = 0, frac_rem = 0, frac_den = 1;
 	unsigned int multiplier, tx_clk_div, hdmi_div, refclk = 38400;
@@ -2135,8 +2134,7 @@ static bool intel_c20phy_use_mpllb(const struct intel_c20pll_state *state)
 	return state->tx[0] & C20_PHY_USE_MPLLB;
 }
 
-static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
-					const struct intel_c20pll_state *pll_state)
+static int intel_c20pll_calc_port_clock(const struct intel_c20pll_state *pll_state)
 {
 	unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
 	unsigned int multiplier, refclk = 38400;
@@ -2325,7 +2323,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
-	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c10pll_calc_port_clock(pll_state);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
 
@@ -2824,7 +2822,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 		}
 	}
 
-	pll_state->clock = intel_c20pll_calc_port_clock(encoder, pll_state);
+	pll_state->clock = intel_c20pll_calc_port_clock(pll_state);
 
 	intel_cx0_phy_transaction_end(encoder, wakeref);
 
@@ -3731,9 +3729,9 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
 				 const struct intel_cx0pll_state *pll_state)
 {
 	if (intel_encoder_is_c10phy(encoder))
-		return intel_c10pll_calc_port_clock(encoder, &pll_state->c10);
+		return intel_c10pll_calc_port_clock(&pll_state->c10);
 
-	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
+	return intel_c20pll_calc_port_clock(&pll_state->c20);
 }
 
 /*
-- 
2.43.0

