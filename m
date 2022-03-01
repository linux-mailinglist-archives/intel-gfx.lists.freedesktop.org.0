Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E27B74C9190
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1867410E6B9;
	Tue,  1 Mar 2022 17:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091AF10E6B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155913; x=1677691913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Yt3s9mPDU05VlJBJWqDTl8FgpNktUk4i5LPtNi1HBwI=;
 b=mIWSzy7MnT9lFMrtkDZmTgy1PiU0h91h5ZnHt2HHEDYNt1jp83kGACKY
 OGI3G6o899NxgA0hQX8n2gxKq37HIi6k2dtzguv25XCSUJRzUOG6dI41V
 z/BiXo+8pGJQIV79XIEHcmWvNPI8GG15CEbOpRC0Bn9AE6lzu7unlXfi0
 RI64scSZdc+cXmqIrr9jxDw6VZ6V3FlxekUe5abKunNN1+e1BHH5udrCz
 Wwen5mdts2o4sSrAR2etfPeTAxmIh3ZRTyRBbyIO9TupSGO4UA792beVs
 AvB4XHD4nJLOGn/yrwE+WDQI9pTBy1b5II445RTnE6IRdeCCz5W3pgumu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="277860443"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="277860443"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="545174507"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 01 Mar 2022 09:31:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:24 +0200
Message-Id: <20220301173128.6988-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Store the m2 divider as a whole
 in bxt_clk_div
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Get rid of the pointless m2 int vs. frac split in bxt_clk_div
and just store the whole divider as one.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 33 +++++++++++--------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 899aa42a858f..4a82e630cbec 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2085,8 +2085,7 @@ struct bxt_clk_div {
 	int clock;
 	u32 p1;
 	u32 p2;
-	u32 m2_int;
-	u32 m2_frac;
+	u32 m2;
 	u32 n;
 
 	int vco;
@@ -2094,13 +2093,20 @@ struct bxt_clk_div {
 
 /* pre-calculated values for DP linkrates */
 static const struct bxt_clk_div bxt_dp_clk_val[] = {
-	{ .clock = 162000, .p1 = 4, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 270000, .p1 = 4, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
-	{ .clock = 540000, .p1 = 2, .p2 = 1, .m2_int = 27, .m2_frac =       0, .n = 1, },
-	{ .clock = 216000, .p1 = 3, .p2 = 2, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 243000, .p1 = 4, .p2 = 1, .m2_int = 24, .m2_frac = 1258291, .n = 1, },
-	{ .clock = 324000, .p1 = 4, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
-	{ .clock = 432000, .p1 = 3, .p2 = 1, .m2_int = 32, .m2_frac = 1677722, .n = 1, },
+	{ .clock = 162000, .p1 = 4, .p2 = 2, .n = 1,
+	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
+	{ .clock = 270000, .p1 = 4, .p2 = 1, .n = 1,
+	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
+	{ .clock = 540000, .p1 = 2, .p2 = 1, .n = 1,
+	  .m2 = 0x6c00000 /* .m2_int = 27, m2_frac =       0 */ },
+	{ .clock = 216000, .p1 = 3, .p2 = 2, .n = 1,
+	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
+	{ .clock = 243000, .p1 = 4, .p2 = 1, .n = 1,
+	  .m2 = 0x6133333 /* .m2_int = 24, m2_frac = 1258291 */ },
+	{ .clock = 324000, .p1 = 4, .p2 = 1, .n = 1,
+	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
+	{ .clock = 432000, .p1 = 3, .p2 = 1, .n = 1,
+	  .m2 = 0x819999a /* .m2_int = 32, m2_frac = 1677722 */ },
 };
 
 static bool
@@ -2127,8 +2133,7 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 	clk_div->p2 = best_clock.p2;
 	drm_WARN_ON(&i915->drm, best_clock.m1 != 2);
 	clk_div->n = best_clock.n;
-	clk_div->m2_int = best_clock.m2 >> 22;
-	clk_div->m2_frac = best_clock.m2 & ((1 << 22) - 1);
+	clk_div->m2 = best_clock.m2;
 
 	clk_div->vco = best_clock.vco;
 
@@ -2197,11 +2202,11 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 		lanestagger = 0x02;
 
 	dpll_hw_state->ebb0 = PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div->p2);
-	dpll_hw_state->pll0 = clk_div->m2_int;
+	dpll_hw_state->pll0 = clk_div->m2 >> 22;
 	dpll_hw_state->pll1 = PORT_PLL_N(clk_div->n);
-	dpll_hw_state->pll2 = clk_div->m2_frac;
+	dpll_hw_state->pll2 = clk_div->m2 & 0x3fffff;
 
-	if (clk_div->m2_frac)
+	if (clk_div->m2 & 0x3fffff)
 		dpll_hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;
 
 	dpll_hw_state->pll6 = prop_coef | PORT_PLL_INT_COEFF(int_coef);
-- 
2.34.1

