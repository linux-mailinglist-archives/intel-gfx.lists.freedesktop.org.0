Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FEC4C9191
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098D910E759;
	Tue,  1 Mar 2022 17:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73B1D10E6B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155913; x=1677691913;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AOrGSkpkBjDI+3jhPCLrH1KpnnQInxGa7eYXWuElBBk=;
 b=S8xjIdX/ieSHwbBaBWAV7mn6tJv5MHIViVUJf3W2tdbIwXIOOxQfMwuv
 KHCBEk7CAAj31yi9833nUg184pjfEvSld6Rcge3MnS4J0ql5gNwUlny+1
 a3nIVjjDbVv/viSR621Jx8vTtuald7HO5fYBuSFms8MCh8AM6cHIKPX2V
 rr9656Ht9vU5cOboU+oJeqYI9SAhbPfOmvlRng+hvEm6DIFZIzYQL5nPj
 pamwLVpXfulLGXP+hlzbLw6IiTGKldA0ROXkFO1ITDI+5F8AknBQqJpoB
 UQO42EwvC9ua0EDSxY97WyvHLDVUyZe4kVwEbBKLnDxQNX6R63tSm2o4J Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="253383494"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="253383494"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:31:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="593674664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 01 Mar 2022 09:31:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:22 +0200
Message-Id: <20220301173128.6988-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Remove bxt m2_frac_en
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

Remove the pointless m2_frac_en from bxt_clk_div.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index bc26ebacae12..8beec5ec72f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -2087,7 +2087,6 @@ struct bxt_clk_div {
 	u32 p2;
 	u32 m2_int;
 	u32 m2_frac;
-	bool m2_frac_en;
 	u32 n;
 
 	int vco;
@@ -2095,13 +2094,13 @@ struct bxt_clk_div {
 
 /* pre-calculated values for DP linkrates */
 static const struct bxt_clk_div bxt_dp_clk_val[] = {
-	{ 162000, 4, 2, 32, 1677722, 1, 1 },
-	{ 270000, 4, 1, 27,       0, 0, 1 },
-	{ 540000, 2, 1, 27,       0, 0, 1 },
-	{ 216000, 3, 2, 32, 1677722, 1, 1 },
-	{ 243000, 4, 1, 24, 1258291, 1, 1 },
-	{ 324000, 4, 1, 32, 1677722, 1, 1 },
-	{ 432000, 3, 1, 32, 1677722, 1, 1 }
+	{ 162000, 4, 2, 32, 1677722, 1 },
+	{ 270000, 4, 1, 27,       0, 1 },
+	{ 540000, 2, 1, 27,       0, 1 },
+	{ 216000, 3, 2, 32, 1677722, 1 },
+	{ 243000, 4, 1, 24, 1258291, 1 },
+	{ 324000, 4, 1, 32, 1677722, 1 },
+	{ 432000, 3, 1, 32, 1677722, 1 }
 };
 
 static bool
@@ -2130,7 +2129,6 @@ bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
 	clk_div->n = best_clock.n;
 	clk_div->m2_int = best_clock.m2 >> 22;
 	clk_div->m2_frac = best_clock.m2 & ((1 << 22) - 1);
-	clk_div->m2_frac_en = clk_div->m2_frac != 0;
 
 	clk_div->vco = best_clock.vco;
 
@@ -2203,7 +2201,7 @@ static bool bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	dpll_hw_state->pll1 = PORT_PLL_N(clk_div->n);
 	dpll_hw_state->pll2 = clk_div->m2_frac;
 
-	if (clk_div->m2_frac_en)
+	if (clk_div->m2_frac)
 		dpll_hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;
 
 	dpll_hw_state->pll6 = prop_coef | PORT_PLL_INT_COEFF(int_coef);
-- 
2.34.1

