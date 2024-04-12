Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5C88A35A0
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 20:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0201C10F7A5;
	Fri, 12 Apr 2024 18:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GROAY4sx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BDD10F7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 18:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712946441; x=1744482441;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GCUesi6RBo/gsEp8CvJk9DdvNvynAxHZ6B35ENifsY0=;
 b=GROAY4sx88F5aLUg4UXFJlbNj16WcFgKWkumw7GCU3jymluI0GTKsI8D
 5dWWaqNT0Tc8a+M6DO0tcLXNSqwNAWsUXWmQXV4anl9re7GIleTTnmSP2
 +8CJTkpP+8ca6hsM31nJ+2FU6S+Ddy9rNETeIdLr7LFGJZagnJEKNB9RA
 vzc8Zaw9LwqDu9VoRlMYiYqLuXS8gdryjTyKERqBnDLSwcMjJq6WGQ2ID
 XeSRRp68yogkbUyLHmk9I4v0ifKkQEPk1EiwUX+QKk1feH4TtxO2QO1N3
 eQQLJm3tzDh1VGpve/0Ve7zG9vDyYTFw2n2PVbCtDw3NdE9futI2M/3Ap Q==;
X-CSE-ConnectionGUID: oLwL0JwgQhig+mT7skD88w==
X-CSE-MsgGUID: gb2nPLqaTl6IO2/5RepCQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19560513"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19560513"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 11:27:18 -0700
X-CSE-ConnectionGUID: U1PqfZFgRqSf8EkWt52lIw==
X-CSE-MsgGUID: Ox1AG1lWSheXtDh+tFvCQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21394546"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 11:27:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 21:27:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/18] drm/i915: Introduce some local PLL state variables
Date: Fri, 12 Apr 2024 21:26:49 +0300
Message-ID: <20240412182703.19916-5-ville.syrjala@linux.intel.com>
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

Spinkle local PLL hw_state variables into various low
level PLL functions. Will make subsequent changes cleaner
when we don't have to touch so many places when renaming
struct members and whatnot.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 94 ++++++++++---------
 1 file changed, 52 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 5203c538672c..51a7d8df0ca3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -555,15 +555,16 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
 static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
 	/* PCH refclock must be enabled first */
 	ibx_assert_pch_refclk_enabled(i915);
 
-	intel_de_write(i915, PCH_FP0(id), pll->state.hw_state.fp0);
-	intel_de_write(i915, PCH_FP1(id), pll->state.hw_state.fp1);
+	intel_de_write(i915, PCH_FP0(id), hw_state->fp0);
+	intel_de_write(i915, PCH_FP1(id), hw_state->fp1);
 
-	intel_de_write(i915, PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_write(i915, PCH_DPLL(id), hw_state->dpll);
 
 	/* Wait for the clocks to stabilize. */
 	intel_de_posting_read(i915, PCH_DPLL(id));
@@ -574,7 +575,7 @@ static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
 	 *
 	 * So write it again.
 	 */
-	intel_de_write(i915, PCH_DPLL(id), pll->state.hw_state.dpll);
+	intel_de_write(i915, PCH_DPLL(id), hw_state->dpll);
 	intel_de_posting_read(i915, PCH_DPLL(id));
 	udelay(200);
 }
@@ -678,9 +679,10 @@ static const struct intel_dpll_mgr pch_pll_mgr = {
 static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
-	intel_de_write(i915, WRPLL_CTL(id), pll->state.hw_state.wrpll);
+	intel_de_write(i915, WRPLL_CTL(id), hw_state->wrpll);
 	intel_de_posting_read(i915, WRPLL_CTL(id));
 	udelay(20);
 }
