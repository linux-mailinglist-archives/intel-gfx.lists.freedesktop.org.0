Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C304A8A359F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A3F10F7A3;
	Fri, 12 Apr 2024 18:27:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QEa9Fi7o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC7410F7A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946437; x=1744482437;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dEL7Gyt9+2FoDn0FM9zPvnMbvt1HnptY5RHirXCMrV8=;
 b=QEa9Fi7oDs6/KBCGzH9oeAh2yGqor/gBekkgICyqhYdOuhfYjPVc3LSV
 CfCkvlDwjzvs5Yw3jAdit3ookElO0TZVdHWR8pRHJg7dwDxKr5ENTa1Cw
 0T1Fxz8b+KobjOi78LU+1R02alHnU8Y5L4e9U4EOamQBk9+RvvMlbVc4X
 8UWPs3X+uqoH/kD3FwDGigGc4Xjfu9JKgEolu8ixM9DqF2BDpN7vUKCHO
 GXXqBIBY58HHVyVhcE94zEO5Vb/d2iN2OeaZDB5CH5ogAep+p919M22B/
 W31nShROCMU8FB2YlweAAlBY4yf1OqAVMuGNHtZthIEcrsrq/5QbFmkYZ Q==;
X-CSE-ConnectionGUID: H20fxRQCT/CI+Iu8Slt2+Q==
X-CSE-MsgGUID: VzG35GOGRq2eiPZELmcTUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560509"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560509"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:17 -0700
X-CSE-ConnectionGUID: w321JFizQZCePQjat5NmhQ==
X-CSE-MsgGUID: hB9fPKXDSzyrQtDrkeu6LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394531"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/18] drm/i915: Rename PLL hw_state variables/arguments
Date: Fri, 12 Apr 2024 21:26:48 +0300
Message-ID: <20240412182703.19916-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have zero consistency in out PLL state naming scheme. Try
to unify things a bit by using 'dpll_hw_state' for high level
stuff and just 'hw_state' for low level stuff. Currently both
are the same, but I want to unionize intel_dpll_hw_state at
which point using different names can make it more clear whether
we're talking about the whole union or just the embedded platform
specific struct.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 223 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   6 +-
 2 files changed, 115 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9ff6c4cc2e4b..5203c538672c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -81,7 +81,7 @@ struct intel_shared_dpll_funcs {
 	 */
 	bool (*get_hw_state)(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll,
-			     struct intel_dpll_hw_state *hw_state);
+			     struct intel_dpll_hw_state *dpll_hw_state);
 
 	/*
 	 * Hook for calculating the pll's output frequency based on its passed
@@ -89,7 +89,7 @@ struct intel_shared_dpll_funcs {
 	 */
 	int (*get_freq)(struct drm_i915_private *i915,
 			const struct intel_shared_dpll *pll,
-			const struct intel_dpll_hw_state *pll_state);
+			const struct intel_dpll_hw_state *dpll_hw_state);
 };
 
 struct intel_dpll_mgr {
@@ -108,7 +108,7 @@ struct intel_dpll_mgr {
 				   struct intel_encoder *encoder);
 	void (*update_ref_clks)(struct drm_i915_private *i915);
 	void (*dump_hw_state)(struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state);
+			      const struct intel_dpll_hw_state *dpll_hw_state);
 	bool (*compare_hw_state)(const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
 };
@@ -352,7 +352,7 @@ intel_dpll_mask_all(struct drm_i915_private *i915)
 static struct intel_shared_dpll *
 intel_find_shared_dpll(struct intel_atomic_state *state,
 		       const struct intel_crtc *crtc,
-		       const struct intel_dpll_hw_state *pll_state,
+		       const struct intel_dpll_hw_state *dpll_hw_state,
 		       unsigned long dpll_mask)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
@@ -379,9 +379,9 @@ intel_find_shared_dpll(struct intel_atomic_state *state,
 			continue;
 		}
 
