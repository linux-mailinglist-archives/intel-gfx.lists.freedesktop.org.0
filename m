Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3111709D1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601B06EBD1;
	Wed, 26 Feb 2020 20:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DE86EBCC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155034"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:47 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:53 +0200
Message-Id: <20200226203455.23032-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/13] drm/i915/skl,
 cnl: Split out the WRPLL/LCPLL frequency calculation
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

Split out the PLL parameter->frequency conversion logic for each type of
PLL for symmetry with their corresponding inverse conversion functions.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 269 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   8 +-
 4 files changed, 140 insertions(+), 145 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index c38addd07e42..17cee6f80d8b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1350,13 +1350,15 @@ static void gen11_dsi_get_timings(struct intel_encoder *encoder,
 static void gen11_dsi_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
 	intel_dsc_get_config(encoder, pipe_config);
 
 	/* FIXME: adapt icl_ddi_clock_get() for DSI and use that? */
-	pipe_config->port_clock = intel_dpll_get_freq(encoder, pipe_config);
+	pipe_config->port_clock = intel_dpll_get_freq(i915,
+						      pipe_config->shared_dpll);
 
 	pipe_config->hw.adjusted_mode.crtc_clock = intel_dsi->pclk;
 	if (intel_dsi->dual_link)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5e6f81b140d4..284219da7df8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1383,8 +1383,8 @@ static void intel_ddi_clock_get(struct intel_encoder *encoder,
 		pipe_config->port_clock = icl_calc_tbt_pll_link(dev_priv,
 								encoder->port);
 	else
-		pipe_config->port_clock = intel_dpll_get_freq(encoder,
-							      pipe_config);
+		pipe_config->port_clock =
+			intel_dpll_get_freq(dev_priv, pipe_config->shared_dpll);
 
 	ddi_dotclock_get(pipe_config);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ebd55fdaf4cd..b87b4ff5de52 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1052,23 +1052,6 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
-static int hsw_ddi_clock_get(struct intel_encoder *encoder,
-			     struct intel_crtc_state *pipe_config)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_shared_dpll *pll = pipe_config->shared_dpll;
-
-	switch (pll->info->id) {
-	case DPLL_ID_WRPLL1:
-	case DPLL_ID_WRPLL2:
-		return hsw_ddi_wrpll_get_freq(dev_priv, pll);
-	case DPLL_ID_SPLL:
-		return hsw_ddi_spll_get_freq(dev_priv, pll);
-	default:
-		return hsw_ddi_lcpll_get_freq(dev_priv, pll);
-	}
-}
-
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -1080,12 +1063,14 @@ static const struct intel_shared_dpll_funcs hsw_ddi_wrpll_funcs = {
 	.enable = hsw_ddi_wrpll_enable,
 	.disable = hsw_ddi_wrpll_disable,
 	.get_hw_state = hsw_ddi_wrpll_get_hw_state,
+	.get_freq = hsw_ddi_wrpll_get_freq,
 };
 
 static const struct intel_shared_dpll_funcs hsw_ddi_spll_funcs = {
 	.enable = hsw_ddi_spll_enable,
 	.disable = hsw_ddi_spll_disable,
 	.get_hw_state = hsw_ddi_spll_get_hw_state,
+	.get_freq = hsw_ddi_spll_get_freq,
 };
 
 static void hsw_ddi_lcpll_enable(struct drm_i915_private *dev_priv,
@@ -1109,6 +1094,7 @@ static const struct intel_shared_dpll_funcs hsw_ddi_lcpll_funcs = {
 	.enable = hsw_ddi_lcpll_enable,
 	.disable = hsw_ddi_lcpll_disable,
 	.get_hw_state = hsw_ddi_lcpll_get_hw_state,
+	.get_freq = hsw_ddi_lcpll_get_freq,
 };
 
 static const struct dpll_info hsw_plls[] = {
@@ -1574,8 +1560,10 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
+static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
 	int ref_clock = 24000;
 	u32 p0, p1, p2, dco_freq;
 
@@ -1670,6 +1658,40 @@ skl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static int skl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
+{
+	int link_clock = 0;
+
+	switch ((pll->state.hw_state.ctrl1 &
+		 DPLL_CTRL1_LINK_RATE_MASK(0)) >>
+		DPLL_CTRL1_LINK_RATE_SHIFT(0)) {
+	case DPLL_CTRL1_LINK_RATE_810:
+		link_clock = 81000;
+		break;
+	case DPLL_CTRL1_LINK_RATE_1080:
+		link_clock = 108000;
+		break;
+	case DPLL_CTRL1_LINK_RATE_1350:
+		link_clock = 135000;
+		break;
+	case DPLL_CTRL1_LINK_RATE_1620:
+		link_clock = 162000;
+		break;
+	case DPLL_CTRL1_LINK_RATE_2160:
+		link_clock = 216000;
+		break;
+	case DPLL_CTRL1_LINK_RATE_2700:
+		link_clock = 270000;
+		break;
+	default:
+		drm_WARN(&i915->drm, 1, "Unsupported link rate\n");
+		break;
+	}
+
+	return link_clock * 2;
+}
+
 static bool skl_get_dpll(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
@@ -1719,50 +1741,17 @@ static bool skl_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
-static int skl_ddi_clock_get(struct intel_encoder *encoder,
-			     struct intel_crtc_state *crtc_state)
+static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
+				const struct intel_shared_dpll *pll)
 {
-	struct intel_dpll_hw_state *pll_state = &crtc_state->dpll_hw_state;
-	int link_clock;
-
 	/*
 	 * ctrl1 register is already shifted for each pll, just use 0 to get
 	 * the internal shift for each field
 	 */
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
-	return link_clock;
+	if (pll->state.hw_state.ctrl1 & DPLL_CTRL1_HDMI_MODE(0))
+		return skl_ddi_wrpll_get_freq(i915, pll);
+	else
+		return skl_ddi_lcpll_get_freq(i915, pll);
 }
 
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -1779,12 +1768,14 @@ static const struct intel_shared_dpll_funcs skl_ddi_pll_funcs = {
 	.enable = skl_ddi_pll_enable,
 	.disable = skl_ddi_pll_disable,
 	.get_hw_state = skl_ddi_pll_get_hw_state,
+	.get_freq = skl_ddi_pll_get_freq,
 };
 
 static const struct intel_shared_dpll_funcs skl_ddi_dpll0_funcs = {
 	.enable = skl_ddi_dpll0_enable,
 	.disable = skl_ddi_dpll0_disable,
 	.get_hw_state = skl_ddi_dpll0_get_hw_state,
+	.get_freq = skl_ddi_pll_get_freq,
 };
 
 static const struct dpll_info skl_plls[] = {
@@ -2190,11 +2181,10 @@ bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
 }
 
-static int bxt_ddi_clock_get(struct intel_encoder *encoder,
-			     struct intel_crtc_state *crtc_state)
+static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
+				const struct intel_shared_dpll *pll)
 {
-	struct intel_dpll_hw_state *pll_state =
-		&crtc_state->shared_dpll->state.hw_state;
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
 	struct dpll clock;
 
 	clock.m1 = 2;
@@ -2264,6 +2254,7 @@ static const struct intel_shared_dpll_funcs bxt_ddi_pll_funcs = {
 	.enable = bxt_ddi_pll_enable,
 	.disable = bxt_ddi_pll_disable,
 	.get_hw_state = bxt_ddi_pll_get_hw_state,
+	.get_freq = bxt_ddi_pll_get_freq,
 };
 
 static const struct dpll_info bxt_plls[] = {
@@ -2608,9 +2599,10 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
-			       struct intel_dpll_hw_state *pll_state)
+static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+				  const struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
 	u32 p0, p1, p2, dco_freq, ref_clock;
 
 	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
@@ -2709,6 +2701,44 @@ cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+static int cnl_ddi_lcpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
+{
+	int link_clock = 0;
+
+	switch (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_LINK_RATE_MASK) {
+	case DPLL_CFGCR0_LINK_RATE_810:
+		link_clock = 81000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_1080:
+		link_clock = 108000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_1350:
+		link_clock = 135000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_1620:
+		link_clock = 162000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_2160:
+		link_clock = 216000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_2700:
+		link_clock = 270000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_3240:
+		link_clock = 324000;
+		break;
+	case DPLL_CFGCR0_LINK_RATE_4050:
+		link_clock = 405000;
+		break;
+	default:
+		drm_WARN(&i915->drm, 1, "Unsupported link rate\n");
+		break;
+	}
+
+	return link_clock * 2;
+}
+
 static bool cnl_get_dpll(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc,
 			 struct intel_encoder *encoder)
@@ -2758,51 +2788,13 @@ static bool cnl_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
-static int cnl_ddi_clock_get(struct intel_encoder *encoder,
-			     struct intel_crtc_state *pipe_config)
+static int cnl_ddi_pll_get_freq(struct drm_i915_private *i915,
+				const struct intel_shared_dpll *pll)
 {
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
-	return link_clock;
+	if (pll->state.hw_state.cfgcr0 & DPLL_CFGCR0_HDMI_MODE)
+		return cnl_ddi_wrpll_get_freq(i915, pll);
+	else
+		return cnl_ddi_lcpll_get_freq(i915, pll);
 }
 
 static void cnl_dump_hw_state(struct drm_i915_private *dev_priv,
@@ -2818,6 +2810,7 @@ static const struct intel_shared_dpll_funcs cnl_ddi_pll_funcs = {
 	.enable = cnl_ddi_pll_enable,
 	.disable = cnl_ddi_pll_disable,
 	.get_hw_state = cnl_ddi_pll_get_hw_state,
+	.get_freq = cnl_ddi_pll_get_freq,
 };
 
 static const struct dpll_info cnl_plls[] = {
@@ -2979,6 +2972,18 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 	return true;
 }
 
+static int icl_ddi_tbt_pll_get_freq(struct drm_i915_private *i915,
+				    const struct intel_shared_dpll *pll)
+{
+	/*
+	 * The PLL outputs multiple frequencies at the same time, selection is
+	 * made at DDI clock mux level.
+	 */
+	drm_WARN_ON(&i915->drm, 1);
+
+	return 0;
+}
+
 static bool icl_calc_dpll_state(struct intel_crtc_state *crtc_state,
 				struct intel_encoder *encoder,
 				struct intel_dpll_hw_state *pll_state)
@@ -3317,9 +3322,10 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 	return true;
 }
 
-static int icl_calc_mg_pll_link(struct drm_i915_private *dev_priv,
-				const struct intel_dpll_hw_state *pll_state)
+static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
+				   const struct intel_shared_dpll *pll)
 {
+	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
@@ -3388,19 +3394,6 @@ static int icl_calc_mg_pll_link(struct drm_i915_private *dev_priv,
 	return tmp;
 }
 
-static int icl_ddi_clock_get(struct intel_encoder *encoder,
-			     struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dpll_hw_state *pll_state = &crtc_state->dpll_hw_state;
-	enum phy phy = intel_port_to_phy(dev_priv, encoder->port);
-
-	if (intel_phy_is_combo(dev_priv, phy))
-		return cnl_calc_wrpll_link(dev_priv, pll_state);
-	else
-		return icl_calc_mg_pll_link(dev_priv, pll_state);
-}
-
 /**
  * icl_set_active_port_dpll - select the active port DPLL for a given CRTC
  * @crtc_state: state for the CRTC to select the DPLL for
@@ -3485,6 +3478,12 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
+				      const struct intel_shared_dpll *pll)
+{
+	return cnl_ddi_wrpll_get_freq(i915, pll);
+}
+
 static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc,
 				 struct intel_encoder *encoder)
@@ -4141,18 +4140,21 @@ static const struct intel_shared_dpll_funcs combo_pll_funcs = {
 	.enable = combo_pll_enable,
 	.disable = combo_pll_disable,
 	.get_hw_state = combo_pll_get_hw_state,
+	.get_freq = icl_ddi_combo_pll_get_freq,
 };
 
 static const struct intel_shared_dpll_funcs tbt_pll_funcs = {
 	.enable = tbt_pll_enable,
 	.disable = tbt_pll_disable,
 	.get_hw_state = tbt_pll_get_hw_state,
+	.get_freq = icl_ddi_tbt_pll_get_freq,
 };
 
 static const struct intel_shared_dpll_funcs mg_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = mg_pll_get_hw_state,
+	.get_freq = icl_ddi_mg_pll_get_freq,
 };
 
 static const struct dpll_info icl_plls[] = {
@@ -4192,6 +4194,7 @@ static const struct intel_shared_dpll_funcs dkl_pll_funcs = {
 	.enable = mg_pll_enable,
 	.disable = mg_pll_disable,
 	.get_hw_state = dkl_pll_get_hw_state,
+	.get_freq = icl_ddi_mg_pll_get_freq,
 };
 
 static const struct dpll_info tgl_plls[] = {
@@ -4348,27 +4351,15 @@ void intel_update_active_dpll(struct intel_atomic_state *state,
 	dpll_mgr->update_active_dpll(state, crtc, encoder);
 }
 
-int intel_dpll_get_freq(struct intel_encoder *encoder,
-			struct intel_crtc_state *crtc_state)
+int intel_dpll_get_freq(struct drm_i915_private *i915,
+			const struct intel_shared_dpll *pll)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-
-	if (INTEL_GEN(i915) >= 11)
-		return icl_ddi_clock_get(encoder, crtc_state);
-	else if (IS_CANNONLAKE(i915))
-		return cnl_ddi_clock_get(encoder, crtc_state);
-	else if (IS_GEN9_LP(i915))
-		return bxt_ddi_clock_get(encoder, crtc_state);
-	else if (IS_GEN9_BC(i915))
-		return skl_ddi_clock_get(encoder, crtc_state);
-	else if (INTEL_GEN(i915) <= 8)
-		hsw_ddi_clock_get(encoder, crtc_state);
+	if (drm_WARN_ON(&i915->drm, !pll->info->funcs->get_freq))
+		return 0;
 
-	drm_WARN_ON(&i915->drm, 1);
-	return 0;
+	return pll->info->funcs->get_freq(i915, pll);
 }
 
-
 static void readout_dpll_hw_state(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index fadc240eccf6..c155935874d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -278,6 +278,9 @@ struct intel_shared_dpll_funcs {
 	bool (*get_hw_state)(struct drm_i915_private *dev_priv,
 			     struct intel_shared_dpll *pll,
 			     struct intel_dpll_hw_state *hw_state);
+
+	int (*get_freq)(struct drm_i915_private *i915,
+			const struct intel_shared_dpll *pll);
 };
 
 /**
@@ -372,8 +375,8 @@ void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 void intel_update_active_dpll(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc,
 			      struct intel_encoder *encoder);
-int intel_dpll_get_freq(struct intel_encoder *encoder,
-			struct intel_crtc_state *crtc_state);
+int intel_dpll_get_freq(struct drm_i915_private *,
+			const struct intel_shared_dpll *);
 void intel_prepare_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_enable_shared_dpll(const struct intel_crtc_state *crtc_state);
 void intel_disable_shared_dpll(const struct intel_crtc_state *crtc_state);
@@ -384,7 +387,6 @@ void intel_dpll_sanitize_state(struct drm_i915_private *dev_priv);
 
 void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state);
-int cnl_hdmi_pll_ref_clock(struct drm_i915_private *dev_priv);
 enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port);
 bool intel_dpll_is_combophy(enum intel_dpll_id id);
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
