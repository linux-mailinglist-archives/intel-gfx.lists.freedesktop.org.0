Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEBD1709D2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43A56EBD2;
	Wed, 26 Feb 2020 20:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CBA6EBBA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238155038"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:49 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:55 +0200
Message-Id: <20200226203455.23032-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
References: <20200226203455.23032-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/13] drm/i915: Unify the DPLL ref clock
 frequency tracking
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

All platforms using the shared DPLL framework use 3 reference clocks for
their DPLLs: SSC, non-SSC and DSI. For a more unified way across
platforms store the frequency of these ref clocks as part of the DPLL
global state. This also allows us to keep the HW access reading out the
ref clock value separate from the DPLL frequency calculation that
depends on the ref clock.

For now add only the SSC and non-SSC ref clocks, as the pre-ICL DSI code
has its own logic for calculating DPLL parameters instead of the shared
DPLL framework.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   5 +
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 132 +++++++++++-------
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 3 files changed, 95 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d2461d7946bf..6675b7e34f0d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -920,6 +920,11 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	int i;
 
 	drm_modeset_lock_all(dev);
+
+	seq_printf(m, "PLL refclks: non-SSC: %d kHZ, SSC: %d kHZ\n",
+		   dev_priv->dpll.ref_clks.nssc,
+		   dev_priv->dpll.ref_clks.ssc);
+
 	for (i = 0; i < dev_priv->dpll.num_shared_dpll; i++) {
 		struct intel_shared_dpll *pll = &dev_priv->dpll.shared_dplls[i];
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 7e6da58a47c9..44db46782770 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -56,6 +56,7 @@ struct intel_dpll_mgr {
 	void (*update_active_dpll)(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc,
 				   struct intel_encoder *encoder);
+	void (*update_ref_clks)(struct drm_i915_private *i915);
 	void (*dump_hw_state)(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state);
 };
@@ -886,16 +887,9 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 
 	switch (wrpll & WRPLL_REF_MASK) {
 	case WRPLL_REF_SPECIAL_HSW:
-		/*
-		 * muxed-SSC for BDW.
-		 * non-SSC for non-ULT HSW. Check FUSE_STRAP3
-		 * for the non-SSC reference frequency.
-		 */
+		/* Muxed-SSC for BDW, non-SSC for non-ULT HSW. */
 		if (IS_HASWELL(dev_priv) && !IS_HSW_ULT(dev_priv)) {
-			if (intel_de_read(dev_priv, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
-				refclk = 24;
-			else
-				refclk = 135;
+			refclk = dev_priv->dpll.ref_clks.nssc;
 			break;
 		}
 		/* fall through */
@@ -905,10 +899,10 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 		 * code only cares about 5% accuracy, and spread is a max of
 		 * 0.5% downspread.
 		 */
-		refclk = 135;
+		refclk = dev_priv->dpll.ref_clks.ssc;
 		break;
 	case WRPLL_REF_LCPLL:
-		refclk = 2700;
+		refclk = 2700000;
 		break;
 	default:
 		MISSING_CASE(wrpll);
@@ -920,7 +914,7 @@ static int hsw_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	n = (wrpll & WRPLL_DIVIDER_FB_MASK) >> WRPLL_DIVIDER_FB_SHIFT;
 
 	/* Convert to KHz, p & r have a fixed point portion */
-	return (refclk * n * 100) / (p * r) * 2;
+	return (refclk * n / 10) / (p * r) * 2;
 }
 
 static struct intel_shared_dpll *
@@ -1049,6 +1043,16 @@ static bool hsw_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static void hsw_update_dpll_ref_clks(struct drm_i915_private *i915)
+{
+	i915->dpll.ref_clks.ssc = 135000;
+	/* Non-SSC is only used on non-ULT HSW. */
+	if (intel_de_read(i915, FUSE_STRAP3) & HSW_REF_CLK_SELECT)
+		i915->dpll.ref_clks.nssc = 24000;
+	else
+		i915->dpll.ref_clks.nssc = 135000;
+}
+
 static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -1108,6 +1112,7 @@ static const struct intel_dpll_mgr hsw_pll_mgr = {
 	.dpll_info = hsw_plls,
 	.get_dplls = hsw_get_dpll,
 	.put_dplls = intel_put_dpll,
+	.update_ref_clks = hsw_update_dpll_ref_clks,
 	.dump_hw_state = hsw_dump_hw_state,
 };
 
@@ -1523,6 +1528,7 @@ skl_ddi_calculate_wrpll(int clock /* in Hz */,
 
 static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	u32 ctrl1, cfgcr1, cfgcr2;
 	struct skl_wrpll_params wrpll_params = { 0, };
 
@@ -1534,7 +1540,8 @@ static bool skl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 
 	ctrl1 |= DPLL_CTRL1_HDMI_MODE(0);
 
-	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000, 24000,
+	if (!skl_ddi_calculate_wrpll(crtc_state->port_clock * 1000,
+				     i915->dpll.ref_clks.nssc,
 				     &wrpll_params))
 		return false;
 
@@ -1561,7 +1568,7 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 				  const struct intel_shared_dpll *pll)
 {
 	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
-	int ref_clock = 24000;
+	int ref_clock = i915->dpll.ref_clks.nssc;
 	u32 p0, p1, p2, dco_freq;
 
 	p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
@@ -1751,6 +1758,12 @@ static int skl_ddi_pll_get_freq(struct drm_i915_private *i915,
 		return skl_ddi_lcpll_get_freq(i915, pll);
 }
 
+static void skl_update_dpll_ref_clks(struct drm_i915_private *i915)
+{
+	/* No SSC ref */
+	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+}
+
 static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -1787,6 +1800,7 @@ static const struct intel_dpll_mgr skl_pll_mgr = {
 	.dpll_info = skl_plls,
 	.get_dplls = skl_get_dpll,
 	.put_dplls = intel_put_dpll,
+	.update_ref_clks = skl_update_dpll_ref_clks,
 	.dump_hw_state = skl_dump_hw_state,
 };
 
@@ -2192,7 +2206,7 @@ static int bxt_ddi_pll_get_freq(struct drm_i915_private *i915,
 	clock.p1 = (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
 	clock.p2 = (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;
 
-	return chv_calc_dpll_params(100000, &clock);
+	return chv_calc_dpll_params(i915->dpll.ref_clks.nssc, &clock);
 }
 
 static bool bxt_get_dpll(struct intel_atomic_state *state,
@@ -2228,6 +2242,13 @@ static bool bxt_get_dpll(struct intel_atomic_state *state,
 	return true;
 }
 
+static void bxt_update_dpll_ref_clks(struct drm_i915_private *i915)
+{
+	i915->dpll.ref_clks.ssc = 100000;
+	i915->dpll.ref_clks.nssc = 100000;
+	/* DSI non-SSC ref 19.2MHz */
+}
+
 static void bxt_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -2265,6 +2286,7 @@ static const struct intel_dpll_mgr bxt_pll_mgr = {
 	.dpll_info = bxt_plls,
 	.get_dplls = bxt_get_dpll,
 	.put_dplls = intel_put_dpll,
+	.update_ref_clks = bxt_update_dpll_ref_clks,
 	.dump_hw_state = bxt_dump_hw_state,
 };
 
@@ -2508,27 +2530,13 @@ static void cnl_wrpll_params_populate(struct skl_wrpll_params *params,
 	params->dco_fraction = dco & 0x7fff;
 }
 
-int cnl_hdmi_pll_ref_clock(struct drm_i915_private *dev_priv)
-{
-	int ref_clock = dev_priv->cdclk.hw.ref;
-
-	/*
-	 * For ICL+, the spec states: if reference frequency is 38.4,
-	 * use 19.2 because the DPLL automatically divides that by 2.
-	 */
-	if (INTEL_GEN(dev_priv) >= 11 && ref_clock == 38400)
-		ref_clock = 19200;
-
-	return ref_clock;
-}
-
 static bool
 cnl_ddi_calculate_wrpll(struct intel_crtc_state *crtc_state,
 			struct skl_wrpll_params *wrpll_params)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 afe_clock = crtc_state->port_clock * 5;
-	u32 ref_clock;
+	int ref_clock = dev_priv->dpll.ref_clks.nssc;
 	u32 dco_min = 7998000;
 	u32 dco_max = 10000000;
 	u32 dco_mid = (dco_min + dco_max) / 2;
@@ -2560,9 +2568,6 @@ cnl_ddi_calculate_wrpll(struct intel_crtc_state *crtc_state,
 		return false;
 
 	cnl_wrpll_get_multipliers(best_div, &pdiv, &qdiv, &kdiv);
-
-	ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);
-
 	cnl_wrpll_params_populate(wrpll_params, best_dco, ref_clock,
 				  pdiv, qdiv, kdiv);
 
@@ -2596,11 +2601,12 @@ static bool cnl_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
-static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
-				  const struct intel_shared_dpll *pll)
+static int __cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
+				    const struct intel_shared_dpll *pll,
+				    int ref_clock)
 {
 	const struct intel_dpll_hw_state *pll_state = &pll->state.hw_state;
-	u32 p0, p1, p2, dco_freq, ref_clock;
+	u32 p0, p1, p2, dco_freq;
 
 	p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
 	p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;
@@ -2639,8 +2645,6 @@ static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 		break;
 	}
 
-	ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);
-
 	dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK) *
 		   ref_clock;
 
@@ -2653,6 +2657,12 @@ static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *dev_priv,
 	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
+static int cnl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
+				  const struct intel_shared_dpll *pll)
+{
+	return __cnl_ddi_wrpll_get_freq(i915, pll, i915->dpll.ref_clks.nssc);
+}
+
 static bool
 cnl_ddi_dp_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
 {
@@ -2794,6 +2804,12 @@ static int cnl_ddi_pll_get_freq(struct drm_i915_private *i915,
 		return cnl_ddi_lcpll_get_freq(i915, pll);
 }
 
+static void cnl_update_dpll_ref_clks(struct drm_i915_private *i915)
+{
+	/* No SSC reference */
+	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+}
+
 static void cnl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -2821,6 +2837,7 @@ static const struct intel_dpll_mgr cnl_pll_mgr = {
 	.dpll_info = cnl_plls,
 	.get_dplls = cnl_get_dpll,
 	.put_dplls = intel_put_dpll,
+	.update_ref_clks = cnl_update_dpll_ref_clks,
 	.dump_hw_state = cnl_dump_hw_state,
 };
 
@@ -2916,7 +2933,7 @@ static bool icl_calc_dp_combo_pll(struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	const struct icl_combo_pll_params *params =
-		dev_priv->cdclk.hw.ref == 24000 ?
+		dev_priv->dpll.ref_clks.nssc == 24000 ?
 		icl_dp_combo_pll_24MHz_values :
 		icl_dp_combo_pll_19_2MHz_values;
 	int clock = crtc_state->port_clock;
@@ -2939,9 +2956,9 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (INTEL_GEN(dev_priv) >= 12) {
-		switch (dev_priv->cdclk.hw.ref) {
+		switch (dev_priv->dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->cdclk.hw.ref);
+			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
 			/* fall-through */
 		case 19200:
 		case 38400:
@@ -2952,9 +2969,9 @@ static bool icl_calc_tbt_pll(struct intel_crtc_state *crtc_state,
 			break;
 		}
 	} else {
-		switch (dev_priv->cdclk.hw.ref) {
+		switch (dev_priv->dpll.ref_clks.nssc) {
 		default:
-			MISSING_CASE(dev_priv->cdclk.hw.ref);
+			MISSING_CASE(dev_priv->dpll.ref_clks.nssc);
 			/* fall-through */
 		case 19200:
 		case 38400:
@@ -3118,7 +3135,7 @@ static bool icl_calc_mg_pll_state(struct intel_crtc_state *crtc_state,
 				  struct intel_dpll_hw_state *pll_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int refclk_khz = dev_priv->cdclk.hw.ref;
+	int refclk_khz = dev_priv->dpll.ref_clks.nssc;
 	int clock = crtc_state->port_clock;
 	u32 dco_khz, m1div, m2div_int, m2div_rem, m2div_frac;
 	u32 iref_ndiv, iref_trim, iref_pulse_w;
@@ -3326,7 +3343,7 @@ static int icl_ddi_mg_pll_get_freq(struct drm_i915_private *dev_priv,
 	u32 m1, m2_int, m2_frac, div1, div2, ref_clock;
 	u64 tmp;
 
-	ref_clock = dev_priv->cdclk.hw.ref;
+	ref_clock = dev_priv->dpll.ref_clks.nssc;
 
 	if (INTEL_GEN(dev_priv) >= 12) {
 		m1 = pll_state->mg_pll_div0 & DKL_PLL_DIV0_FBPREDIV_MASK;
@@ -3478,7 +3495,16 @@ static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
 static int icl_ddi_combo_pll_get_freq(struct drm_i915_private *i915,
 				      const struct intel_shared_dpll *pll)
 {
-	return cnl_ddi_wrpll_get_freq(i915, pll);
+	int ref_clock = i915->dpll.ref_clks.nssc;
+
+	/*
+	 * For ICL+, the spec states: if reference frequency is 38.4,
+	 * use 19.2 because the DPLL automatically divides that by 2.
+	 */
+	if (ref_clock == 38400)
+		ref_clock = 19200;
+
+	return __cnl_ddi_wrpll_get_freq(i915, pll, ref_clock);
 }
 
 static bool icl_get_tc_phy_dplls(struct intel_atomic_state *state,
@@ -3629,7 +3655,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *dev_priv,
 	hw_state->mg_pll_tdc_coldst_bias =
 		intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
 
-	if (dev_priv->cdclk.hw.ref == 38400) {
+	if (dev_priv->dpll.ref_clks.nssc == 38400) {
 		hw_state->mg_pll_tdc_coldst_bias_mask = MG_PLL_TDC_COLDST_COLDSTART;
 		hw_state->mg_pll_bias_mask = 0;
 	} else {
@@ -4110,6 +4136,12 @@ static void mg_pll_disable(struct drm_i915_private *dev_priv,
 	icl_pll_disable(dev_priv, pll, enable_reg);
 }
 
+static void icl_update_dpll_ref_clks(struct drm_i915_private *i915)
+{
+	/* No SSC ref */
+	i915->dpll.ref_clks.nssc = i915->cdclk.hw.ref;
+}
+
 static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
 			      const struct intel_dpll_hw_state *hw_state)
 {
@@ -4170,6 +4202,7 @@ static const struct intel_dpll_mgr icl_pll_mgr = {
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 	.dump_hw_state = icl_dump_hw_state,
 };
 
@@ -4184,6 +4217,7 @@ static const struct intel_dpll_mgr ehl_pll_mgr = {
 	.dpll_info = ehl_plls,
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 	.dump_hw_state = icl_dump_hw_state,
 };
 
@@ -4212,6 +4246,7 @@ static const struct intel_dpll_mgr tgl_pll_mgr = {
 	.get_dplls = icl_get_dplls,
 	.put_dplls = icl_put_dplls,
 	.update_active_dpll = icl_update_active_dpll,
+	.update_ref_clks = icl_update_dpll_ref_clks,
 	.dump_hw_state = icl_dump_hw_state,
 };
 
@@ -4390,6 +4425,9 @@ void intel_dpll_readout_hw_state(struct drm_i915_private *i915)
 {
 	int i;
 
+	if (i915->dpll.mgr && i915->dpll.mgr->update_ref_clks)
+		i915->dpll.mgr->update_ref_clks(i915);
+
 	for (i = 0; i < i915->dpll.num_shared_dpll; i++)
 		readout_dpll_hw_state(i915, &i915->dpll.shared_dplls[i]);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fe4eefc5e7e6..49ee3bde08f5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1059,6 +1059,11 @@ struct drm_i915_private {
 		int num_shared_dpll;
 		struct intel_shared_dpll shared_dplls[I915_NUM_PLLS];
 		const struct intel_dpll_mgr *mgr;
+
+		struct {
+			int nssc;
+			int ssc;
+		} ref_clks;
 	} dpll;
 
 	struct list_head global_obj_list;
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