-		if (memcmp(pll_state,
+		if (memcmp(dpll_hw_state,
 			   &shared_dpll[pll->index].hw_state,
-			   sizeof(*pll_state)) == 0) {
+			   sizeof(*dpll_hw_state)) == 0) {
 			drm_dbg_kms(&i915->drm,
 				    "[CRTC:%d:%s] sharing existing %s (pipe mask 0x%x, active 0x%x)\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -430,14 +430,14 @@ static void
 intel_reference_shared_dpll(struct intel_atomic_state *state,
 			    const struct intel_crtc *crtc,
 			    const struct intel_shared_dpll *pll,
-			    const struct intel_dpll_hw_state *pll_state)
+			    const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct intel_shared_dpll_state *shared_dpll;
 
 	shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 
 	if (shared_dpll[pll->index].pipe_mask == 0)
-		shared_dpll[pll->index].hw_state = *pll_state;
+		shared_dpll[pll->index].hw_state = *dpll_hw_state;
 
 	intel_reference_shared_dpll_crtc(crtc, pll, &shared_dpll[pll->index]);
 }
@@ -974,11 +974,11 @@ hsw_ddi_calculate_wrpll(int clock /* in Hz */,
 
 static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
+				  const struct intel_dpll_hw_state *hw_state)
 {
 	int refclk;
 	int n, p, r;
-	u32 wrpll = pll_state->wrpll;
+	u32 wrpll = hw_state->wrpll;
 
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
@@ -1098,7 +1098,7 @@ hsw_ddi_lcpll_get_dpll(struct intel_crtc_state *crtc_state)
 
 static int hsw_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
+				  const struct intel_dpll_hw_state *hw_state)
 {
 	int link_clock = 0;
 
@@ -1149,11 +1149,11 @@ hsw_ddi_spll_get_dpll(struct intel_atomic_state *state,
 
 static int hsw_ddi_spll_get_freq(struct drm_i915_private *i915,
 				 const struct intel_shared_dpll *pll,
-				 const struct intel_dpll_hw_state *pll_state)
+				 const struct intel_dpll_hw_state *hw_state)
 {
 	int link_clock = 0;
 
-	switch (pll_state->spll & SPLL_FREQ_MASK) {
+	switch (hw_state->spll & SPLL_FREQ_MASK) {
 	case SPLL_FREQ_810MHz:
 		link_clock = 81000;
 		break;
@@ -1694,16 +1694,16 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 
 static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
+				  const struct intel_dpll_hw_state *hw_state)
 {
 	int ref_clock = i915->display.dpll.ref_clks.nssc;
 	u32 p0, p1, p2, dco_freq;
 
-	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
-	p2 = pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;
+	p0 = hw_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
+	p2 = hw_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;
 
-	if (pll_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
+	if (hw_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1))
+		p1 = (hw_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
 	else
 		p1 = 1;
 
@@ -1751,10 +1751,10 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 		return 0;
 	}
 
-	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK) *
+	dco_freq = (hw_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK) *
 		   ref_clock;
 
-	dco_freq += ((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
+	dco_freq += ((hw_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
 		    ref_clock / 0x8000;
 
 	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
@@ -1842,11 +1842,11 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 
 static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll,
-				  const struct intel_dpll_hw_state *pll_state)
+				  const struct intel_dpll_hw_state *hw_state)
 {
 	int link_clock = 0;
 
-	switch ((pll_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0)) >>
+	switch ((hw_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0)) >>
 		DPLL_CTRL1_LINK_RATE_SHIFT(0)) {
 	case DPLL_CTRL1_LINK_RATE_810:
 		link_clock = 81000;
@@ -1920,16 +1920,16 @@ static int skl_get_dpll(struct intel_atomic_state *state,
 
 static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 				const struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *pll_state)
+				const struct intel_dpll_hw_state *hw_state)
 {
 	/*
 	 * ctrl1 register is already shifted for each pll, just use 0 to get
 	 * the internal shift for each field
 	 */
-	if (pll_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
-		return skl_ddi_wrpll_get_freq(i915, pll, pll_state);
+	if (hw_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
+		return skl_ddi_wrpll_get_freq(i915, pll, hw_state);
 	else
-		return skl_ddi_lcpll_get_freq(i915, pll, pll_state);
+		return skl_ddi_lcpll_get_freq(i915, pll, hw_state);
 }
 
 static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
@@ -2241,7 +2241,7 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 				     const struct dpll *clk_div)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_dpll_hw_state *dpll_hw_state = &crtc_state->dpll_hw_state;
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	int clock = crtc_state->port_clock;
 	int vco = clk_div->vco;
 	u32 prop_coef, int_coef, gain_ctl, targ_cnt;
@@ -2279,45 +2279,46 @@ static int bxt_ddi_set_dpll_hw_state(struct intel_crtc_state *crtc_state,
 	else
 		lanestagger = 0x02;
 
-	dpll_hw_state->ebb0 = PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div->p2);
-	dpll_hw_state->pll0 = PORT_PLL_M2_INT(clk_div->m2 >> 22);
-	dpll_hw_state->pll1 = PORT_PLL_N(clk_div->n);
-	dpll_hw_state->pll2 = PORT_PLL_M2_FRAC(clk_div->m2 & 0x3fffff);
+	hw_state->ebb0 = PORT_PLL_P1(clk_div->p1) | PORT_PLL_P2(clk_div->p2);
+	hw_state->pll0 = PORT_PLL_M2_INT(clk_div->m2 >> 22);
+	hw_state->pll1 = PORT_PLL_N(clk_div->n);
+	hw_state->pll2 = PORT_PLL_M2_FRAC(clk_div->m2 & 0x3fffff);
 
 	if (clk_div->m2 & 0x3fffff)
-		dpll_hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;
+		hw_state->pll3 = PORT_PLL_M2_FRAC_ENABLE;
 
-	dpll_hw_state->pll6 = PORT_PLL_PROP_COEFF(prop_coef) |
+	hw_state->pll6 = PORT_PLL_PROP_COEFF(prop_coef) |
 		PORT_PLL_INT_COEFF(int_coef) |
 		PORT_PLL_GAIN_CTL(gain_ctl);
 
-	dpll_hw_state->pll8 = PORT_PLL_TARGET_CNT(targ_cnt);
+	hw_state->pll8 = PORT_PLL_TARGET_CNT(targ_cnt);
 
-	dpll_hw_state->pll9 = PORT_PLL_LOCK_THRESHOLD(5);
+	hw_state->pll9 = PORT_PLL_LOCK_THRESHOLD(5);
 
-	dpll_hw_state->pll10 = PORT_PLL_DCO_AMP(15) |
+	hw_state->pll10 = PORT_PLL_DCO_AMP(15) |
 		PORT_PLL_DCO_AMP_OVR_EN_H;
 
-	dpll_hw_state->ebb4 = PORT_PLL_10BIT_CLK_ENABLE;
+	hw_state->ebb4 = PORT_PLL_10BIT_CLK_ENABLE;
 
-	dpll_hw_state->pcsdw12 = LANESTAGGER_STRAP_OVRD | lanestagger;
+	hw_state->pcsdw12 = LANESTAGGER_STRAP_OVRD | lanestagger;
 
 	return 0;
 }
 
 static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 				const struct intel_shared_dpll *pll,
-				const struct intel_dpll_hw_state *pll_state)
+				const struct intel_dpll_hw_state *hw_state)
 {
 	struct dpll clock;
 
 	clock.m1 = 2;
-	clock.m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK, pll_state->pll0) << 22;
-	if (pll_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
-		clock.m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK, pll_state->pll2);
-	clock.n = REG_FIELD_GET(PORT_PLL_N_MASK, pll_state->pll1);
-	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, pll_state->ebb0);
-	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, pll_state->ebb0);
+	clock.m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK, hw_state->pll0) << 22;
+	if (hw_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
+		clock.m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK,
+					  hw_state->pll2);
+	clock.n = REG_FIELD_GET(PORT_PLL_N_MASK, hw_state->pll1);
+	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, hw_state->ebb0);
+	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, hw_state->ebb0);
 
 	return chv_calc_dpll_params(i915->display.dpll.ref_clks.nssc, &clock);
 }
