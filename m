Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2271709CC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5896EBD0;
	Wed, 26 Feb 2020 20:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13016EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155009"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:48 +0200
Message-Id: <20200226203455.23032-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/13] drm/i915: Move DPLL frequency calculation
 to intel_dpll_mgr.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move all the DPLL params->DPLL frequency conversion functions to
intel_dpll_mgr.c where the corresponding inverse conversions are.

The GEN11+ TBT PLL outputs multiple frequencies and for selecting the
one in use we need to check the DDI CLK mux. As part of the DDI clock
logic this selection is kept in intel_ddi.c.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 442 +-----------------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 -
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 418 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   2 +
 5 files changed, 431 insertions(+), 437 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c7214ace963a..c38addd07e42 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1350,15 +1350,13 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 static void gen11_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsc_get_config(encoder, pipe_config);
 
 	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
-	pipe_config->port_clock =
-		cnl_calc_wrpll_link(dev_priv, &pipe_config->dpll_hw_state);
+	pipe_config->port_clock = intel_dpll_get_freq(encoder, pipe_config);
 
 	pipe_config->hw.adjusted_mode.crtc_clock = intel_dsi->pclk;
 	if (intel_dsi->dual_link)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3375d63d543f..5e6f81b140d4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1325,164 +1325,6 @@ intel_ddi_get_crtc_encoder(struct intel_crtc *crtc)
 	return ret;
 }
 