@@ -688,7 +690,9 @@ static void hsw_ddi_wrpll_enable(struct drm_i915_private *i915,
 static void hsw_ddi_spll_enable(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll)
 {
-	intel_de_write(i915, SPLL_CTL, pll->state.hw_state.spll);
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
+
+	intel_de_write(i915, SPLL_CTL, hw_state->spll);
 	intel_de_posting_read(i915, SPLL_CTL);
 	udelay(20);
 }
@@ -1019,11 +1023,12 @@ hsw_ddi_wrpll_compute_dpll(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	unsigned int p, n2, r2;
 
 	hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);
 
-	crtc_state->dpll_hw_state.wrpll =
+	hw_state->wrpll =
 		WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
 		WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
 		WRPLL_DIVIDER_POST(p);
@@ -1126,11 +1131,12 @@ hsw_ddi_spll_compute_dpll(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 
 	if (drm_WARN_ON(crtc->base.dev, crtc_state->port_clock / 2 != 135000))
 		return -EINVAL;
 
-	crtc_state->dpll_hw_state.spll =
+	hw_state->spll =
 		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;
 
 	return 0;
@@ -1333,24 +1339,28 @@ static const struct skl_dpll_regs skl_dpll_regs[4] = {
 static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *i915,
 				    struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const enum intel_dpll_id id = pll->info->id;
 
 	intel_de_rmw(i915, DPLL_CTRL1,
-		     DPLL_CTRL1_HDMI_MODE(id) | DPLL_CTRL1_SSC(id) | DPLL_CTRL1_LINK_RATE_MASK(id),
-		     pll->state.hw_state.ctrl1 << (id * 6));
+		     DPLL_CTRL1_HDMI_MODE(id) |
+		     DPLL_CTRL1_SSC(id) |
+		     DPLL_CTRL1_LINK_RATE_MASK(id),
+		     hw_state->ctrl1 << (id * 6));
 	intel_de_posting_read(i915, DPLL_CTRL1);
 }
 
 static void skl_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
 
 	skl_ddi_pll_write_ctrl1(i915, pll);
 
-	intel_de_write(i915, regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
-	intel_de_write(i915, regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
+	intel_de_write(i915, regs[id].cfgcr1, hw_state->cfgcr1);
+	intel_de_write(i915, regs[id].cfgcr2, hw_state->cfgcr2);
 	intel_de_posting_read(i915, regs[id].cfgcr1);
 	intel_de_posting_read(i915, regs[id].cfgcr2);
 
@@ -1766,37 +1776,35 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	struct skl_wrpll_params wrpll_params = {};
-	u32 ctrl1, cfgcr1, cfgcr2;
 	int ret;
 
-	/*
-	 * See comment in intel_dpll_hw_state to understand why we always use 0
-	 * as the DPLL id in this function.
-	 */
-	ctrl1 = DPLL_CTRL1_OVERRIDE(0);
-
-	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
-
 	ret = skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
 				      i915->display.dpll.ref_clks.nssc, &wrpll_params);
 	if (ret)
 		return ret;
 
-	cfgcr1 = DPLL_CFGCR1_FREQ_ENABLE |
+	/*
+	 * See comment in intel_dpll_hw_state to understand why we always use 0
+	 * as the DPLL id in this function.
+	 */
+	hw_state->ctrl1 =
+		DPLL_CTRL1_OVERRIDE(0) |
+		DPLL_CTRL1_HDMI_MODE(0);
+
+	hw_state->cfgcr1 =
+		DPLL_CFGCR1_FREQ_ENABLE |
 		DPLL_CFGCR1_DCO_FRACTION(wrpll_params.dco_fraction) |
 		wrpll_params.dco_integer;
 
-	cfgcr2 = DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
+	hw_state->cfgcr2 =
+		DPLL_CFGCR2_QDIV_RATIO(wrpll_params.qdiv_ratio) |
 		DPLL_CFGCR2_QDIV_MODE(wrpll_params.qdiv_mode) |
 		DPLL_CFGCR2_KDIV(wrpll_params.kdiv) |
 		DPLL_CFGCR2_PDIV(wrpll_params.pdiv) |
 		wrpll_params.central_freq;
 
-	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
-	crtc_state->dpll_hw_state.cfgcr1 = cfgcr1;
-	crtc_state->dpll_hw_state.cfgcr2 = cfgcr2;
-
 	crtc_state->port_clock = skl_ddi_wrpll_get_freq(i915, NULL,
 							&crtc_state->dpll_hw_state);
 
@@ -1806,6 +1814,7 @@ static int skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 static int
 skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
+	struct intel_dpll_hw_state *hw_state = &crtc_state->dpll_hw_state;
 	u32 ctrl1;
 
 	/*
@@ -1835,7 +1844,7 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 		break;
 	}
 
-	crtc_state->dpll_hw_state.ctrl1 = ctrl1;
+	hw_state->ctrl1 = ctrl1;
 
 	return 0;
 }
@@ -1989,10 +1998,11 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 			       struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
+	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
+	enum dpio_phy phy;
+	enum dpio_channel ch;
 	u32 temp;
-	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
-	enum dpio_phy phy;
-	enum dpio_channel ch;
 
 	bxt_port_to_phy_channel(i915, port, &phy, &ch);
 
@@ -2015,43 +2025,43 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 
 	/* Write P1 & P2 */
 	intel_de_rmw(i915, BXT_PORT_PLL_EBB_0(phy, ch),
-		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, pll->state.hw_state.ebb0);
+		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, hw_state->ebb0);
 
 	/* Write M2 integer */
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 0),
-		     PORT_PLL_M2_INT_MASK, pll->state.hw_state.pll0);
+		     PORT_PLL_M2_INT_MASK, hw_state->pll0);
 
 	/* Write N */
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 1),
-		     PORT_PLL_N_MASK, pll->state.hw_state.pll1);
+		     PORT_PLL_N_MASK, hw_state->pll1);
 
 	/* Write M2 fraction */
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 2),
-		     PORT_PLL_M2_FRAC_MASK, pll->state.hw_state.pll2);
+		     PORT_PLL_M2_FRAC_MASK, hw_state->pll2);
 
 	/* Write M2 fraction enable */
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 3),
-		     PORT_PLL_M2_FRAC_ENABLE, pll->state.hw_state.pll3);
+		     PORT_PLL_M2_FRAC_ENABLE, hw_state->pll3);
 
 	/* Write coeff */
 	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 6));
 	temp &= ~PORT_PLL_PROP_COEFF_MASK;
 	temp &= ~PORT_PLL_INT_COEFF_MASK;
 	temp &= ~PORT_PLL_GAIN_CTL_MASK;