@@ -2695,7 +2696,7 @@ static int icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
 				    const struct intel_shared_dpll *pll,
-				    const struct intel_dpll_hw_state *pll_state)
+				    const struct intel_dpll_hw_state *hw_state)
 {
 	/*
 	 * The PLL outputs multiple frequencies at the same time, selection is
@@ -2766,17 +2767,17 @@ icl_calc_wrpll(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 				      const struct intel_shared_dpll *pll,
-				      const struct intel_dpll_hw_state *pll_state)
+				      const struct intel_dpll_hw_state *hw_state)
 {
 	int ref_clock = icl_wrpll_ref_clock(i915);
 	u32 dco_fraction;
 	u32 p0, p1, p2, dco_freq;
 
-	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
-	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
+	p0 = hw_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
+	p2 = hw_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
 
-	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
+	if (hw_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
+		p1 = (hw_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
 			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
 	else
 		p1 = 1;
@@ -2808,10 +2809,10 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 		break;
 	}
 
-	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
+	dco_freq = (hw_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
 		   ref_clock;
 
-	dco_fraction = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
+	dco_fraction = (hw_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
 		       DPLL_CFGCR0_DCO_FRACTION_SHIFT;
 
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
@@ -2827,33 +2828,33 @@ static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 
 static void icl_calc_dpll_state(struct drm_i915_private *i915,
 				const struct skl_wrpll_params *pll_params,
-				struct intel_dpll_hw_state *pll_state)
+				struct intel_dpll_hw_state *hw_state)
 {
 	u32 dco_fraction = pll_params->dco_fraction;
 
 	if (ehl_combo_pll_div_frac_wa_needed(i915))
 		dco_fraction = DIV_ROUND_CLOSEST(dco_fraction, 2);
 
-	pll_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
+	hw_state->cfgcr0 = DPLL_CFGCR0_DCO_FRACTION(dco_fraction) |
 			    pll_params->dco_integer;
 
-	pll_state->cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
+	hw_state->cfgcr1 = DPLL_CFGCR1_QDIV_RATIO(pll_params->qdiv_ratio) |
 			    DPLL_CFGCR1_QDIV_MODE(pll_params->qdiv_mode) |
 			    DPLL_CFGCR1_KDIV(pll_params->kdiv) |
 			    DPLL_CFGCR1_PDIV(pll_params->pdiv);
 
 	if (DISPLAY_VER(i915) >= 12)
-		pll_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
+		hw_state->cfgcr1 |= TGL_DPLL_CFGCR1_CFSELOVRD_NORMAL_XTAL;
 	else
-		pll_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
+		hw_state->cfgcr1 |= DPLL_CFGCR1_CENTRAL_FREQ_8400;
 
 	if (i915->display.vbt.override_afc_startup)
-		pll_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);
+		hw_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);
 }
 
 static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 				    u32 *target_dco_khz,
-				    struct intel_dpll_hw_state *state,
+				    struct intel_dpll_hw_state *hw_state,
 				    bool is_dkl)
 {
 	static const u8 div1_vals[] = { 7, 5, 3, 2 };
@@ -2909,12 +2910,12 @@ static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
 
 			*target_dco_khz = dco;
 
-			state->mg_refclkin_ctl = MG_REFCLKIN_CTL_OD_2_MUX(1);
+			hw_state->mg_refclkin_ctl = MG_REFCLKIN_CTL_OD_2_MUX(1);
 
-			state->mg_clktop2_coreclkctl1 =
+			hw_state->mg_clktop2_coreclkctl1 =
 				MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(a_divratio);
 
-			state->mg_clktop2_hsclkctl =
+			hw_state->mg_clktop2_hsclkctl =
 				MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(tlinedrv) |
 				MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(inputsel) |
 				hsdiv |
@@ -2932,7 +2933,7 @@ static int icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
  * adapted to integer-only calculation, that's why it looks so different.
  */
 static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
-				 struct intel_dpll_hw_state *pll_state)
+				 struct intel_dpll_hw_state *hw_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	int refclk_khz = i915->display.dpll.ref_clks.nssc;
@@ -2949,7 +2950,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	int ret;
 
 	ret = icl_mg_pll_find_divisors(clock, is_dp, use_ssc, &dco_khz,
-				       pll_state, is_dkl);
+				       hw_state, is_dkl);
 	if (ret)
 		return ret;
 