-static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
-				   i915_reg_t reg)
-{
-	int refclk;
-	int n, p, r;
-	u32 wrpll;
-
-	wrpll = intel_de_read(dev_priv, reg);
-	switch (wrpll & WRPLL_REF_MASK) {
-	case WRPLL_REF_SPECIAL_HSW:
-		/*
-		 * muxed-SSC for BDW.
-		 * non-SSC for non-ULT HSW. Check FUSE_STRAP3
-		 * for the non-SSC reference frequency.
-		 */
-		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-			if (intel_de_read(dev_priv, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
-				refclk = 24;
-			else
-				refclk = 135;
-			break;
-		}
-		/* fall through */
-	case WRPLL_REF_PCH_SSC:
-		/*
-		 * We could calculate spread here, but our checking
-		 * code only cares about 5% accuracy, and spread is a max of
-		 * 0.5% downspread.
-		 */
-		refclk = 135;
-		break;
-	case WRPLL_REF_LCPLL:
-		refclk = 2700;
-		break;
-	default:
-		MISSING_CASE(wrpll);
-		return 0;
-	}
-
-	r = wrpll & WRPLL_DIVIDER_REF_MASK;
-	p = (wrpll & WRPLL_DIVIDER_POST_MASK) >> WRPLL_DIVIDER_POST_SHIFT;
-	n = (wrpll & WRPLL_DIVIDER_FB_MASK) >> WRPLL_DIVIDER_FB_SHIFT;
-
-	/* Convert to KHz, p & r have a fixed point portion */
-	return (refclk * n * 100) / (p * r);
-}
-
-static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
-{
-	u32 p0, p1, p2, dco_freq;
-
-	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
-	p2 = pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;
-
-	if (pll_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
-	else
-		p1 = 1;
-
-
-	switch (p0) {
-	case DPLL_CFGCR2_PDIV_1:
-		p0 = 1;
-		break;
-	case DPLL_CFGCR2_PDIV_2:
-		p0 = 2;
-		break;
-	case DPLL_CFGCR2_PDIV_3:
-		p0 = 3;
-		break;
-	case DPLL_CFGCR2_PDIV_7:
-		p0 = 7;
-		break;
-	}
-
-	switch (p2) {
-	case DPLL_CFGCR2_KDIV_5:
-		p2 = 5;
-		break;
-	case DPLL_CFGCR2_KDIV_2:
-		p2 = 2;
-		break;
-	case DPLL_CFGCR2_KDIV_3:
-		p2 = 3;
-		break;
-	case DPLL_CFGCR2_KDIV_1:
-		p2 = 1;
-		break;
-	}
-
-	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK)
-		* 24 * 1000;
-
-	dco_freq += (((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9)
-		     * 24 * 1000) / 0x8000;
-
-	if (WARN_ON(p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
-
-	return dco_freq / (p0 * p1 * p2 * 5);
-}
-
-int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
-			struct intel_dpll_hw_state *pll_state)
-{
-	u32 p0, p1, p2, dco_freq, ref_clock;
-
-	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
-	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
-
-	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
-		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
-			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
-	else
-		p1 = 1;
-
-
-	switch (p0) {
-	case DPLL_CFGCR1_PDIV_2:
-		p0 = 2;
-		break;
-	case DPLL_CFGCR1_PDIV_3:
-		p0 = 3;
-		break;
-	case DPLL_CFGCR1_PDIV_5:
-		p0 = 5;
-		break;
-	case DPLL_CFGCR1_PDIV_7:
-		p0 = 7;
-		break;
-	}
-
-	switch (p2) {
-	case DPLL_CFGCR1_KDIV_1:
-		p2 = 1;
-		break;
-	case DPLL_CFGCR1_KDIV_2:
-		p2 = 2;
-		break;
-	case DPLL_CFGCR1_KDIV_3:
-		p2 = 3;
-		break;
-	}
-
-	ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);
-
-	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK)
-		* ref_clock;
-
-	dco_freq += (((pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
-		      DPLL_CFGCR0_DCO_FRACTION_SHIFT) * ref_clock) / 0x8000;
-
-	if (drm_WARN_ON(&dev_priv->drm, p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
-
-	return dco_freq / (p0 * p1 * p2 * 5);
-}
-
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 				 enum port port)
 {
@@ -1505,77 +1347,6 @@ static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 	}
 }
 
-static int icl_calc_mg_pll_link(struct drm_i915_private *dev_priv,
-				const struct intel_dpll_hw_state *pll_state)
-{
-	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
-	u64 tmp;
-
-	ref_clock = dev_priv->cdclk.hw.ref;
-
-	if (INTEL_GEN(dev_priv) >= 12) {
-		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
-		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
-		m2_int = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
-
-		if (pll_state->mg_pll_bias & DKL_PLL_BIAS_FRAC_EN_H) {
-			m2_frac = pll_state->mg_pll_bias &
-				  DKL_PLL_BIAS_FBDIV_FRAC_MASK;
-			m2_frac = m2_frac >> DKL_PLL_BIAS_FBDIV_SHIFT;
-		} else {
-			m2_frac = 0;
-		}
-	} else {
-		m1 = pll_state->mg_pll_div1 & MG_PLL_DIV1_FBPREDIV_MASK;
-		m2_int = pll_state->mg_pll_div0 & MG_PLL_DIV0_FBDIV_INT_MASK;
-
-		if (pll_state->mg_pll_div0 & MG_PLL_DIV0_FRACNEN_H) {
-			m2_frac = pll_state->mg_pll_div0 &
-				  MG_PLL_DIV0_FBDIV_FRAC_MASK;
-			m2_frac = m2_frac >> MG_PLL_DIV0_FBDIV_FRAC_SHIFT;
-		} else {
-			m2_frac = 0;
-		}
-	}
-
-	switch (pll_state->mg_clktop2_hsclkctl &
-		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK) {
-	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2:
-		div1 = 2;
-		break;
-	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3:
-		div1 = 3;
-		break;
-	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5:
-		div1 = 5;
-		break;
-	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7:
-		div1 = 7;
-		break;
-	default:
-		MISSING_CASE(pll_state->mg_clktop2_hsclkctl);
-		return 0;
-	}
-
-	div2 = (pll_state->mg_clktop2_hsclkctl &
-		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK) >>
-		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT;
-
-	/* div2 value of 0 is same as 1 means no div */
-	if (div2 == 0)
-		div2 = 1;
-
-	/*
-	 * Adjust the original formula to delay the division by 2^22 in order to
-	 * minimize possible rounding errors.
-	 */
-	tmp = (u64)m1 * m2_int * ref_clock +
-	      (((u64)m1 * m2_frac * ref_clock) >> 22);
-	tmp = div_u64(tmp, 5 * div1 * div2);
-
-	return tmp;
-}
-
 static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 {
 	int dotclock;
@@ -1601,214 +1372,21 @@ static void ddi_dotclock_get(struct intel_crtc_state *pipe_config)
 	pipe_config->hw.adjusted_mode.crtc_clock = dotclock;
 }
 
-static void icl_ddi_clock_get(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
-	enum port port = encoder->port;
-	enum phy phy = intel_port_to_phy(dev_priv, port);
-	int link_clock;
-
-	if (intel_phy_is_combo(dev_priv, phy)) {
-		link_clock = cnl_calc_wrpll_link(dev_priv, pll_state);
-	} else {
-		enum intel_dpll_id pll_id = intel_get_shared_dpll_id(dev_priv,
-						pipe_config->shared_dpll);
-
-		if (pll_id == DPLL_ID_ICL_TBTPLL)
-			link_clock = icl_calc_tbt_pll_link(dev_priv, port);
-		else
-			link_clock = icl_calc_mg_pll_link(dev_priv, pll_state);
-	}
-
-	pipe_config->port_clock = link_clock;
-
-	ddi_dotclock_get(pipe_config);
-}
-
-static void cnl_ddi_clock_get(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
-	int link_clock;
-
-	if (pll_state->cfgcr0 & DPLL_CFGCR0_HDMI_MODE) {
-		link_clock = cnl_calc_wrpll_link(dev_priv, pll_state);
-	} else {
-		link_clock = pll_state->cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK;
-
-		switch (link_clock) {
-		case DPLL_CFGCR0_LINK_RATE_810:
-			link_clock = 81000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_1080:
-			link_clock = 108000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_1350:
-			link_clock = 135000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_1620:
-			link_clock = 162000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_2160:
-			link_clock = 216000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_2700:
-			link_clock = 270000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_3240:
-			link_clock = 324000;
-			break;
-		case DPLL_CFGCR0_LINK_RATE_4050:
-			link_clock = 405000;
-			break;
-		default:
-			drm_WARN(&dev_priv->drm, 1, "Unsupported link rate\n");
-			break;
-		}
-		link_clock *= 2;
-	}
-
-	pipe_config->port_clock = link_clock;
-
-	ddi_dotclock_get(pipe_config);
-}
-
-static void skl_ddi_clock_get(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config)
-{
-	struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
-	int link_clock;
-
-	/*
-	 * ctrl1 register is already shifted for each pll, just use 0 to get
-	 * the internal shift for each field
-	 */
-	if (pll_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0)) {
-		link_clock = skl_calc_wrpll_link(pll_state);
-	} else {
-		link_clock = pll_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0);
-		link_clock >>= DPLL_CTRL1_LINK_RATE_SHIFT(0);
-
-		switch (link_clock) {
-		case DPLL_CTRL1_LINK_RATE_810:
-			link_clock = 81000;
-			break;
-		case DPLL_CTRL1_LINK_RATE_1080:
-			link_clock = 108000;
-			break;
-		case DPLL_CTRL1_LINK_RATE_1350:
-			link_clock = 135000;
-			break;
-		case DPLL_CTRL1_LINK_RATE_1620:
-			link_clock = 162000;
-			break;
-		case DPLL_CTRL1_LINK_RATE_2160:
-			link_clock = 216000;
-			break;
-		case DPLL_CTRL1_LINK_RATE_2700:
-			link_clock = 270000;
-			break;
-		default:
-			drm_WARN(encoder->base.dev, 1,
-				 "Unsupported link rate\n");
-			break;
-		}
-		link_clock *= 2;
-	}
-
-	pipe_config->port_clock = link_clock;
-
-	ddi_dotclock_get(pipe_config);
-}
-
-static void hsw_ddi_clock_get(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	int link_clock = 0;
-	u32 pll;
-
-	switch (pipe_config->shared_dpll->info->id) {
-	case DPLL_ID_LCPLL_810:
-		link_clock = 81000;
-		break;
-	case DPLL_ID_LCPLL_1350:
-		link_clock = 135000;
-		break;
-	case DPLL_ID_LCPLL_2700:
-		link_clock = 270000;
-		break;
-	case DPLL_ID_WRPLL1:
-		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(0));
-		break;
-	case DPLL_ID_WRPLL2:
-		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
-		break;
-	case DPLL_ID_SPLL:
-		pll = intel_de_read(dev_priv, SPLL_CTL) & SPLL_FREQ_MASK;
-		if (pll == SPLL_FREQ_810MHz)
-			link_clock = 81000;
-		else if (pll == SPLL_FREQ_1350MHz)
-			link_clock = 135000;
-		else if (pll == SPLL_FREQ_2700MHz)
-			link_clock = 270000;
-		else {
-			drm_WARN(&dev_priv->drm, 1, "bad spll freq\n");
-			return;
-		}
-		break;
-	default:
-		drm_WARN(&dev_priv->drm, 1, "bad port clock sel\n");
-		return;
-	}
-
-	pipe_config->port_clock = link_clock * 2;
-
-	ddi_dotclock_get(pipe_config);
-}
-
-static int bxt_calc_pll_link(const struct intel_dpll_hw_state *pll_state)
-{
-	struct dpll clock;
-
-	clock.m1 = 2;
-	clock.m2 = (pll_state->pll0 & PORT_PLL_M2_MASK) << 22;
-	if (pll_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
-		clock.m2 |= pll_state->pll2 & PORT_PLL_M2_FRAC_MASK;
-	clock.n = (pll_state->pll1 & PORT_PLL_N_MASK) >> PORT_PLL_N_SHIFT;
-	clock.p1 = (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
-	clock.p2 = (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
-
-	return chv_calc_dpll_params(100000, &clock);
-}
-
-static void bxt_ddi_clock_get(struct intel_encoder *encoder,
-			      struct intel_crtc_state *pipe_config)
-{
-	pipe_config->port_clock =
-		bxt_calc_pll_link(&pipe_config->dpll_hw_state);
-
-	ddi_dotclock_get(pipe_config);
-}
-
 static void intel_ddi_clock_get(struct intel_encoder *encoder,
 				struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	if (INTEL_GEN(dev_priv) >= 11)
-		icl_ddi_clock_get(encoder, pipe_config);
-	else if (IS_CANNONLAKE(dev_priv))
-		cnl_ddi_clock_get(encoder, pipe_config);
-	else if (IS_GEN9_LP(dev_priv))
-		bxt_ddi_clock_get(encoder, pipe_config);
-	else if (IS_GEN9_BC(dev_priv))
-		skl_ddi_clock_get(encoder, pipe_config);
-	else if (INTEL_GEN(dev_priv) <= 8)
-		hsw_ddi_clock_get(encoder, pipe_config);
+	if (INTEL_GEN(dev_priv) >= 11 &&
+	    intel_get_shared_dpll_id(dev_priv, pipe_config->shared_dpll) ==
+	    DPLL_ID_ICL_TBTPLL)
+		pipe_config->port_clock = icl_calc_tbt_pll_link(dev_priv,
+								encoder->port);
+	else
+		pipe_config->port_clock = intel_dpll_get_freq(encoder,
+							      pipe_config);
+
+	ddi_dotclock_get(pipe_config);
 }
 
 void intel_ddi_set_dp_msa(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 167c6579d972..82184750efae 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -47,7 +47,5 @@ u8 intel_ddi_dp_pre_emphasis_max(struct intel_encoder *encoder,
 int intel_ddi_toggle_hdcp_signalling(struct intel_encoder *intel_encoder,
 				     bool enable);
 void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder);
-int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
-			struct intel_dpll_hw_state *state);
 
 #endif /* __INTEL_DDI_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 724ab356ea77..5057f7636534 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -877,6 +877,53 @@ hsw_ddi_hdmi_get_dpll(struct intel_atomic_state *state,
 	return pll;
 }
 
+static int hsw_ddi_calc_wrpll_link(struct drm_i915_private *dev_priv,
+				   i915_reg_t reg)
+{
+	int refclk;
+	int n, p, r;
+	u32 wrpll;
+
+	wrpll = intel_de_read(dev_priv, reg);
+	switch (wrpll & WRPLL_REF_MASK) {
+	case WRPLL_REF_SPECIAL_HSW:
+		/*
+		 * muxed-SSC for BDW.
+		 * non-SSC for non-ULT HSW. Check FUSE_STRAP3
+		 * for the non-SSC reference frequency.
+		 */
+		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
+			if (intel_de_read(dev_priv, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
+				refclk = 24;
+			else
+				refclk = 135;
+			break;
+		}
+		/* fall through */
+	case WRPLL_REF_PCH_SSC:
+		/*
+		 * We could calculate spread here, but our checking
+		 * code only cares about 5% accuracy, and spread is a max of
+		 * 0.5% downspread.
+		 */
+		refclk = 135;
+		break;
+	case WRPLL_REF_LCPLL:
+		refclk = 2700;
+		break;
+	default:
+		MISSING_CASE(wrpll);
+		return 0;
+	}
+
+	r = wrpll & WRPLL_DIVIDER_REF_MASK;
+	p = (wrpll & WRPLL_DIVIDER_POST_MASK) >> WRPLL_DIVIDER_POST_SHIFT;
+	n = (wrpll & WRPLL_DIVIDER_FB_MASK) >> WRPLL_DIVIDER_FB_SHIFT;
+
+	/* Convert to KHz, p & r have a fixed point portion */
+	return (refclk * n * 100) / (p * r);
+}
+
 static struct intel_shared_dpll *
 hsw_ddi_dp_get_dpll(struct intel_crtc_state *crtc_state)
 {
@@ -949,6 +996,50 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static int hsw_ddi_clock_get(struct intel_encoder *encoder,
+			     struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	int link_clock = 0;
+	u32 pll;
+
+	switch (pipe_config->shared_dpll->info->id) {
+	case DPLL_ID_LCPLL_810:
+		link_clock = 81000;
+		break;
+	case DPLL_ID_LCPLL_1350:
+		link_clock = 135000;
+		break;
+	case DPLL_ID_LCPLL_2700:
+		link_clock = 270000;
+		break;
+	case DPLL_ID_WRPLL1:
+		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(0));
+		break;
+	case DPLL_ID_WRPLL2:
+		link_clock = hsw_ddi_calc_wrpll_link(dev_priv, WRPLL_CTL(1));
+		break;
+	case DPLL_ID_SPLL:
+		pll = intel_de_read(dev_priv, SPLL_CTL) & SPLL_FREQ_MASK;
+		if (pll == SPLL_FREQ_810MHz)
+			link_clock = 81000;
+		else if (pll == SPLL_FREQ_1350MHz)
+			link_clock = 135000;
+		else if (pll == SPLL_FREQ_2700MHz)
+			link_clock = 270000;
+		else {
+			drm_WARN(&dev_priv->drm, 1, "bad spll freq\n");
+			break;
+		}
+		break;
+	default:
+		drm_WARN(&dev_priv->drm, 1, "bad port clock sel\n");
+		break;
+	}
+
+	return link_clock * 2;
+}
+
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -1452,6 +1543,61 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
+{
+	u32 p0, p1, p2, dco_freq;
+
+	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
+	p2 = pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;
+
+	if (pll_state->cfgcr2 &  DPLL_CFGCR2_QDIV_MODE(1))
+		p1 = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
+	else
+		p1 = 1;
+
+
+	switch (p0) {
+	case DPLL_CFGCR2_PDIV_1:
+		p0 = 1;
+		break;
+	case DPLL_CFGCR2_PDIV_2:
+		p0 = 2;
+		break;
+	case DPLL_CFGCR2_PDIV_3:
+		p0 = 3;
+		break;
+	case DPLL_CFGCR2_PDIV_7:
+		p0 = 7;
+		break;
+	}
+
+	switch (p2) {
+	case DPLL_CFGCR2_KDIV_5:
+		p2 = 5;
+		break;
+	case DPLL_CFGCR2_KDIV_2:
+		p2 = 2;
+		break;
+	case DPLL_CFGCR2_KDIV_3:
+		p2 = 3;
+		break;
+	case DPLL_CFGCR2_KDIV_1:
+		p2 = 1;
+		break;
+	}
+
+	dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK)
+		* 24 * 1000;
+
+	dco_freq += (((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9)
+		     * 24 * 1000) / 0x8000;
+
+	if (WARN_ON(p0 == 0 || p1 == 0 || p2 == 0))
+		return 0;
+
+	return dco_freq / (p0 * p1 * p2 * 5);
+}
+
 static bool
 skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
@@ -1541,6 +1687,52 @@ static bool skl_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static int skl_ddi_clock_get(struct intel_encoder *encoder,
+			     struct intel_crtc_state *crtc_state)
+{
+	struct intel_dpll_hw_state *pll_state = &crtc_state->dpll_hw_state;
+	int link_clock;
+
+	/*
+	 * ctrl1 register is already shifted for each pll, just use 0 to get
+	 * the internal shift for each field
+	 */
+	if (pll_state->ctrl1 & DPLL_CTRL1_HDMI_MODE(0)) {
+		link_clock = skl_calc_wrpll_link(pll_state);
+	} else {
+		link_clock = pll_state->ctrl1 & DPLL_CTRL1_LINK_RATE_MASK(0);
+		link_clock >>= DPLL_CTRL1_LINK_RATE_SHIFT(0);
+
+		switch (link_clock) {
+		case DPLL_CTRL1_LINK_RATE_810:
+			link_clock = 81000;
+			break;
+		case DPLL_CTRL1_LINK_RATE_1080:
+			link_clock = 108000;
+			break;
+		case DPLL_CTRL1_LINK_RATE_1350:
+			link_clock = 135000;
+			break;
+		case DPLL_CTRL1_LINK_RATE_1620:
+			link_clock = 162000;
+			break;
+		case DPLL_CTRL1_LINK_RATE_2160:
+			link_clock = 216000;
+			break;
+		case DPLL_CTRL1_LINK_RATE_2700:
+			link_clock = 270000;
+			break;
+		default:
+			drm_WARN(encoder->base.dev, 1,
+				 "Unsupported link rate\n");
+			break;
+		}
+		link_clock *= 2;
+	}
+
+	return link_clock;
+}
+
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -1966,6 +2158,24 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
 }
 
+static int bxt_ddi_clock_get(struct intel_encoder *encoder,
+			     struct intel_crtc_state *crtc_state)
+{
+	struct intel_dpll_hw_state *pll_state =
+		&crtc_state->shared_dpll->state.hw_state;
+	struct dpll clock;
+
+	clock.m1 = 2;
+	clock.m2 = (pll_state->pll0 & PORT_PLL_M2_MASK) << 22;
+	if (pll_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
+		clock.m2 |= pll_state->pll2 & PORT_PLL_M2_FRAC_MASK;
+	clock.n = (pll_state->pll1 & PORT_PLL_N_MASK) >> PORT_PLL_N_SHIFT;
+	clock.p1 = (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
+	clock.p2 = (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
+
+	return chv_calc_dpll_params(100000, &clock);
+}
+
 static bool bxt_get_dpll(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
@@ -2366,6 +2576,62 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
+			       struct intel_dpll_hw_state *pll_state)
+{
+	u32 p0, p1, p2, dco_freq, ref_clock;
+
+	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
+	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
+
+	if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
+		p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
+			DPLL_CFGCR1_QDIV_RATIO_SHIFT;
+	else
+		p1 = 1;
+
+
+	switch (p0) {
+	case DPLL_CFGCR1_PDIV_2:
+		p0 = 2;
+		break;
+	case DPLL_CFGCR1_PDIV_3:
+		p0 = 3;
+		break;
+	case DPLL_CFGCR1_PDIV_5:
+		p0 = 5;
+		break;
+	case DPLL_CFGCR1_PDIV_7:
+		p0 = 7;
+		break;
+	}
+
+	switch (p2) {
+	case DPLL_CFGCR1_KDIV_1:
+		p2 = 1;
+		break;
+	case DPLL_CFGCR1_KDIV_2:
+		p2 = 2;
+		break;
+	case DPLL_CFGCR1_KDIV_3:
+		p2 = 3;
+		break;
+	}
+
+	ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);
+
+	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
+		   ref_clock;
+
+	dco_freq += (((pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
+		      DPLL_CFGCR0_DCO_FRACTION_SHIFT) * ref_clock) / 0x8000;
+
+	if (drm_WARN_ON(&dev_priv->drm, p0 == 0 || p1 == 0 || p2 == 0))
+		return 0;
+
+	return dco_freq / (p0 * p1 * p2 * 5);
+}
+
 static bool
 cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
@@ -2460,6 +2726,53 @@ static bool cnl_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static int cnl_ddi_clock_get(struct intel_encoder *encoder,
+			     struct intel_crtc_state *pipe_config)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dpll_hw_state *pll_state = &pipe_config->dpll_hw_state;
+	int link_clock;
+
+	if (pll_state->cfgcr0 & DPLL_CFGCR0_HDMI_MODE) {
+		link_clock = cnl_calc_wrpll_link(dev_priv, pll_state);
+	} else {
+		link_clock = pll_state->cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK;
+
+		switch (link_clock) {
+		case DPLL_CFGCR0_LINK_RATE_810:
+			link_clock = 81000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_1080:
+			link_clock = 108000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_1350:
+			link_clock = 135000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_1620:
+			link_clock = 162000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_2160:
+			link_clock = 216000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_2700:
+			link_clock = 270000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_3240:
+			link_clock = 324000;
+			break;
+		case DPLL_CFGCR0_LINK_RATE_4050:
+			link_clock = 405000;
+			break;
+		default:
+			drm_WARN(&dev_priv->drm, 1, "Unsupported link rate\n");
+			break;
+		}
+		link_clock *= 2;
+	}
+
+	return link_clock;
+}
+
 static void cnl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -2972,6 +3285,90 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	return true;
 }
 
+static int icl_calc_mg_pll_link(struct drm_i915_private *dev_priv,
+				const struct intel_dpll_hw_state *pll_state)
+{
+	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
+	u64 tmp;
+
+	ref_clock = dev_priv->cdclk.hw.ref;
+
+	if (INTEL_GEN(dev_priv) >= 12) {
+		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
+		m1 = m1 >> DKL_PLL_DIV0_FBPREDIV_SHIFT;
+		m2_int = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBDIV_INT_MASK;
+
+		if (pll_state->mg_pll_bias & DKL_PLL_BIAS_FRAC_EN_H) {
+			m2_frac = pll_state->mg_pll_bias &
+				  DKL_PLL_BIAS_FBDIV_FRAC_MASK;
+			m2_frac = m2_frac >> DKL_PLL_BIAS_FBDIV_SHIFT;
+		} else {
+			m2_frac = 0;
+		}
+	} else {
+		m1 = pll_state->mg_pll_div1 & MG_PLL_DIV1_FBPREDIV_MASK;
+		m2_int = pll_state->mg_pll_div0 & MG_PLL_DIV0_FBDIV_INT_MASK;
+
+		if (pll_state->mg_pll_div0 & MG_PLL_DIV0_FRACNEN_H) {
+			m2_frac = pll_state->mg_pll_div0 &
+				  MG_PLL_DIV0_FBDIV_FRAC_MASK;
+			m2_frac = m2_frac >> MG_PLL_DIV0_FBDIV_FRAC_SHIFT;
+		} else {
+			m2_frac = 0;
+		}
+	}
+
+	switch (pll_state->mg_clktop2_hsclkctl &
+		MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK) {
+	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2:
+		div1 = 2;
+		break;
+	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3:
+		div1 = 3;
+		break;
+	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5:
+		div1 = 5;
+		break;
+	case MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7:
+		div1 = 7;
+		break;
+	default:
+		MISSING_CASE(pll_state->mg_clktop2_hsclkctl);
+		return 0;
+	}
+
+	div2 = (pll_state->mg_clktop2_hsclkctl &
+		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK) >>
+		MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_SHIFT;
+
+	/* div2 value of 0 is same as 1 means no div */
+	if (div2 == 0)
+		div2 = 1;
+
+	/*
+	 * Adjust the original formula to delay the division by 2^22 in order to
+	 * minimize possible rounding errors.
+	 */
+	tmp = (u64)m1 * m2_int * ref_clock +
+	      (((u64)m1 * m2_frac * ref_clock) >> 22);
+	tmp = div_u64(tmp, 5 * div1 * div2);
+
+	return tmp;
+}
+
+static int icl_ddi_clock_get(struct intel_encoder *encoder,
+			     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dpll_hw_state *pll_state = &crtc_state->dpll_hw_state;
+	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
+
+	if (intel_phy_is_combo(dev_priv, phy))
+		return cnl_calc_wrpll_link(dev_priv, pll_state);
+	else
+		return icl_calc_mg_pll_link(dev_priv, pll_state);
+}
+
 /**
  * icl_set_active_port_dpll - select the active port DPLL for a given CRTC
  * @crtc_state: state for the CRTC to select the DPLL for
@@ -3919,6 +4316,27 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
 }
 
+int intel_dpll_get_freq(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (INTEL_GEN(i915) >= 11)
+		return icl_ddi_clock_get(encoder, crtc_state);
+	else if (IS_CANNONLAKE(i915))
+		return cnl_ddi_clock_get(encoder, crtc_state);
+	else if (IS_GEN9_LP(i915))
+		return bxt_ddi_clock_get(encoder, crtc_state);
+	else if (IS_GEN9_BC(i915))
+		return skl_ddi_clock_get(encoder, crtc_state);
+	else if (INTEL_GEN(i915) <= 8)
+		hsw_ddi_clock_get(encoder, crtc_state);
+
+	drm_WARN_ON(&i915->drm, 1);
+	return 0;
+}
+
+
 static void readout_dpll_hw_state(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index fe27a5dfc51e..fadc240eccf6 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -372,6 +372,8 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
+int intel_dpll_get_freq(struct intel_encoder *encoder,
+			struct intel_crtc_state *crtc_state);
 void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