-	temp |= pll->state.hw_state.pll6;
+	temp |= hw_state->pll6;
 	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 6), temp);
 
 	/* Write calibration val */
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 8),
-		     PORT_PLL_TARGET_CNT_MASK, pll->state.hw_state.pll8);
+		     PORT_PLL_TARGET_CNT_MASK, hw_state->pll8);
 
 	intel_de_rmw(i915, BXT_PORT_PLL(phy, ch, 9),
-		     PORT_PLL_LOCK_THRESHOLD_MASK, pll->state.hw_state.pll9);
+		     PORT_PLL_LOCK_THRESHOLD_MASK, hw_state->pll9);
 
 	temp = intel_de_read(i915, BXT_PORT_PLL(phy, ch, 10));
 	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
 	temp &= ~PORT_PLL_DCO_AMP_MASK;
-	temp |= pll->state.hw_state.pll10;
+	temp |= hw_state->pll10;
 	intel_de_write(i915, BXT_PORT_PLL(phy, ch, 10), temp);
 
 	/* Recalibrate with new settings */
@@ -2059,7 +2069,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 	temp |= PORT_PLL_RECALIBRATE;
 	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
-	temp |= pll->state.hw_state.ebb4;
+	temp |= hw_state->ebb4;
 	intel_de_write(i915, BXT_PORT_PLL_EBB_4(phy, ch), temp);
 
 	/* Enable PLL */
@@ -2083,7 +2093,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *i915,
 	temp = intel_de_read(i915, BXT_PORT_PCS_DW12_LN01(phy, ch));
 	temp &= ~LANE_STAGGER_MASK;
 	temp &= ~LANESTAGGER_STRAP_OVRD;
-	temp |= pll->state.hw_state.pcsdw12;
+	temp |= hw_state->pcsdw12;
 	intel_de_write(i915, BXT_PORT_PCS_DW12_GRP(phy, ch), temp);
 }
 
-- 
2.43.2