@@ -3039,61 +3040,61 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 
 	/* write pll_state calculations */
 	if (is_dkl) {
-		pll_state->mg_pll_div0 = DKL_PLL_DIV0_INTEG_COEFF(int_coeff) |
+		hw_state->mg_pll_div0 = DKL_PLL_DIV0_INTEG_COEFF(int_coeff) |
 					 DKL_PLL_DIV0_PROP_COEFF(prop_coeff) |
 					 DKL_PLL_DIV0_FBPREDIV(m1div) |
 					 DKL_PLL_DIV0_FBDIV_INT(m2div_int);
 		if (i915->display.vbt.override_afc_startup) {
 			u8 val = i915->display.vbt.override_afc_startup_val;
 
-			pll_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
+			hw_state->mg_pll_div0 |= DKL_PLL_DIV0_AFC_STARTUP(val);
 		}
 
-		pll_state->mg_pll_div1 = DKL_PLL_DIV1_IREF_TRIM(iref_trim) |
+		hw_state->mg_pll_div1 = DKL_PLL_DIV1_IREF_TRIM(iref_trim) |
 					 DKL_PLL_DIV1_TDC_TARGET_CNT(tdc_targetcnt);
 
-		pll_state->mg_pll_ssc = DKL_PLL_SSC_IREF_NDIV_RATIO(iref_ndiv) |
+		hw_state->mg_pll_ssc = DKL_PLL_SSC_IREF_NDIV_RATIO(iref_ndiv) |
 					DKL_PLL_SSC_STEP_LEN(ssc_steplen) |
 					DKL_PLL_SSC_STEP_NUM(ssc_steplog) |
 					(use_ssc ? DKL_PLL_SSC_EN : 0);
 
-		pll_state->mg_pll_bias = (m2div_frac ? DKL_PLL_BIAS_FRAC_EN_H : 0) |
+		hw_state->mg_pll_bias = (m2div_frac ? DKL_PLL_BIAS_FRAC_EN_H : 0) |
 					  DKL_PLL_BIAS_FBDIV_FRAC(m2div_frac);
 
-		pll_state->mg_pll_tdc_coldst_bias =
+		hw_state->mg_pll_tdc_coldst_bias =
 				DKL_PLL_TDC_SSC_STEP_SIZE(ssc_stepsize) |
 				DKL_PLL_TDC_FEED_FWD_GAIN(feedfwgain);
 
 	} else {
-		pll_state->mg_pll_div0 =
+		hw_state->mg_pll_div0 =
 			(m2div_rem > 0 ? MG_PLL_DIV0_FRACNEN_H : 0) |
 			MG_PLL_DIV0_FBDIV_FRAC(m2div_frac) |
 			MG_PLL_DIV0_FBDIV_INT(m2div_int);
 
-		pll_state->mg_pll_div1 =
+		hw_state->mg_pll_div1 =
 			MG_PLL_DIV1_IREF_NDIVRATIO(iref_ndiv) |
 			MG_PLL_DIV1_DITHER_DIV_2 |
 			MG_PLL_DIV1_NDIVRATIO(1) |
 			MG_PLL_DIV1_FBPREDIV(m1div);
 
-		pll_state->mg_pll_lf =
+		hw_state->mg_pll_lf =
 			MG_PLL_LF_TDCTARGETCNT(tdc_targetcnt) |
 			MG_PLL_LF_AFCCNTSEL_512 |
 			MG_PLL_LF_GAINCTRL(1) |
 			MG_PLL_LF_INT_COEFF(int_coeff) |
 			MG_PLL_LF_PROP_COEFF(prop_coeff);
 
-		pll_state->mg_pll_frac_lock =
+		hw_state->mg_pll_frac_lock =
 			MG_PLL_FRAC_LOCK_TRUELOCK_CRIT_32 |
 			MG_PLL_FRAC_LOCK_EARLYLOCK_CRIT_32 |
 			MG_PLL_FRAC_LOCK_LOCKTHRESH(10) |
 			MG_PLL_FRAC_LOCK_DCODITHEREN |
 			MG_PLL_FRAC_LOCK_FEEDFWRDGAIN(feedfwgain);
 		if (use_ssc || m2div_rem > 0)
-			pll_state->mg_pll_frac_lock |=
+			hw_state->mg_pll_frac_lock |=
 				MG_PLL_FRAC_LOCK_FEEDFWRDCAL_EN;
 
-		pll_state->mg_pll_ssc =
+		hw_state->mg_pll_ssc =
 			(use_ssc ? MG_PLL_SSC_EN : 0) |
 			MG_PLL_SSC_TYPE(2) |
 			MG_PLL_SSC_STEPLENGTH(ssc_steplen) |
@@ -3101,14 +3102,14 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 			MG_PLL_SSC_FLLEN |
 			MG_PLL_SSC_STEPSIZE(ssc_stepsize);
 
-		pll_state->mg_pll_tdc_coldst_bias =
+		hw_state->mg_pll_tdc_coldst_bias =
 			MG_PLL_TDC_COLDST_COLDSTART |
 			MG_PLL_TDC_COLDST_IREFINT_EN |
 			MG_PLL_TDC_COLDST_REFBIAS_START_PULSE_W(iref_pulse_w) |
 			MG_PLL_TDC_TDCOVCCORR_EN |
 			MG_PLL_TDC_TDCSEL(3);
 
-		pll_state->mg_pll_bias =
+		hw_state->mg_pll_bias =
 			MG_PLL_BIAS_BIAS_GB_SEL(3) |
 			MG_PLL_BIAS_INIT_DCOAMP(0x3F) |
 			MG_PLL_BIAS_BIAS_BONUS(10) |
@@ -3118,17 +3119,17 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 			MG_PLL_BIAS_IREFTRIM(iref_trim);
 
 		if (refclk_khz == 38400) {
-			pll_state->mg_pll_tdc_coldst_bias_mask =
+			hw_state->mg_pll_tdc_coldst_bias_mask =
 				MG_PLL_TDC_COLDST_COLDSTART;
-			pll_state->mg_pll_bias_mask = 0;
+			hw_state->mg_pll_bias_mask = 0;
 		} else {
-			pll_state->mg_pll_tdc_coldst_bias_mask = -1U;
-			pll_state->mg_pll_bias_mask = -1U;
+			hw_state->mg_pll_tdc_coldst_bias_mask = -1U;
+			hw_state->mg_pll_bias_mask = -1U;
 		}
 
-		pll_state->mg_pll_tdc_coldst_bias &=
-			pll_state->mg_pll_tdc_coldst_bias_mask;
-		pll_state->mg_pll_bias &= pll_state->mg_pll_bias_mask;
+		hw_state->mg_pll_tdc_coldst_bias &=
+			hw_state->mg_pll_tdc_coldst_bias_mask;
+		hw_state->mg_pll_bias &= hw_state->mg_pll_bias_mask;
 	}
 
 	return 0;
@@ -3136,7 +3137,7 @@ static int icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 
 static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 				   const struct intel_shared_dpll *pll,
-				   const struct intel_dpll_hw_state *pll_state)
+				   const struct intel_dpll_hw_state *hw_state)
 {
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
@@ -3144,23 +3145,23 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 	ref_clock = i915->display.dpll.ref_clks.nssc;
 
 	if (DISPLAY_VER(i915) >= 12) {
-		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
+		m1 = hw_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
 		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
-		m2_int = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
+		m2_int = hw_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
 
-		if (pll_state->mg_pll_bias & DKL_PLL_BIAS_FRAC_EN_H) {
-			m2_frac = pll_state->mg_pll_bias &
+		if (hw_state->mg_pll_bias & DKL_PLL_BIAS_FRAC_EN_H) {
+			m2_frac = hw_state->mg_pll_bias &
 				  DKL_PLL_BIAS_FBDIV_FRAC_MASK;
 			m2_frac = m2_frac >> DKL_PLL_BIAS_FBDIV_SHIFT;
 		} else {
 			m2_frac = 0;
 		}
 	} else {
-		m1 = pll_state->mg_pll_div1 & MG_PLL_DIV1_FBPREDIV_MASK;
-		m2_int = pll_state->mg_pll_div0 & MG_PLL_DIV0_FBDIV_INT_MASK;
+		m1 = hw_state->mg_pll_div1 & MG_PLL_DIV1_FBPREDIV_MASK;
+		m2_int = hw_state->mg_pll_div0 & MG_PLL_DIV0_FBDIV_INT_MASK;
 
-		if (pll_state->mg_pll_div0 & MG_PLL_DIV0_FRACNEN_H) {
-			m2_frac = pll_state->mg_pll_div0 &
+		if (hw_state->mg_pll_div0 & MG_PLL_DIV0_FRACNEN_H) {
+			m2_frac = hw_state->mg_pll_div0 &
 				  MG_PLL_DIV0_FBDIV_FRAC_MASK;
 			m2_frac = m2_frac >> MG_PLL_DIV0_FBDIV_FRAC_SHIFT;
 		} else {
@@ -3168,7 +3169,7 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 		}
 	}
 
-	switch (pll_state->mg_clktop2_hsclkctl &
+	switch (hw_state->mg_clktop2_hsclkctl &
 		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK) {
 	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2:
 		div1 = 2;
@@ -3183,11 +3184,11 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *i915,
 		div1 = 7;
 		break;
 	default:
-		MISSING_CASE(pll_state->mg_clktop2_hsclkctl);
+		MISSING_CASE(hw_state->mg_clktop2_hsclkctl);
 		return 0;
 	}
 
-	div2 = (pll_state->mg_clktop2_hsclkctl &
+	div2 = (hw_state->mg_clktop2_hsclkctl &
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK) >>
 		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT;
 
@@ -4396,33 +4397,33 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
  * intel_dpll_get_freq - calculate the DPLL's output frequency
  * @i915: i915 device
  * @pll: DPLL for which to calculate the output frequency
- * @pll_state: DPLL state from which to calculate the output frequency
+ * @dpll_hw_state: DPLL state from which to calculate the output frequency
  *
- * Return the output frequency corresponding to @pll's passed in @pll_state.
+ * Return the output frequency corresponding to @pll's passed in @dpll_hw_state.
  */
 int intel_dpll_get_freq(struct drm_i915_private *i915,
 			const struct intel_shared_dpll *pll,
-			const struct intel_dpll_hw_state *pll_state)
+			const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	if (drm_WARN_ON(&i915->drm, !pll->info->funcs->get_freq))
 		return 0;
 
-	return pll->info->funcs->get_freq(i915, pll, pll_state);
+	return pll->info->funcs->get_freq(i915, pll, dpll_hw_state);
 }
 
 /**
  * intel_dpll_get_hw_state - readout the DPLL's hardware state
  * @i915: i915 device
  * @pll: DPLL for which to calculate the output frequency
- * @hw_state: DPLL's hardware state
+ * @dpll_hw_state: DPLL's hardware state
  *
- * Read out @pll's hardware state into @hw_state.
+ * Read out @pll's hardware state into @dpll_hw_state.
  */
 bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll,
-			     struct intel_dpll_hw_state *hw_state)
+			     struct intel_dpll_hw_state *dpll_hw_state)
 {
-	return pll->info->funcs->get_hw_state(i915, pll, hw_state);
+	return pll->info->funcs->get_hw_state(i915, pll, dpll_hw_state);
 }
 
 static void readout_dpll_hw_state(struct drm_i915_private *i915,
@@ -4496,21 +4497,21 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915)
  * intel_dpll_dump_hw_state - dump hw_state
  * @i915: i915 drm device
  * @p: where to print the state to
- * @hw_state: hw state to be dumped
+ * @dpll_hw_state: hw state to be dumped
  *
- * Dumo out the relevant values in @hw_state.
+ * Dumo out the relevant values in @dpll_hw_state.
  */
 void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 			      struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state)
+			      const struct intel_dpll_hw_state *dpll_hw_state)
 {
 	if (i915->display.dpll.mgr) {
-		i915->display.dpll.mgr->dump_hw_state(p, hw_state);
+		i915->display.dpll.mgr->dump_hw_state(p, dpll_hw_state);
 	} else {
 		/* fallback for platforms that don't use the shared dpll
 		 * infrastructure
 		 */
-		ibx_dump_hw_state(p, hw_state);
+		ibx_dump_hw_state(p, dpll_hw_state);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index d4d97e40440a..d63d0651b6a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -365,10 +365,10 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_encoder *encoder);
 int intel_dpll_get_freq(struct drm_i915_private *i915,
 			const struct intel_shared_dpll *pll,
-			const struct intel_dpll_hw_state *pll_state);
+			const struct intel_dpll_hw_state *dpll_hw_state);
 bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
 			     struct intel_shared_dpll *pll,
-			     struct intel_dpll_hw_state *hw_state);
+			     struct intel_dpll_hw_state *dpll_hw_state);
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_shared_dpll_swap_state(struct intel_atomic_state *state);
@@ -379,7 +379,7 @@ void intel_dpll_sanitize_state(struct drm_i915_private *i915);
 
 void intel_dpll_dump_hw_state(struct drm_i915_private *i915,
 			      struct drm_printer *p,
-			      const struct intel_dpll_hw_state *hw_state);
+			      const struct intel_dpll_hw_state *dpll_hw_state);
 bool intel_dpll_compare_hw_state(struct drm_i915_private *i915,
 				 const struct intel_dpll_hw_state *a,
 				 const struct intel_dpll_hw_state *b);
-- 
2.43.2

